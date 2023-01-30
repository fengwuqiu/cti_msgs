
# Coordinates
float32 x
float32 y
float32 z

# direction on the x-y plane
float32 theta
# curvature on the x-y planning
float32 kappa
# accumulated distance from beginning of the path
float32 s

# derivative of kappa w.r.t s
float32 d_kappa
# derivative of derivative of kappa w.r.t s.
float32 dd_kappa
# The lane ID where the path point is on
int32 lane_id

# derivative of x and y w.r.t parametric parameter t in CosThetareferenceline
float32 x_derivative
float32 y_derivative
