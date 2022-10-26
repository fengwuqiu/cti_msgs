# whether localization successed, isTracked = 2 for successed , other for failed and extend.
int32 is_tracked

# localization successed, trackModel = 1 for VO models, 2 and 3 for MapPoint matching models, other for extend.
int32 track_model

# current camera pose outputed from ORB-SLAM2 localization
geometry_msgs/Pose pose
