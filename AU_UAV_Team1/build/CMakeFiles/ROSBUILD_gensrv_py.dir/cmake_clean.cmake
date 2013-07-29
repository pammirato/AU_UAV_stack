FILE(REMOVE_RECURSE
  "../src/AU_UAV_Team1/msg"
  "../src/AU_UAV_Team1/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/AU_UAV_Team1/srv/__init__.py"
  "../src/AU_UAV_Team1/srv/_RequestPlaneID.py"
  "../src/AU_UAV_Team1/srv/_CreateSimulatedPlane.py"
  "../src/AU_UAV_Team1/srv/_StartCollisionAvoidance.py"
  "../src/AU_UAV_Team1/srv/_RequestWaypointInfo.py"
  "../src/AU_UAV_Team1/srv/_StartCoordinator.py"
  "../src/AU_UAV_Team1/srv/_SaveFlightData.py"
  "../src/AU_UAV_Team1/srv/_LoadCourse.py"
  "../src/AU_UAV_Team1/srv/_StartSimulator.py"
  "../src/AU_UAV_Team1/srv/_LoadPath.py"
  "../src/AU_UAV_Team1/srv/_DeleteSimulatedPlane.py"
  "../src/AU_UAV_Team1/srv/_GoToWaypoint.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
