# WIT imu 模块 输出数据
std_msgs/Header header

float64 imu_time
float32 temperatue	
float32 pressure	
float32 height

float64 lat
float64 lon
float32 alt

uint32 sat_num
float32 pdop
float32 hdop
float32 vdop

float32 speed_gnd
float32 speed_dir	

geometry_msgs/Vector3 acceleration		
geometry_msgs/Vector3 angular_vel		
geometry_msgs/Vector3 magnitude		
geometry_msgs/Vector3 rpy		
geometry_msgs/Quaternion orientation #融合了磁罗盘,ENU坐标系