# ErrorCode
#
# OK = 0;

# Hd map module 
# HD map data error = 1000;

# Sensor module
# sensor imu error = 2100;
# sensor 2d-lidar error = 2200;
# sensor 3d-lidar error = 2300;
#        net port error  = 2301;  雷达网络端口错误
# sensor ultrasonic error = 2400;
# sensor camera error = 2500;
# sensor radar error = 2600;

# Control module 
# Control init error = 3001;

# Localization module
# localization init error = 4100;
# localization lidar error = 4200;
# localization gnss error = 4300;
# localization camera error = 4400;

# Relative Map 
# relative map error = 6000;

# Planning module 
# planning error = 6000;
# planning overtime = 6001;

# HTTP module 


int64 data
string name




#  Path Planning ErrorCode Description

#(1) path planning error flag: 2

#(2) planning mode : 
#   0:empty planning
#   1:local planning
#   2:astar planning
#   3:fix planning
#   4:box assemble

#(3)planning course
#0:empty planning
#   0:no topic
#   1:free state
#   2:no path (manual operate vehicle)
#   3:end astar path tracking
#   4:new path
#   5:stop fix
#   6:front obs removed
#   7:tracking load_box_path
#   8:localization lost
#   9:special astar
#1:local planning   
#   0:no planning course
#2:astar planning
#   1:parking bay
#   2:load box
#   3:unload box
#   7:special astar
#   6:rad astar
#   4:front congestion
#   5:back congestion
#3:fix planning
#   1:near end point
#   2:near stop point
#   6:special stage
#   7:fix once
#4:box assemble   
#   0:no planning course

#(4)planning result
#0:empty planning
#   0:succ
#1:local planning   
#   0:succ
#2:astar planning
#   0:succ   
#   1:start point is out
#   2:start point is collision
#   3:goal point is out
#   4:goal point is collision
#   5:astar path num is over upper limit
#   6:astar search count is over upper limit
#   7:no property astar path
#3:fix planning   
#   0:succ
#4:box assemble
#   0:succ