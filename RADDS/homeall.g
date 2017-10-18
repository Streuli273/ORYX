G91						; relative mode
G1 S1 X-350 Y350 F5000	; coarse home X or Y
G1 S1 X-350				; coarse home X
G1 S1 Y350				; coarse home Y
G1 X5 Y-5 F600			; move away from the endstops
G1 S1 X-10				; fine home X
G1 S1 Y10				; fine home Y

G1 Z5 F200
G90
G1 X150 Y100 F3000		; to centre of bed	
G91

G1 S1 Z-350 F500			; coarse home Z
G1 Z5 F500				; move away from the endstop
G1 S1 Z-20 F100				; fine home Z
G1 Z10 F500

G90

G1 X150 Y100 Z10 F3000