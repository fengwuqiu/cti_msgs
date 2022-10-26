# 命令    #  2 3 4 5 6 7 是装卸箱
uint8 MOVE=0
uint8 PARK=1
uint8 LOAD=2
uint8 UNLOAD=3
uint8 PICK_UP=4
uint8 DROP_OFF=5
uint8 LOAD_STACK=6
uint8 UNLOAD_STACK=7
uint8 PEEK=8
uint8 SPRAY=9
uint8 CLEAN=10
int32  command


# 目标点类型
uint8 HUB=0    #驿站
uint8 DOCK=1   #快递桩
uint8 NORMAL=2 #普通(派送取件点)
uint8 INTERCHANGE=3 #接驳点
uint8 BAY=4 #车位
uint8 CHARGER=5 #充电点
uint8 STACK=6 #stack快递庄
uint8 BAY_RULE=100 #规则停车
int32 target_pose_type
# 状态
int32 state

string id #命令id
string target_id
string data_id
geometry_msgs/PoseStamped pose

