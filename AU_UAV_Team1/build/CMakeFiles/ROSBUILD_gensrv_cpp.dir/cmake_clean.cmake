FILE(REMOVE_RECURSE
  "../src/AU_UAV_Team1/msg"
  "../src/AU_UAV_Team1/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/AU_UAV_Team1/RequestPlaneID.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/CreateSimulatedPlane.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/StartCollisionAvoidance.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/RequestWaypointInfo.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/StartCoordinator.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/SaveFlightData.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/LoadCourse.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/StartSimulator.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/LoadPath.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/DeleteSimulatedPlane.h"
  "../srv_gen/cpp/include/AU_UAV_Team1/GoToWaypoint.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
