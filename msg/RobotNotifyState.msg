
#发布者随机生成,uuid形式的字符串
string id

#时间戳
uint64 timestamp

#当前任务链的id
string tasklist_id

#当前执行的任务id, 无任务时为空
string task_id
#当前任务的上下文, 无任务时为空
string task_context

#当前机器人导航流程的Id
#在收到MOVE请求时，以这个MOVE请求的Id值，覆盖sessionId值，在接收到其他状态下，该值不变，直到收到下一个MOVE请求。
string navoptid

#当前导航状态
uint32 NAVOPTSTATE_COMPLETED=0    #上一导航流程任务已经成功完成
uint32 NAVOPTSTATE_NAVIGATING=1   #正在进行导航流程
uint32 NAVOPTSTATE_PAUSED=2       #当前导航任务已经暂停
uint32 NAVOPTSTATE_ABORTING=3     #正在中止当前导航流程任务
uint32 NAVOPTSTATE_ERROR=4        #当前导航流程任务出现错误
uint32 NAVOPTSTATE_RECOVERYING=5   #正在修复导航中出现的错误,恢复到上一个状态
uint32 NAVOPTSTATE_RELOCATIONING=6  #正在重新定位中
uint32 navoptstate

# 导航故障信息
string navfaultreason

# 导航任务失败时的失败原因
uint32 NAV_FAULT_NO_ERROR=0     #无问题
uint32 NAV_FAULT_NO_PLAN=1      #无法找到一条全局路径,目标点不可达
uint32 NAV_FAULT_NO_CONTROL=2   #有障碍阻碍机器人移动
uint32 NAV_FAULT_OSCILLATING=3  #机器人在一定时间内没有做出移动动作
uint32 NAV_FAULT_INVALID_QUATERNION=4 #坐标点无效
uint32 NAV_FAULT_CANCEL_COMMAND=5 #命令取消导航
# uint32 NAV_FAULT_NODE_KILLED = 6 #节点被杀死
# uint32 NAV_FAULT_CONTROLLER_KILLED = 7 #controller被杀死
uint32 NAV_FAULT_LOST_LOCATION=8 #定位丢失
uint32 NAV_FAULT_UNKNOW=10 #未知原因
uint32 navfaultenum

# 当前机器人所在楼层信息
string cur_level

# 机器人导航的目标楼层信息
string target_level

#当前机器人所在的位置坐标
geometry_msgs/Pose location

#当前机器人装卸箱流程的Id
string hive_dock_opt_id

#当前机器人 装卸箱流程状态
uint32 PAYLOADSTATE_EMPTY=0                  #空箱
uint32 PAYLOADSTATE_LOADING=1                #正在装箱
uint32 PAYLOADSTATE_LOADED=2                 #已装箱
uint32 PAYLOADSTATE_UNLOADING=3              #正在卸箱
uint32 PAYLOADSTATE_FAULT=4                  #出现故障
uint32 PAYLOADSTATE_INIT=5                   #正在初始化

uint32 PAYLOADSTATE_LOADING_ALMOST_DONE=6   #装箱接近完成
uint32 PAYLOADSTATE_UNLOADING_ALMOST_DONE=7 #卸箱接近完成
uint32 payloadstate

# 装卸箱故障信息
string payload_fault_reason

# 当前机器人充电命令的ID
string charge_opt_id

#当前机器人 充电流程状态
uint32 CHARGESTATE_INIT=0          #无操作
uint32 CHARGESTATE_ENTERING=1      #正在进入充电桩
uint32 CHARGESTATE_DOING=2         #正在充电
uint32 CHARGESTATE_LEAVING=3       #正在离开充电桩
uint32 CHARGESTATE_ERROR=4         #出现故障
uint32 CHARGESTATE_RECOVERYING=5   #出错/中止后,正在恢复到可导航状态
uint32 charge_opt_state

# 充电故障信息
string charge_fault_reason


# robotstate 的状态列表见 BuildingRobotState.msg
uint32 robot_state

# robot_elevator_relationship 状态列表
uint8 ROBOT_ELEVATOR_OUTSIDE=0  #机器人在电梯外
uint8 ROBOT_ELEVATOR_ENTERING=1 #机器人正在进入电梯
uint8 ROBOT_ELEVATOR_INSIDE=2   #机器人在电梯内
uint8 ROBOT_ELEVATOR_LEAVING=3  #机器人正在离开电梯
uint8 robot_elevator_relationship

# 传感器bit
uint64 SENSOR_BIT_OFFSET_ODOM=0               #里程计
uint64 SENSOR_BIT_OFFSET_FRONT_LIDAR=1        #前置雷达
uint64 SENSOR_BIT_OFFSET_REAR_LIDAR=2         #后置雷达
uint64 SENSOR_BIT_OFFSET_REALSENSOR=3         #realsense
uint64 SENSOR_BIT_OFFSET_MONOCULAR_CAMERA=4  #单目摄像头
uint64 SENSOR_BIT_OFFSET_LEFT_TOF=5          #tof (BR202: 中间tof BR203: 左侧tof)
uint64 SENSOR_BIT_OFFSET_RIGHT_TOF=6         #tof (BR202: 未使用  BR203: 右侧tof)
#单点激光(机器颈肩判断悬崖)
uint64 SENSOR_BIT_OFFSET_TFMINI_NECK_LEFT=7       #BR202: 未使用  BR203:颈部左侧的单点激光 
uint64 SENSOR_BIT_OFFSET_TFMINI_NECK_RIGHT=8      #BR202: 未使用  BR203:颈部右侧的单点激光 
uint64 SENSOR_BIT_OFFSET_TFMINI_SHOULDER_LEFT=9   #BR202: 未使用  BR203:肩部左侧的单点激光
uint64 SENSOR_BIT_OFFSET_TFMINI_SHOULDER_RIGHT=10 #BR202: 未使用  BR203:肩部右侧的单点激光 
#超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_HEAD_LEFT=11   #BR202: 头顶超声波  BR203:头顶左侧超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_HEAD_RIGHT=12  #BR202: 未使用  BR203:头顶右侧超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_FRONT=13       #BR202: 正面超声波  BR203:正面超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_FRONT_LEFT=14    #BR202: 左前方超声波  BR203:正面左侧超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_FRONT_RIGHT=15   #BR202: 右前方超声波  BR203:正面右侧超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_LEFT_FRONT=16    #BR202: 左侧前超声波  BR203:左侧前超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_LEFT_BACK=17    #BR202: 左侧后超声波  BR203:左侧后超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_RIGHT_FRONT=18  #BR202: 右侧前超声波  BR203:右侧前超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_RIGHT_BACK=19   #BR202: 右侧后超声波  BR203:右侧后超声波
uint64 SENSOR_BIT_OFFSET_ULTRASONIC_BACK=20        #BR202: 未使用  BR203:背面超声波
#防撞条
uint64 SENSOR_BIT_OFFSET_ANTICOLLISION_FRONT=21    #BR202: 未使用  BR203:前方防撞条
uint64 SENSOR_BIT_OFFSET_ANTICOLLISION_LEFT=22     #BR202: 未使用  BR203:左侧防撞条
uint64 SENSOR_BIT_OFFSET_ANTICOLLISION_RIGHT=23    #BR202: 未使用  BR203:右侧防撞条
uint64 SENSOR_BIT_OFFSET_ANTICOLLISION_REAR=24    #BR202: 未使用  BR203:后方防撞条
#单点激光(轮子旁边防止压脚)
uint64 SENSOR_BIT_OFFSET_TFMINI_LEFT_FRONT=25     #BR202 BR203:左前轮旁的
uint64 SENSOR_BIT_OFFSET_TFMINI_LEFT_BACK=26      #BR202 BR203:左后轮旁的
uint64 SENSOR_BIT_OFFSET_TFMINI_RIGHT_FRONT=27   #BR202 BR203:右前轮旁的
uint64 SENSOR_BIT_OFFSET_TFMINI_RIGHT_BACK=28    #BR202 BR203:右后轮旁的

# 传感器状态
# 0:正常
# 1:出问题/无数据
uint64 SENSOR_NO_ERROR=0 #传感器无问题
uint64 sensor_value

# 可正常工作的传感器 掩码
uint64 sensor_enable

# 传感器触发会造成机器静止不动或后退
# 0:没触发
# 1:触发
uint64 SENSOR_NO_TRIGGER=0 #传感器无触发
uint64 sensor_trigger_value

# 可被触发的传感器 掩码
uint64 sensor_trigger_enable

# 机器人运行模式
uint32 ROBOT_MODE_NAVIGATION=0
uint32 ROBOT_MODE_MAPPING=1
uint32 ROBOT_MODE_TESTMAPPS=2
uint32 run_mode
