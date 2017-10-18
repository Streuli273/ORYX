; CoreXY Config For John. WStreuli 2017-08-03

;M111 S0				; Debug off


M550 JohnXY				; name

M569 P0 S1 R1 			; X axis has inverted enable signal
M569 P1 S1 R1			; Y axis has inverted enable signal
M569 P2 S0 R1			; Z axis has inverted enable signal
M569 P4 S1 R0			; E axis has inverted enable signal

M574 X1 Y2 Z1 S1		; endstops, x,z min, y max, nc


M667 S1					; switch to CoreXY mode

M92 X640 Y640 Z3200		; xyz steps per mm
M92 E344.5 				; extruder steps per mm
; M92 E1378   ; <-- FOR RAPS128

M201 X800 Y800 Z15 E1000	; max acceleration
M203 X25000 Y25000 Z1000 E4000	; max feedrates

M208 X280 Y200 Z150		; build size

G21						; mm on
G90						; xyz relative postitionong
M83						; extruder relative postitionong

M305 P0 T100000 B3900 R4700	; bed thermistor http://www.reprap.me/thermistor-smd-1206.html
M305 P1 T100000 B4267 R4700	; hotend thermistor
M570 S120					; allow 120s heating time before error

M563 P0 D1 H1			; tool 0, stepper 0, heater 1
G10 P0 S0 R0			; set tool 0 operating (s) and standby (r) temps

M106 P0 T60 H1;			; hotend and electronics fan, on when hotend 60c
; M106 P1;				; part cooling fan
; IF ABOVE NO WORK
M106 P1 H-1    			; Filament cooling fan: Must do H-1, or it'll turn on with P0 for some reason.
M106 P1 S0     			; Filament cooling fan: Must do, or it will go full blast on start :S


M207 S4.0 F2400 Z0.075	; retraction settings, 4mm, 0.075 z hop

T0						; select tool 0, hotend

M404 N1.75 D0.4			; set filament width and nozzle diameter

M83

