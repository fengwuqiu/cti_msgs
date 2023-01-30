# 清扫箱状态消息
std_msgs/Header header

uint8 water_tank_top #水箱高水位
uint8 water_tank_bottom #水箱低水位
uint8 dustbin_tail_cover #尾箱开关
uint16 dustbin_distance  #垃圾箱中垃圾深度
uint16[] ultrasonic_distance #超声波距离
float32 voltage1 #电池1电量
float32 voltage2 #电池2电量
float32 voltage3 #电池3电量
uint8 motor_status #五个电机状态，按位赋值


