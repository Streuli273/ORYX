; X axis homing file for dc42 Duet firmware
G90
G1 X100 Y100 F3000	; to centre of bed	
G91					; relative mode

G1 S1 Z-350 F500		; to z end
G1 Z5 F500			; move back up
G1 S1 Z-20 F100			; back in
G1 Z10 F500			; back up
G90					; absolute mode