# RobotLocalizerInfo
std_msgs/Header header

int32 id
string name

#   id      name                // annotation

#   100     UNINIT              // 定位丢失(初始化失败)
#   101     MAP_ABNORMAL        // 定位告警(环境变化过大/地图存在异常)
#   102     LIDAR_BLOCKED       // 定位告警(雷达被大面积遮挡)

#   200     LIDAR_ABNORMAL      // 定位告警(雷达数据异常)
#   201     ROBOT_ODOM_ABNORMAL // 定位告警(机器底盘odom异常)
#   202     IMU_ABNORMAL        // 定位告警(IMU数据异常)

#   300     SYSTEM_ABNORMAL     // 定位告警(系统异常/卡顿)
