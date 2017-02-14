(**** beginning of start.gcode ****)
(This file is for a WeisTek IdeaWerk 150)
(**** begin initilization commands ****)
M104 S[first_layer_temperature] T0
G21 (Metric FTW)
G90 (Absolute Positioning)
M18 (This disables the stepper motors.)
G92 X0 Y0 Z0 A0 B0 (Declare the current position to be 0,0,0,0,0)
(**** end initilization commands ****)
(**** begin homing ****)
G161 Y X F2500
G92 X0 Y0 Z0 A0 B0
G1 X5.0 Y5.0 Z-5.0 F450
G162 Z F450 
G161 Y X F2500 (Home X axis maximum, go until reaching the end stop.)
G92 Z144.4 ( Set Bed Height MAX )
G92 X-75 Y-75 (set zero for X and Y)
(**** end homing ****)
M108 R8.0 (Extruder speed = max)
M6 T0 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)
G1 Z10 F500 (Bring bed up)
M101 (Turn on Extruder)
G04 P8000 (Wait for 8 seconds for flow)
(**** end of start.gcode ****)