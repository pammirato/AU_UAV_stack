/* 
|	Collision Avoidance Node
|
|	This node controls the collision avoidance algorithm, 
|	which is currently implementat of reactive inverse PN. 
*/


//standard C++ headers
#include <sstream>
#include <iostream>
#include <stdlib.h>
#include <queue>
#include <map>
#include <cmath>
#include <stdio.h>
#include <fstream>
#include <time.h>
#include <boost/lexical_cast.hpp>

//ROS headers
#include "ros/ros.h"
#include "AU_UAV_ROS/TelemetryUpdate.h"
#include "AU_UAV_ROS/GoToWaypoint.h"
#include "AU_UAV_ROS/RequestWaypointInfo.h"
// TODO Fix what causes standardDefs to screw up my compile
//#include "AU_UAV_ROS/standardDefs.h"
#include <tf/transform_broadcaster.h>
#include <visualization_msgs/Marker.h>
#include "AU_UAV_ROS/StartCollisionAvoidance.h"

#include "a_star/prar.cpp"

//collision avoidance headers
#include "AU_UAV_ROS/planeObject.h"
#include "AU_UAV_ROS/standardFuncs.h"


#define WEST_MOST_LONGITUDE -85.490356
#define NORTH_MOST_LATITUDE 32.606573

#define METERS_TO_LATITUDE (1.0/111200.0)

#define MY_DEGREES_TO_RADIANS (M_PI/180.0)
#define MY_RADIANS_TO_DEGREES (180.0/M_PI)

//publisher is global so callbacks can access it
ros::Publisher marker_pub;

/* ROS service clients for calling services from the coordinator */
ros::ServiceClient goToWaypointClient;
ros::ServiceClient requestWaypointInfoClient;

bool readyToStart = false;
int triggered = 0;
int counter = 0;
unsigned int updatesCompleted = 0;
std::ofstream outFile;

/* Variables for the number of goToWaypoint services requested, 
the number of planes in the airspace, and the current planes ID */
std::map<int, AU_UAV_ROS::PlaneObject> planes; /* map of planes in the airspace.  The key is the plane id of the aircraft */

//TODO prototypes
vector<AU_UAV_ROS::waypoint> generateCombinedWaypoints(vector<AU_UAV_ROS::waypoint> *realWaypoints, vector<map_tools::waypointPath> *avoidPaths);

/* This function is run every time new telemetry information from any plane is recieved. With the new telemetry update, 
information about the plane is updated, including bearing, speed, current location, etc. Additionally, we check to see
if the UAV has reached its current destination, and, if so, update the destination of the UAV. After updating, the
calculateForces function is called to find a the new force acting on the UAV; from this new force, a next waypoint is
generated and forwarded to the coordinator. */
void telemetryCallback(const AU_UAV_ROS::TelemetryUpdate::ConstPtr &msg)
{	
	int planeID = msg->planeID;
	/* Instantiate services for use later, and get planeID*/
	AU_UAV_ROS::GoToWaypoint goToWaypointSrv;
	AU_UAV_ROS::GoToWaypoint goToWaypointSrv2;
	AU_UAV_ROS::RequestWaypointInfo requestWaypointInfoSrv;
	

	/* Request this plane's current normal destination */
	requestWaypointInfoSrv.request.planeID = planeID;
	requestWaypointInfoSrv.request.isAvoidanceWaypoint = false;
	requestWaypointInfoSrv.request.positionInQueue = 0;

	if (!requestWaypointInfoClient.call(requestWaypointInfoSrv)){
		ROS_ERROR("Did not receive a response from the coordinator");
		return;
	}

	/* If the plane is not in our map of planes and has destination
	waypoints, then add it as a new plane to our map of planes. 
	
	Else if the plane is not in our map of planes and does not
	have waypoints, return and do nothing more. */

	//added this to add robustness for real UAVs (because real UAVs don't return currentWaypointIndex of -1)
	if ((planes.find(planeID) == planes.end() && msg->currentWaypointIndex != -1) || (planeID >= 32 && planeID <= 63 && planes.find(planeID) == planes.end())){ 
		/* This is a new plane, so create a new planeObject and 
		give it the appropriate information */
		AU_UAV_ROS::PlaneObject newPlane(MPS_SPEED, *msg); 
		planes[planeID] = newPlane; /* put the new plane into the map */

		/* Update the destination of the PlaneObject with the value 
		found with the requestWaypointInfoSrv call */
		AU_UAV_ROS::waypoint newDest; 
		newDest.latitude = requestWaypointInfoSrv.response.latitude;
		newDest.longitude = requestWaypointInfoSrv.response.longitude;
		newDest.altitude = requestWaypointInfoSrv.response.altitude;

		planes[planeID].setDestination(newDest);
	}
	else if (planes.find(planeID) == planes.end()) 
		/* New plane without waypoint set */
		return; 
	

	/* Note: The requestWaypointInfo service returns a waypoint of 
	-1000, -1000 when the UAV cannot retrieve a destination from queue.

	If the plane has no waypoint to go to, put it far from all others.

	Or, if the plane does have a waypoint to go to, update the plane 
	with new position and destination received from requestWaypointInfoSrv
	response*/
	if (requestWaypointInfoSrv.response.latitude == -1000){ /* plane has no waypoints to go to */
		/* Remove in real flights*/
		planes[planeID].setCurrentLoc(-1000,-1000,400);
		/* update the time of last update for this plane to acknowledge 
		it is still in the air */
		planes[planeID].updateTime(); 
		return; 
	}
	else{
		planes[planeID].update(*msg); /* update plane with new position */

		AU_UAV_ROS::waypoint newDest;

		newDest.latitude = requestWaypointInfoSrv.response.latitude;
		newDest.longitude = requestWaypointInfoSrv.response.longitude;
		newDest.altitude = requestWaypointInfoSrv.response.altitude;

		planes[planeID].setDestination(newDest); /* update plane destination */
	}



	int numSimulated = 4;
	// A* Path planning for now, soon to add RIPNA at all times otherwise
	//get full list of plane's waypoints 
	if (planes.size() == numSimulated && updatesCompleted % numSimulated == 0 && updatesCompleted % (5 * numSimulated) == 0) {
			std::map<int, vector<AU_UAV_ROS::waypoint> > allPlanesWaypoints;

			// hardcode to do this for all the planes. very bad practice TODO fix this
			for (int i = 0; i < numSimulated; i++) {
				vector<AU_UAV_ROS::waypoint> allWaypoints;
				AU_UAV_ROS::waypoint nextWaypoint;
				int queueIndex = 0;
				requestWaypointInfoSrv.request.planeID = i;
				requestWaypointInfoSrv.request.isAvoidanceWaypoint = false;
				requestWaypointInfoSrv.request.positionInQueue = queueIndex;

				if( !requestWaypointInfoClient.call(requestWaypointInfoSrv) )
					ROS_ERROR("No goal was returned");

				while (requestWaypointInfoSrv.response.latitude != -1000) {
					nextWaypoint.latitude = requestWaypointInfoSrv.response.latitude;
					nextWaypoint.longitude = requestWaypointInfoSrv.response.longitude;
					nextWaypoint.altitude = requestWaypointInfoSrv.response.altitude;
					allWaypoints.push_back(nextWaypoint);

					queueIndex++;
					requestWaypointInfoSrv.request.positionInQueue = queueIndex;
					if( !requestWaypointInfoClient.call(requestWaypointInfoSrv) )
						ROS_ERROR("No goal was returned");
				}
				allPlanesWaypoints[i] = allWaypoints;
			}
			std::map<int, waypointPath> allPlanesPaths = getAStarPath(&planes, &allPlanesWaypoints);
			ROS_INFO("succesfully planned");
			// assign the full paths to each plane's normal path TODO bad for evaluator, don't use this workaround
			for (std::map<int, waypointPath>::iterator it = allPlanesPaths.begin(); it != allPlanesPaths.end(); it++) {
				goToWaypointSrv.request.planeID = it->first;
				goToWaypointSrv.request.isAvoidanceManeuver = true;
				goToWaypointSrv.request.isNewQueue = true;
				if (it->second.pathWaypoints.size() > 0) {
					goToWaypointSrv.request.latitude = it->second.pathWaypoints[0].latitude;
					goToWaypointSrv.request.longitude = it->second.pathWaypoints[0].longitude;
					if (!goToWaypointClient.call(goToWaypointSrv)) {
						ROS_ERROR("Did not receive response when adding waypoint that cleared queue");
					}
				}
				goToWaypointSrv.request.isNewQueue = false;
				for (int i = 1; i < it->second.pathWaypoints.size(); i++) {
					goToWaypointSrv.request.latitude = it->second.pathWaypoints[i].latitude;
					goToWaypointSrv.request.longitude = it->second.pathWaypoints[i].longitude;
					if (!goToWaypointClient.call(goToWaypointSrv)) {
						ROS_ERROR("Did not receive response while adding all those waypoints to avoidance path");
					}
				}
			}
			updatesCompleted++;
	}
	else {
		updatesCompleted++;
	}

	if (planes.size() > 1) {
		for (int i = 0; i < planes.size(); i++) {
			for (int j = i + 1; j < planes.size(); j++) {
				if (findDistance(planes[i].getCurrentLoc().latitude, planes[i].getCurrentLoc().longitude,
						planes[j].getCurrentLoc().latitude, planes[j].getCurrentLoc().longitude) < 12) {
					ROS_ERROR("Collision occured between plane %d and plane %d", i, j);
				}
			}
		}		
		
	}
	
}

vector<AU_UAV_ROS::waypoint> generateCombinedWaypoints(vector<AU_UAV_ROS::waypoint> *realWaypoints, vector<map_tools::waypointPath> *avoidPaths) {
	int avoidanceIndex = 0;
	vector<AU_UAV_ROS::waypoint> combined;
	//TODO fix this using gridVals, this only works because gridVals is global
	for (int i = 0; i < realWaypoints->size(); i++) {
		// i-1 is for if the first avoidance path is from the plane's start position to the first waypoint
		if (avoidanceIndex < avoidPaths->size() && i-1 == (*avoidPaths)[avoidanceIndex].startWaypointIndex) {
			for (int j = 0; j < (*avoidPaths)[avoidanceIndex].pathWaypoints.size(); j++) {
				combined.push_back((*avoidPaths)[avoidanceIndex].pathWaypoints[j]);
			}
			avoidanceIndex++;
		}
		// add next waypoint
		combined.push_back((*realWaypoints)[i]);
	}
	return combined;
}

bool startCollisionAvoidance(AU_UAV_ROS::StartCollisionAvoidance::Request &req, AU_UAV_ROS::StartCollisionAvoidance::Response &res)
{
    //ROS_INFO(req.indicator);
    readyToStart = true;
    
    // we shouldn't ever have an error, so populate it with "passed"
    res.error = "passed";
    return true;
}

int main(int argc, char **argv) {	
	//standard ROS startup
	ros::init(argc, argv, "collisionAvoidance");
	ros::NodeHandle n;

	std::cout.precision(10);
        //init service to start this node        
	ros::ServiceServer startCollisionAvoidanceServer = n.advertiseService("start_collision_avoidance", startCollisionAvoidance);

	ros::Rate r(10); // 10 hz
        while (!readyToStart)
        {
        ros::spinOnce();
        r.sleep();
        }

	/* Subscribe to telemetry outputs and create clients for the goToWaypoint and requestWaypointInfo services. */
	ros::Subscriber sub = n.subscribe("telemetry", 1000, telemetryCallback);
	goToWaypointClient = n.serviceClient<AU_UAV_ROS::GoToWaypoint>("go_to_waypoint");
	requestWaypointInfoClient = n.serviceClient<AU_UAV_ROS::RequestWaypointInfo>("request_waypoint_info");

    
	//needed for ROS to wait for callbacks
	ros::spin();	

	return 0;
}

