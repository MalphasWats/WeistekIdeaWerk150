; Levelling Program
; Generated by Mike Watts on 2016-01-09
; http://www.subdimension.co.uk


M127

G21 (Metric FTW)
G90 (Absolute Positioning)
M18 (Turn off steppers)
G92 X0 Y0 Z0 A0 B0 (Declare the current position to be 0,0,0,0,0)

G161 Y X F2500
G92 X0 Y0 Z0 A0 B0

G1 X5.0 Y5.0 Z-5.0 F450

G162 Z F450 
G161 Y X F2500 (Home X axis maximum, go until reaching the end stop.)
G92 Z144.0 ( Set Bed Height Here )
G92 X-75 Y-75 (set zero for X and Y)

G1 X0 Y0 Z0.300 F500

G04 P2000 (Dwell for 2 Seconds)

G1 X20 Y-20     (FR)

G04 P20000 (Dwell for 20 Seconds)

G1 X-20 Y-20    (FL)

G04 P20000 (Dwell for 20 Seconds)

G1 X-20 Y20     (BL)

G04 P20000 (Dwell for 20 Seconds)

G1 X20 Y20      (BR)

G04 P20000 (Dwell for 20 Seconds)

G1 X20 Y-20     (FR)

G04 P20000 (Dwell for 20 Seconds)

G1 X0 Y0        (C)

G04 P2000 (Dwell for 2 Seconds)

; Finish Program

G92 Z0.0 
G1 Z1.0 F145 
G1 X0.0 F3300.0       
G1 X0.0 Y75.0 F3300.0 
G1 Z144 F450.0

M18 (Turn off steppers)

