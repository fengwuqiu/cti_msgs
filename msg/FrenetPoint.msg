std_msgs/Header header

float32 t

float32 d     #位置
float32 d_v   #速度
float32 d_acc   #加速度
float32 d_jerk  #加加速度

float32 s
float32 s_v
float32 s_acc
float32 s_jerk

float32 sd_yaw #这个点方向与S轴夹角

float32 x   #局部直角坐标系下，该点坐标x
float32 y   #局部直角坐标系下，该点坐标y
float32 cur  #这个点的曲率
float32 v    #这个点的速度
float32 yaw  #局部直角坐标系下该点方向，与x轴夹角