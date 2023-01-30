# 环卫车清扫功能状态上传
std_msgs/Header header

uint8 water_tank_top             #水箱高水位
uint8 water_tank_bottom          #水箱低水位
uint8 dustbin_tail_cover         #尾箱开关
uint16 dustbin_distance           #垃圾箱中垃圾深度
uint16[] ultrasonic_distance        #超声波距离
float32 voltage1                   #电池1电量
float32 voltage2                   #电池2电量
float32 voltage3                   #电池3电量
uint8 motor_status               #五个电机状态，按位赋值
uint8 recv_dustbin_on_the_car    #箱子在车上的状态位
uint8 dam_board_status           #挡板状态
uint8 side_brush_transform_state #边刷伸展状态
uint8 side_brush_speed           #边刷速度
uint32 error_code                 #错误码
uint8 control_mode                #控制模式
uint8 unused0                    #预留位0
uint8 unused1                    #预留位1
uint8 unused2                    #预留位2
uint8 unused3                    #预留位2



