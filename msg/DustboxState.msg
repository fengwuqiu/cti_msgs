# 吸尘箱状态上传
std_msgs/Header header

uint8 water_tank_top           #水箱高水位
uint8 water_tank_bottom        #水箱低水位
uint8 dustbin_tail_cover       #尾箱开关
uint16 dustbin_distance         #垃圾箱中垃圾深度
uint16[] ultrasonic_distance      #超声波距离
float32 voltage1                 #电池1电压
uint8 bat_1_soc                #电池1电量百分比
float32 voltage2                 #电池2电压
uint8 bat_2_soc                #电池2电量百分比
float32 voltage3                 #电池3电压
uint8 bat_3_soc                #电池3电量百分比
float32 voltage4                 #电池4电压
uint8 bat_4_soc                #电池4电量百分比
uint8 motor_status             #电机状态
uint8 recv_dustbin_on_the_car  #箱子在车上的状态位
uint8 auto_push                 #自动倾倒垃圾的状态
uint8 fan_speed                #风机速度
uint8 unused0                  #预留位0
uint8 unused1                  #预留位1
float32 wireless_voltage       #无线充电电压
float32 wireless_current       #无线充电电流
uint8 wireless_reserve       #保留
uint8 wireless_state         #无线充电状态
uint8 wireless_temp          #充电板温度
uint8 wireless_charge        #是否在充电
uint8 fan_torque             #风机转矩
uint16 fan_speed_closedloop   #闭环控制下的风机转速
uint8 fan_current            #风机电流
uint64 error_info              #板子错误码

