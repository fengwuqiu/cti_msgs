#底盘状态
int8 state_vehicle
#电机驱动使能
uint16 drivers_enable
#控制方式
int8 control_mode
#刹车
int8 state_brake
#x线速度
float32 vel_liner_x
#y线速度 
float32 vel_liner_y
#角速度 目前无
float32 vel_angular
#前后轮转向
float32 angle_front_turn
float32 angle_rear_turn
#霍尔状态
uint8 box_sw 
#前后防撞杆
uint8 front_bar 
uint8 rear_bar
#顶升参数
uint8 lift_position
#里程计
float64 odometer


