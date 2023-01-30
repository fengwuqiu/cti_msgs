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
float64 a
float64 theta
float64 length
float64 width
float64 height
float64 distance
geometry_msgs/Polygon polygon
bool is_static

# obstacle prediciton trajectory including timestamp
nav_msgs/Path predict_traj