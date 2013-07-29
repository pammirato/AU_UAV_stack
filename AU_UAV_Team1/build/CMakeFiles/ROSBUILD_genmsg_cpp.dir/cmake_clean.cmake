FILE(REMOVE_RECURSE
  "../src/AU_UAV_Team1/msg"
  "../src/AU_UAV_Team1/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/AU_UAV_Team1/Command.h"
  "../msg_gen/cpp/include/AU_UAV_Team1/TelemetryUpdate.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
