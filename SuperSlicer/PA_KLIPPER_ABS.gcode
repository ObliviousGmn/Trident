; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Voron
; Filament: Polyterra Black
; Created: Wed Dec 29 2021 20:48:47 GMT-0500 (Eastern Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 215 °C
; Bed Temperature = 60 °C
; Retraction Distance = 0.5 mm
; Layer Height = 0.25 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 300 mm
; Bed Size Y = 300 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 300 mm/min
; Fast Printing Speed = 7200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 5000 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.1
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 88 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = false
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 0 s
;
; prepare printing
;
PRINT_START EXTRUDER_TEMP=250 BED_TEMP=100
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
T0 ; Switch to tool 0
G1 Z5 F100 ; Z raise
M204 S5000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0 ; Fan Speed
G1 X150 Y150 F7200 ; move to start
G1 Z0.25 F300 ; Move to layer height
;
; print anchor frame
;
G1 X106 Y84.5 F7200 ; move to start
G1 X106 Y190.5 E5.8172 F300 ; print line
G1 X106.48 Y190.5 F7200 ; move to start
G1 X106.48 Y84.5 E5.8172 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X186 Y84.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X186 Y190.5 E5.8172 F300 ; print line
G1 X185.52 Y190.5 F7200 ; move to start
G1 X185.52 Y84.5 E5.8172 F300 ; print line
G1 E-0.5 F1800 ; retract
;
; start the Test pattern
;
G1 X106 Y87.5 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y87.5 E0.9978 F300 ; print line
G1 X166 Y87.5 E1.9956 F7200 ; print line
G1 X186 Y87.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y92.5 F7200 ; move to start
M900 K0.005 ; set K-factor
M117 K0.005 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y92.5 E0.9978 F300 ; print line
G1 X166 Y92.5 E1.9956 F7200 ; print line
G1 X186 Y92.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y97.5 F7200 ; move to start
M900 K0.01 ; set K-factor
M117 K0.01 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y97.5 E0.9978 F300 ; print line
G1 X166 Y97.5 E1.9956 F7200 ; print line
G1 X186 Y97.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y102.5 F7200 ; move to start
M900 K0.015 ; set K-factor
M117 K0.015 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y102.5 E0.9978 F300 ; print line
G1 X166 Y102.5 E1.9956 F7200 ; print line
G1 X186 Y102.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y107.5 F7200 ; move to start
M900 K0.02 ; set K-factor
M117 K0.02 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y107.5 E0.9978 F300 ; print line
G1 X166 Y107.5 E1.9956 F7200 ; print line
G1 X186 Y107.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y112.5 F7200 ; move to start
M900 K0.025 ; set K-factor
M117 K0.025 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y112.5 E0.9978 F300 ; print line
G1 X166 Y112.5 E1.9956 F7200 ; print line
G1 X186 Y112.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y117.5 F7200 ; move to start
M900 K0.03 ; set K-factor
M117 K0.03 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y117.5 E0.9978 F300 ; print line
G1 X166 Y117.5 E1.9956 F7200 ; print line
G1 X186 Y117.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y122.5 F7200 ; move to start
M900 K0.035 ; set K-factor
M117 K0.035 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y122.5 E0.9978 F300 ; print line
G1 X166 Y122.5 E1.9956 F7200 ; print line
G1 X186 Y122.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y127.5 F7200 ; move to start
M900 K0.04 ; set K-factor
M117 K0.04 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y127.5 E0.9978 F300 ; print line
G1 X166 Y127.5 E1.9956 F7200 ; print line
G1 X186 Y127.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y132.5 F7200 ; move to start
M900 K0.045 ; set K-factor
M117 K0.045 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y132.5 E0.9978 F300 ; print line
G1 X166 Y132.5 E1.9956 F7200 ; print line
G1 X186 Y132.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y137.5 F7200 ; move to start
M900 K0.05 ; set K-factor
M117 K0.05 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y137.5 E0.9978 F300 ; print line
G1 X166 Y137.5 E1.9956 F7200 ; print line
G1 X186 Y137.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y142.5 F7200 ; move to start
M900 K0.055 ; set K-factor
M117 K0.055 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y142.5 E0.9978 F300 ; print line
G1 X166 Y142.5 E1.9956 F7200 ; print line
G1 X186 Y142.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y147.5 F7200 ; move to start
M900 K0.06 ; set K-factor
M117 K0.06 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y147.5 E0.9978 F300 ; print line
G1 X166 Y147.5 E1.9956 F7200 ; print line
G1 X186 Y147.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y152.5 F7200 ; move to start
M900 K0.065 ; set K-factor
M117 K0.065 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y152.5 E0.9978 F300 ; print line
G1 X166 Y152.5 E1.9956 F7200 ; print line
G1 X186 Y152.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y157.5 F7200 ; move to start
M900 K0.07 ; set K-factor
M117 K0.07 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y157.5 E0.9978 F300 ; print line
G1 X166 Y157.5 E1.9956 F7200 ; print line
G1 X186 Y157.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y162.5 F7200 ; move to start
M900 K0.075 ; set K-factor
M117 K0.075 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y162.5 E0.9978 F300 ; print line
G1 X166 Y162.5 E1.9956 F7200 ; print line
G1 X186 Y162.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y167.5 F7200 ; move to start
M900 K0.08 ; set K-factor
M117 K0.08 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y167.5 E0.9978 F300 ; print line
G1 X166 Y167.5 E1.9956 F7200 ; print line
G1 X186 Y167.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y172.5 F7200 ; move to start
M900 K0.085 ; set K-factor
M117 K0.085 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y172.5 E0.9978 F300 ; print line
G1 X166 Y172.5 E1.9956 F7200 ; print line
G1 X186 Y172.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y177.5 F7200 ; move to start
M900 K0.09 ; set K-factor
M117 K0.09 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y177.5 E0.9978 F300 ; print line
G1 X166 Y177.5 E1.9956 F7200 ; print line
G1 X186 Y177.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y182.5 F7200 ; move to start
M900 K0.095 ; set K-factor
M117 K0.095 ; 
G1 E0.5 F1800 ; un-retract
G1 X126 Y182.5 E0.9978 F300 ; print line
G1 X166 Y182.5 E1.9956 F7200 ; print line
G1 X186 Y182.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X106 Y187.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X126 Y192.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X126 Y212.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 X166 Y192.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X166 Y212.5 E0.9978 F300 ; print line
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
;
; print K-values
;
G1 X188 Y85.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y85.5 E0.0998 F300 ; 0
G1 X190 Y87.5 E0.0998 F300 ; 0
G1 X190 Y89.5 E0.0998 F300 ; 0
G1 X188 Y89.5 E0.0998 F300 ; 0
G1 X188 Y87.5 E0.0998 F300 ; 0
G1 X188 Y85.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y95.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y95.5 E0.0998 F300 ; 0
G1 X190 Y97.5 E0.0998 F300 ; 0
G1 X190 Y99.5 E0.0998 F300 ; 0
G1 X188 Y99.5 E0.0998 F300 ; 0
G1 X188 Y97.5 E0.0998 F300 ; 0
G1 X188 Y95.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y95.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y95.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y95.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y95.5 E0.0998 F300 ; 0
G1 X194 Y97.5 E0.0998 F300 ; 0
G1 X194 Y99.5 E0.0998 F300 ; 0
G1 X192 Y99.5 E0.0998 F300 ; 0
G1 X192 Y97.5 E0.0998 F300 ; 0
G1 X192 Y95.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y95.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X195 Y97.5 E0.0998 F300 ; 1
G1 X195 Y99.5 E0.0998 F300 ; 1
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y105.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y105.5 E0.0998 F300 ; 0
G1 X190 Y107.5 E0.0998 F300 ; 0
G1 X190 Y109.5 E0.0998 F300 ; 0
G1 X188 Y109.5 E0.0998 F300 ; 0
G1 X188 Y107.5 E0.0998 F300 ; 0
G1 X188 Y105.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y105.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y105.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y105.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y105.5 E0.0998 F300 ; 0
G1 X194 Y107.5 E0.0998 F300 ; 0
G1 X194 Y109.5 E0.0998 F300 ; 0
G1 X192 Y109.5 E0.0998 F300 ; 0
G1 X192 Y107.5 E0.0998 F300 ; 0
G1 X192 Y105.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y105.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X195 Y107.5 F7200 ; move to start
G1 X195 Y109.5 F7200 ; move to start
G1 X197 Y109.5 E0.0998 F300 ; 2
G1 X197 Y107.5 E0.0998 F300 ; 2
G1 X195 Y107.5 E0.0998 F300 ; 2
G1 X195 Y105.5 E0.0998 F300 ; 2
G1 X197 Y105.5 E0.0998 F300 ; 2
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y115.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y115.5 E0.0998 F300 ; 0
G1 X190 Y117.5 E0.0998 F300 ; 0
G1 X190 Y119.5 E0.0998 F300 ; 0
G1 X188 Y119.5 E0.0998 F300 ; 0
G1 X188 Y117.5 E0.0998 F300 ; 0
G1 X188 Y115.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y115.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y115.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y115.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y115.5 E0.0998 F300 ; 0
G1 X194 Y117.5 E0.0998 F300 ; 0
G1 X194 Y119.5 E0.0998 F300 ; 0
G1 X192 Y119.5 E0.0998 F300 ; 0
G1 X192 Y117.5 E0.0998 F300 ; 0
G1 X192 Y115.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y115.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X195 Y117.5 F7200 ; move to start
G1 X195 Y119.5 F7200 ; move to start
G1 X197 Y119.5 E0.0998 F300 ; 3
G1 X197 Y117.5 E0.0998 F300 ; 3
G1 X197 Y115.5 E0.0998 F300 ; 3
G1 X195 Y115.5 E0.0998 F300 ; 3
G1 X195 Y117.5 F7200 ; move to start
G1 X197 Y117.5 E0.0998 F300 ; 3
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y125.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y125.5 E0.0998 F300 ; 0
G1 X190 Y127.5 E0.0998 F300 ; 0
G1 X190 Y129.5 E0.0998 F300 ; 0
G1 X188 Y129.5 E0.0998 F300 ; 0
G1 X188 Y127.5 E0.0998 F300 ; 0
G1 X188 Y125.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y125.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y125.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y125.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y125.5 E0.0998 F300 ; 0
G1 X194 Y127.5 E0.0998 F300 ; 0
G1 X194 Y129.5 E0.0998 F300 ; 0
G1 X192 Y129.5 E0.0998 F300 ; 0
G1 X192 Y127.5 E0.0998 F300 ; 0
G1 X192 Y125.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y125.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X195 Y127.5 F7200 ; move to start
G1 X195 Y129.5 F7200 ; move to start
G1 X195 Y127.5 E0.0998 F300 ; 4
G1 X197 Y127.5 E0.0998 F300 ; 4
G1 X197 Y129.5 F7200 ; move to start
G1 X197 Y127.5 E0.0998 F300 ; 4
G1 X197 Y125.5 E0.0998 F300 ; 4
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y135.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y135.5 E0.0998 F300 ; 0
G1 X190 Y137.5 E0.0998 F300 ; 0
G1 X190 Y139.5 E0.0998 F300 ; 0
G1 X188 Y139.5 E0.0998 F300 ; 0
G1 X188 Y137.5 E0.0998 F300 ; 0
G1 X188 Y135.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y135.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y135.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y135.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y135.5 E0.0998 F300 ; 0
G1 X194 Y137.5 E0.0998 F300 ; 0
G1 X194 Y139.5 E0.0998 F300 ; 0
G1 X192 Y139.5 E0.0998 F300 ; 0
G1 X192 Y137.5 E0.0998 F300 ; 0
G1 X192 Y135.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y135.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X197 Y135.5 E0.0998 F300 ; 5
G1 X197 Y137.5 E0.0998 F300 ; 5
G1 X195 Y137.5 E0.0998 F300 ; 5
G1 X195 Y139.5 E0.0998 F300 ; 5
G1 X197 Y139.5 E0.0998 F300 ; 5
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y145.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y145.5 E0.0998 F300 ; 0
G1 X190 Y147.5 E0.0998 F300 ; 0
G1 X190 Y149.5 E0.0998 F300 ; 0
G1 X188 Y149.5 E0.0998 F300 ; 0
G1 X188 Y147.5 E0.0998 F300 ; 0
G1 X188 Y145.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y145.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y145.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y145.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y145.5 E0.0998 F300 ; 0
G1 X194 Y147.5 E0.0998 F300 ; 0
G1 X194 Y149.5 E0.0998 F300 ; 0
G1 X192 Y149.5 E0.0998 F300 ; 0
G1 X192 Y147.5 E0.0998 F300 ; 0
G1 X192 Y145.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y145.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X195 Y147.5 F7200 ; move to start
G1 X197 Y147.5 E0.0998 F300 ; 6
G1 X197 Y145.5 E0.0998 F300 ; 6
G1 X195 Y145.5 E0.0998 F300 ; 6
G1 X195 Y147.5 E0.0998 F300 ; 6
G1 X195 Y149.5 E0.0998 F300 ; 6
G1 X197 Y149.5 E0.0998 F300 ; 6
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y155.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y155.5 E0.0998 F300 ; 0
G1 X190 Y157.5 E0.0998 F300 ; 0
G1 X190 Y159.5 E0.0998 F300 ; 0
G1 X188 Y159.5 E0.0998 F300 ; 0
G1 X188 Y157.5 E0.0998 F300 ; 0
G1 X188 Y155.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y155.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y155.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y155.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y155.5 E0.0998 F300 ; 0
G1 X194 Y157.5 E0.0998 F300 ; 0
G1 X194 Y159.5 E0.0998 F300 ; 0
G1 X192 Y159.5 E0.0998 F300 ; 0
G1 X192 Y157.5 E0.0998 F300 ; 0
G1 X192 Y155.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y155.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X195 Y157.5 F7200 ; move to start
G1 X195 Y159.5 F7200 ; move to start
G1 X197 Y159.5 E0.0998 F300 ; 7
G1 X197 Y157.5 E0.0998 F300 ; 7
G1 X197 Y155.5 E0.0998 F300 ; 7
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y165.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y165.5 E0.0998 F300 ; 0
G1 X190 Y167.5 E0.0998 F300 ; 0
G1 X190 Y169.5 E0.0998 F300 ; 0
G1 X188 Y169.5 E0.0998 F300 ; 0
G1 X188 Y167.5 E0.0998 F300 ; 0
G1 X188 Y165.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y165.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y165.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y165.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y165.5 E0.0998 F300 ; 0
G1 X194 Y167.5 E0.0998 F300 ; 0
G1 X194 Y169.5 E0.0998 F300 ; 0
G1 X192 Y169.5 E0.0998 F300 ; 0
G1 X192 Y167.5 E0.0998 F300 ; 0
G1 X192 Y165.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y165.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X195 Y167.5 F7200 ; move to start
G1 X197 Y167.5 E0.0998 F300 ; 8
G1 X197 Y165.5 E0.0998 F300 ; 8
G1 X195 Y165.5 E0.0998 F300 ; 8
G1 X195 Y167.5 E0.0998 F300 ; 8
G1 X195 Y169.5 E0.0998 F300 ; 8
G1 X197 Y169.5 E0.0998 F300 ; 8
G1 X197 Y167.5 E0.0998 F300 ; 8
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
G1 X188 Y175.5 F7200 ; move to start
G1 Z0.25 F300 ; zHop
G1 E0.5 F1800 ; un-retract
G1 X190 Y175.5 E0.0998 F300 ; 0
G1 X190 Y177.5 E0.0998 F300 ; 0
G1 X190 Y179.5 E0.0998 F300 ; 0
G1 X188 Y179.5 E0.0998 F300 ; 0
G1 X188 Y177.5 E0.0998 F300 ; 0
G1 X188 Y175.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X191 Y175.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X191 Y175.9 E0.02 F300 ; dot
G1 E-0.5 F1800 ; retract
G1 X192 Y175.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X194 Y175.5 E0.0998 F300 ; 0
G1 X194 Y177.5 E0.0998 F300 ; 0
G1 X194 Y179.5 E0.0998 F300 ; 0
G1 X192 Y179.5 E0.0998 F300 ; 0
G1 X192 Y177.5 E0.0998 F300 ; 0
G1 X192 Y175.5 E0.0998 F300 ; 0
G1 E-0.5 F1800 ; retract
G1 X195 Y175.5 F7200 ; move to start
G1 E0.5 F1800 ; un-retract
G1 X197 Y175.5 E0.0998 F300 ; 9
G1 X197 Y177.5 E0.0998 F300 ; 9
G1 X195 Y177.5 E0.0998 F300 ; 9
G1 X195 Y179.5 E0.0998 F300 ; 9
G1 X197 Y179.5 E0.0998 F300 ; 9
G1 X197 Y177.5 E0.0998 F300 ; 9
G1 E-0.5 F1800 ; retract
G1 Z0.35 F300 ; zHop
;
; FINISH
;
PRINT_END
;