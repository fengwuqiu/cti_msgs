## 所有GNSS综合信息

std_msgs/Header header

	# gps utc time
float64 utc_seconds 	# utc时间,00:00:00至今的秒数,当前未使用

 	# position
string  position_stat	# 位置解状态,NONE=无定位 SINGLE=单点定位 PSFDIFF=伪距差分 NARROW_FLOAT=浮点解 NARROW_INT=固定解
float64 lat		# 负数表示南半球,单位(度)
float64 lon		# 负数表示西半球,单位(度)
float64 alt		# WGS84 椭球高,若使用海拔高,则需根据undulation计算转换.
float32 lat_err		# 纬度标准差,单位(m)
float32 lon_err		# 经度标准差,单位(m)
float32 alt_err		# 高程标准差,单位(m)
float32 diff_age	# 差分龄,单位(s)
float32 undulation  	# 海拔高 = alt - undulation
uint32 sats_tracked    # 跟踪到的卫星数
uint32 sats_used	# 解算中使用的卫星数

	# angle 主天线(moving)到副天线(heading)所形成的向量,真北即经线北向
string heading_stat	# 定向解状态,仅 SOL_COMPUTED 时表示定位成功
float32 heading		# 航向角(度),以为真北为起点,顺时针 0.0 - 359.99
float32 pitch		# 俯仰角(度),水平为0°,±90°
float32 heading_err	# 航向角标准差,单位(度)
float32 pitch_err	# 俯仰角标准差,单位(度)
float32 baselinelen	# 两天线基线长

	# velocity
string velocity_stat	# 速度解状态,仅 SOL_COMPUTED 时表示定位成功
float32 speed_north	# 东北天系下各速度分量,单位(m/s)
float32 speed_east	
float32 speed_up
float32 latency		# 速度延迟,单位(s)