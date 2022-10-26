#type of state
uint8 type 

#level of state
uint8 state

#node name
string name

#discription of state
string info

#possible type
uint8 NODE=0
uint8 DATA=1
uint8 TOPIC=2

#possible state for node
uint8 NODE_ALIVE=0
uint8 NODE_DEAD=1

#possible state for topic
uint8 RATE_OK=10
uint8 RATE_HIGH=11
uint8 RATE_LOW=12

#possible state for data check
uint8 DATA_OK=20
uint8 DATA_WARN=21
uint8 DATA_ERROR=22