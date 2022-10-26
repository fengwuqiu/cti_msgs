# Power supply status constants
uint8 power_supply_status_unknown 
uint8 power_supply_status_charging 
uint8 power_supply_status_discharging 
uint8 power_supply_status_not_charging 
uint8 power_supply_status_full 

# Power supply health constants
uint8 power_supply_health_unknown 
uint8 power_supply_health_good 
uint8 power_supply_health_overheat
uint8 power_supply_health_dead 
uint8 power_supply_health_overvoltage 
uint8 power_supply_health_unspec_failure 
uint8 power_supply_health_cold 
uint8 power_supply_health_watchdog_timer_expire 
uint8 power_supply_health_safety_timer_expire 

std_msgs/Header header
uint8 power_supply_status   # The charging status as reported. Values defined above
uint8 power_supply_health   # The battery health metric. Values defined above
float64 voltage_all
int32 power
int32 temperature
float64 charge_current
float64 discharge_current
uint8 wireless_install_state #0: not installed, 1:installed
float32 wireless_voltage     #the wireless charge voltage
float32 wireless_current     #the wireless charge charge
uint8 wireless_reserve     #unused
uint8 wireless_state       #wireless charge state 
uint8 wireless_temp        #temperature of wireless charge board
uint8 wireless_changer     #if is charging