int32 id
float64 age
geometry_msgs/Point pos

# calculate by filters
geometry_msgs/Vector3 vel
# calculate by distance and timestamp
float64 vel_rel

float64[9] pos_cov
float64[9] vel_cov

cti_msgs/CloudCluster[] associated
