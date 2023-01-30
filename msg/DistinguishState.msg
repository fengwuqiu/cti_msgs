# state 状态列表
int8 STATE_DISTINGUISH_FAIL=-1          # -1：失败，在进入装车状态后调整时跟丢二维码(不在视野内一段时间)
int8 STATE_DISTINGUISH_NO_READY=0       # 0：未准备好,看不到二维码
int8 STATE_DISTINGUISH_MOVING=1         # 1：可移动,看到二维码, 并且数据稳定可以使用。
int8 STATE_DISTINGUISH_TOO_CLOSE=2      # 2：可移动,距离二维码太近,已看不到二维码
int8 STATE_DISTINGUISH_EXIST_OBSTACLE=3 # 3：前方有障碍,不允许移动

# 装卸车状态情况
int8 state

# state == -1时的错误信息
string brief_msg
