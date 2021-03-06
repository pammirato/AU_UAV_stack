/***************************************************
 Coder: Jacob Dalton Conaway - jdc0019@auburn.edu
 Reviewer/Tester: Kayla Casteel - klc0025@auburn.edu
 Senior Design - Spring 2013
 Sources are in-line
 TODO: Finish Commenting and Proofread Comments
 ***************************************************/

#include <ros/ros.h>
#include <ros/package.h>
#include <ros/network.h>
#include <string>
#include <std_msgs/String.h>
#include <QDebug>
#include "AU_UAV_GUI/qnode.hpp"
#include "AU_UAV_GUI/TelemetryUpdate.h"
#include "AU_UAV_GUI/SendFilePath.h"
#include <QFileDialog>
#include <QMessageBox>
#include "AU_UAV_GUI/constants.h"
#include <signal.h>

QNode::QNode(int argc, char ** argv) :
    init_argc(argc), init_argv(argv)
{
}

QNode::~QNode()
{
    if (ros::isStarted()) {
        ros::shutdown();    // explicitly needed since we use ros::start();
        ros::waitForShutdown();
    }
    wait();
}

void QNode::telemetryCallback(
    const AU_UAV_GUI::TelemetryUpdate::ConstPtr & msg)
{
    long double longitude = msg->currentLongitude;
    long double latitude = msg->currentLatitude;
    long double wp_Longitude = msg->destLongitude;
    long double wp_Latitude = msg->destLatitude;
    long double bearing = msg->targetBearing;
    int planeID = msg->planeID;
    emit newCoordinates(double(latitude), double(longitude), double(bearing),
                        planeID);
    emit updateWayPoint(double(wp_Latitude), double(wp_Longitude), planeID);
    emit updatePlaneInfo(msg->planeID, msg->currentLatitude,
                         msg->currentLongitude, msg->currentAltitude, msg->groundSpeed,
                         msg->targetBearing, msg->currentWaypointIndex,
                         msg->distanceToDestination);
}

QString QNode::getPackagePath()
{
    return QString::fromStdString(
               ros::package::getPath(ROS_PKGE_NAME.toStdString()));
}

void QNode::sendFilePath()
{
    AU_UAV_GUI::SendFilePath srv;
    QString path = getPackagePath();
    path.append(COURSE_DIR_POSTFIX);

    QString filename = QFileDialog::getOpenFileName(NO_PARENT, OPEN_FILE_TITLE,
                       path, COURSE_FILE_TYPE);
    srv.request.filename = filename.toStdString().c_str();
    if (sendFileNameClient.call(srv)) {
        emit filePathSent();
        return;
    } else {
        QMessageBox::warning(NO_PARENT, WARNING_TITLE, NO_ROS_NODE_WARNING,
                             QMessageBox::Ok);
    }
}

bool QNode::init()
{
    ros::init(init_argc, init_argv, GUI_PACKAGE_NAME.toStdString());

    if (!ros::master::check()) {
        QMessageBox::warning(NO_PARENT, WARNING_TITLE, NO_ROS_NODE_WARNING,
                             QMessageBox::Ok);
        return false;
    }

    ros::start(); // explicitly needed since our nodehandle is going out of scope.
    ros::NodeHandle n;

    // subscribe to telemetry updates
    telem_sub = n.subscribe(TELEM_TOPIC.toStdString(), SUB_QUEUE_SIZE,
                            &QNode::telemetryCallback, this);

    sendFileNameClient = n.serviceClient < AU_UAV_GUI::SendFilePath
                         > (SEND_FILE_SRV_NAME.toStdString());

    start();

    return true;
}

void QNode::run()
{
    ros::spin();
}
