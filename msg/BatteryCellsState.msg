std_msgs/Header header
cti_msgs/BatteryCell[] batcells
float32 bat_backup_volt #backup battery voltage
float32 bus_volt        #main power bus voltage
float32 volt_all	 #the max voltage
uint8 soc_all		 #the everage soc
float32 charger_volt    #charger voltage

# battery board temperature
#   0:Bat1 MOS 1:MCU 2:BAT2 BAT3 MOS 3:front left motor driver MOS 4:charger In MOS 
#   5:Move Control board port 6:back left motor driver MOS 7:AI Computer port
float32[] board_temp
 
#   0:wheel1 1:wheel2 2:wheel3 3:wheel4 4:AI Computer
#   5:move control board and backup battery 6:brake motor 7:steel driver 
float32[] board_curr

uint8 charge_reverse #charger voltage reverse
uint8 v_leakage      #shell with high voltage
uint8 charge_status
uint8 lock_status
uint32 errorinfo

#0:undefined 1:wireless_charge 2:wired_charge 
uint8 charge_type
float32 charge_voltage     # charge voltage
float32 charge_current     # charge charge
uint8  charge_reserve     # unused
uint8  charge_state       # charge state 
uint8  charge_temp        #temperature of charge board
uint8  charge_charger     #if is charging
uint32 signal_pin   # 信号针