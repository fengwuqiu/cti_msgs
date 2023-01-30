# 环卫车的清扫功能控制
std_msgs/Header  header

uint8 engin_start            #一键启动
uint8 side_brush             #边刷启动
uint8 main_brush             #主刷启动
uint8 spray_motor            #喷水电机
uint8 dust_suppresion        #振尘电机
int8  lift_motor             #边刷升降
uint8 led                    #led灯
uint8 control_mode           #控制模式 
uint8 dustbin_on_car         #箱子在车上的标志位
uint8 dam_board              #挡板开关
uint8 side_brush_transform   #边刷伸展
uint8 side_brush_speed       #边刷旋转速度
uint8 unused0                #预留位0
uint8 unused1                #预留位1
uint8 unused2                #预留位2
uint8 unused3                #预留位3

