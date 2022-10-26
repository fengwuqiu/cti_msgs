

# cmd 列表
uint8 CMD_CALL_ELEVATOR=0   # 呼梯
uint8 CMD_CLOSE_DOOR=1      # 关门
uint8 CMD_CANCEL_TASK=2     # 取消任务

# 发送给梯控模块的控制命令
uint8 cmd

string elevator_id
string entity_id

string target_floor   # 目标楼层
string current_floor  # 当前楼层
