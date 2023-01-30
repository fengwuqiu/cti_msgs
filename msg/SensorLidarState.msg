# SensorCameraState
std_msgs/Header header

# supply state constants
# 1.常感器基本状态
uint8 OK=0
uint8 WARN=1
uint8 ERROR=2
uint8 STALE=3

int32 id
string name
uint8 state

uint16 mot_spd  # 电机转速
uint16 mot_phase  # 电机相位
uint16 software_ver # 软件版本号


# lidar 运行 state
float32 idat1_reg   # 设备供电电流
float32 idat2_reg   # 主板供电电流
float32 vdat_12v_reg # 
float32 vdat_12v_m_reg
float32 vdat_5v_reg
float32 vdat_3v3_reg
float32 vdat_2v5_reg
float32 vdat_1v2_reg

# 错误检测 digs
uint8 cksum_st # 温漂补偿教研和的出错状态指示  0x00 正常  0x01 不正常FPGA 背部温飘校正出错
float32 manc_err1 #数据通信传输1bit误码率
float32 manc_err2 #2bit误码率
# uint8 gps_st
float32 temperature1    #低板温度
float32 temperature2    #底板温度
float32 temperature3    #顶板温度
float32 temperature4    #顶板温度
float32 temperature5    #底板温度

cti_msgs/ErrorCode error_code # 表征传感器状态