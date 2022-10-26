# 底盘IMU 数据发布
std_msgs/Header header
#ROS标准IMU消息
sensor_msgs/Imu imu_data

#位置
float32 position_x
float32 position_y
float32 position_z

#线速度
float32 linear_velocity_x
float32 linear_velocity_y
float32 linear_velocity_z

#气压计原始数据
float32 barometer_rawdata

#由气压计计算的高度
float32 barometer_height

#标志位
float32 state_flag

