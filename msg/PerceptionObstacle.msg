# obstacle ID
int32 id

# obstacle type
# 0 - 未知
# 1 - 小车
# 2 - 大车（卡车、公交）
# 3 - 非机动车（电动车、自行车）
# 4 - 行人
int8 type

# obstacle position in the map coordinate system.
geometry_msgs/Pose pose
# obstacle velocity
geometry_msgs/Vector3 velocity

# obstacle measurement
float64 length
float64 width
float64 height

geometry_msgs/Polygon polygon

# RSLIDAR_32 = 0,
# RSLIDAR_16 = 1,
# LSLIDAR_2D = 2,
# RADAR = 3,
# CAMERA = 4,
# ULTRASONIC = 5,
# UNKNOWN_SENSOR_TYPE = 10,
int8 sensor_type
