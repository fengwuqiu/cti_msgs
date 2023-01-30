
#####################################################
# 正常流程中的各个状态
#####################################################   

uint32 STATE_START=0                   #robot刚刚启动
uint32 STATE_LOCATIONING=1             #定位中
uint32 STATE_WAITTING_TASK=2           #空闲状态，等待云端的任务
uint32 STATE_MOUNT_BOX=3               #对准box,卡扣住快递柜,并且退出快递桩
uint32 STATE_UNMOUNT_BOX=4             #进入快递桩,放下箱子,退出快递桩
uint32 STATE_NAVIGATIONING_LIFT=5      #导航到电梯前的位置
uint32 STATE_WAITTING_LIFE_OUTSIDE=6   #在电梯外等待电梯达到并开门
uint32 STATE_ENTERING_LIFE=7           #进入电梯
uint32 STATE_WAITTING_LIFE_INSIDE=8    #在电梯内等待电梯到达相应楼层并开门
uint32 STATE_LEAVEING_LIFE=9           #离开电梯
uint32 STATE_NAVIGATIONING_PLACMENT=10 #导航到楼层的指定位置
uint32 STATE_RE_LOCATIONING=11         #重定位过程中
uint32 STATE_MAP_SYNC=12               #正在同步地图

uint32 STATE_ALLINLIFT_AND_STILLMOVINGIN=15   #机器已经全部进入电梯,释放电梯门,但还没有到达目标点.

uint32 STATE_NAVIGATIONING_GATE=17        #导航到闸机前
uint32 STATE_WAITTING_GATE_OPEN=18        #等待闸机开门
uint32 STATE_CROSS_GATE=19                #越过闸机

uint32 STATE_NAVIGATIONING_LIFT_PAUSE=21  #导航到电梯前过程中暂停状态
uint32 STATE_NAVIGATIONING_PLACMENT_PAUSE=22 #导航到目标点过程中暂停状态
uint32 STATE_NAVIGATIONING_GATE_PAUSE=23  #导航到闸机前的点过程中暂停状态

uint32 STATE_OPENING_WIFI_HOTSPOT=31     #正在打开wifi热点
uint32 STATE_CLOSING_WIFI_HOTSPOT=32     #正在关闭wifi热点
uint32 STATE_RECEIVING_MAPS=33           #正在接收app推送的地图集

uint32 STATE_SWITCHING_NAVI_MODE=61   #正在切换导航模式
uint32 STATE_SWITCHING_MAPP_MODE=62   #正在切换建图模式
uint32 STATE_SWITCHING_TEST_MAP_MODE=63  #正在切换测试地图模式

uint32 STATE_MAPPING_MODE=71  #建图模式
uint32 STATE_TESTMAP_MODE=72  #测试地图模式
uint32 STATE_DO_MAPPING=73    #正在建图

#####################################################
# 异常/故障/失败/错误状态
#####################################################

uint32 STATE_LOCATION_LOST=100            #定位丢失状态
uint32 STATE_CHANGEMAP_FAIL=101           #切换地图失败
uint32 STATE_ENTERING_ELEVATOR_FAIL=102   #进入电梯失败
uint32 STATE_LEAVEING_ELEVATOR_FAIL=103   #离开电梯失败
uint32 STATE_CALL_ELEVATOR_FAIL=104       #呼梯失败
uint32 STATE_OPEN_ELEVATOR_FAIL=105       #robot电梯内,电梯一直不开门,导致无法出电梯错误
uint32 STATE_NAVIGATION_LIFT_ERROR=106    #导航到电梯前失败,无法到达目的地
uint32 STATE_NAVIGATION_PLAT_ERROR=107    #导航到目标点失败,无法到达目的地
uint32 STATE_RE_LOCATIONING_ERROR=110     #重定位失败
uint32 STATE_MAP_SYNC_ERROR=112           #同步地图失败

uint32 STATE_NAVIGATIONING_GATE_ERROR=117 #导航到闸机前失败
uint32 STATE_WAITTING_GATE_OPEN_FAIL=118  #闸机开门失败
uint32 STATE_CROSS_GATE_ERROR=119         #越过闸机失败

uint32 STATE_SELF_CHECK_ERROR=120         #自检失败

uint32 STATE_OPEN_WIFI_HOTSPOT_ERROR=131  #打开wifi热点出错
uint32 STATE_CLOSE_WIFI_HOTSPOT_ERROR=132 #关闭wifi热点出错
uint32 STATE_RECEIVING_MAPS_ERROR=133     #接收app推送的地图集出错

uint32 STATE_MOUNT_BOX_FAIL=151           #装箱失败
uint32 STATE_UNMOUNT_BOX_FAIL=152         #卸箱失败

uint32 STATE_SWITCHING_NAVI_MODE_FAIL=161      #切换导航模式失败
uint32 STATE_SWITCHING_MAPP_MODE_FAIL=162      #切换建图模式失败
uint32 STATE_SWITCHING_TEST_MAP_MODE_FAIL=163  #切换测试地图模式失败

#####################################################
# 异常/故障/失败/错误之后机器进行自我恢复的状态
#####################################################

# 异常后自动恢复
uint32 STATE_RECOVERY_LOCATION_LOST=200      #定位丢失后,正在恢复
uint32 STATE_RECOVERY_ENTERING_LIFE_FAIL=202 #进入电梯失败后,需要再次退出到候梯位置
uint32 STATE_RECOVERY_CALL_LIFT_FAIL=203     #在电梯外呼梯失联,正在恢复
uint32 STATE_RECOVERY_OPEN_LIFT_FAIL=204     #在电梯内呼梯失联,正在恢复

#####################################################
# 机器正在中止当前流程 的状态
#####################################################

uint32 STATE_ABORTING_ENTERING_LIFE=302      #正在中止进电梯状态,需要再次退出到候梯位置
uint32 STATE_ABORTING_WAITTING_LIFT=304      #正在中止等电梯状态.
uint32 STATE_ABORTING_NAVIGATION=306         #正在中止导航状态.
uint32 STATE_ABORTING_SYNCMAP=312            #正在中止地图更新状态
uint32 STATE_ABORTING_WAITTING_GATE_OPEN=318 #正在中止等待闸机开门状态
uint32 STATE_ABORTING_CROSS_GATE=319         #正在中止越过闸机

uint32 STATE_ABORTING_MOUNT_BOX=351          #正在终止装箱
uint32 STATE_ABORTING_UNMOUNT_BOX=352        #正在终止卸箱

#####################################################
# 终止状态: 需要人工手动干预!!!
#####################################################

uint32 STATE_ENTER_LIFT_RECOVERY_NEED_HUMAN_INTERVENTION=400 #进电梯恢复出现异常,需要人工干预
uint32 STATE_ENTER_LIFT_ABORT_NEED_HUMAN_INTERVENTION=401    #进电梯中止出现异常,需要人工干预
uint32 STATE_IN_LIFT_NEED_HUMAN_INTERVENTION=402             #在电梯内等待出现异常,需要人工干预
uint32 STATE_LEAVE_LIFT_NEED_HUMAN_INTERVENTION=403          #离开电梯出现异常,需要人工干预
uint32 STATE_NEED_HUMAN_INTERVENTION=404                     #装卸箱/充电状态等 无法恢复,无法重置 的 终止状态 , 需要人为进行干预
uint32 STATE_NO_ODOM_DATA=405    #无里程计数据, 重定位可恢复
uint32 STATE_NO_FRONT_SCAN_DATA=406 #无前雷达数据
uint32 STATE_NO_REAR_SCAN_DATA=407 #无后雷达数据

# 机器人的状态机列表,维护自身状态
uint32 state

# 机器人id
uint32 robotid

# 目前只有电梯通信模块使用到,未来可能有更多的模块要用到
string target_floor   # 目标楼层
string current_floor  # 当前楼层

string buildingname

string elevatorid

# loadstate的状态列表
uint8 STATE_LOAD_EMPTY=0  #空载
uint8 STATE_LOAD_LOAD=1   #负载
uint8 STATE_LOAD_UNKNOW=2
uint8 loadstate

# 充电状态
uint32 chargestate

# 当前目的地的坐标, 进电梯模块,出电梯模块需要知道
## STATE_WAITTING_TASK = 2 :全0 
# STATE_NAVIGATIONING_LIFT = 5 :当前楼层电梯前的等待点
## STATE_WAITTING_LIFE_OUTSIDE = 6 :全0
# STATE_ENTERING_LIFE = 7 :当前楼层电梯里的点
# STATE_WAITTING_LIFE_INSIDE = 8 :目标楼层电梯里的点
# STATE_LEAVEING_LIFE = 9 :目标楼层电梯外的出电梯点
# STATE_NAVIGATIONING_PLACMENT = 10 :最终目的地
geometry_msgs/Pose destination

# 当前位置
geometry_msgs/Pose pose

# 当前进出电梯的模式 参考NaviRequest.msg里面的定义
uint32 elevatormode

#机器人型号
string robot_type
#机器人编号
string robot_number
#机器人运行模式 导航/建图
uint32 run_mode
