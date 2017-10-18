; X axis homing file for dc42 Duet firmware
G91					; relative mode
G1 Z5 F200			; up a bit
G1 S1 X-350 F5000	; to x end
G1 X5 F600			; move back out
G1 S1 X-10			; back in
G1 Z-5 F200			; back down
G90					; absolute mode