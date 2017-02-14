M104 S0 T0 (Turn off extruder heater)
(**** begin move to cooling position ****)
G92 Z0.0 (move to cooling position)
G1 Z1.0 F145 (move to cooling position)
G1 X0.0 F3300.0       (move to cooling position)
G1 X0.0 Y75.0 F3300.0 (move to cooling position)
G1 Z144.4 F450.0
(**** end move to cooling position ****)
M18 (Turn off steppers)
