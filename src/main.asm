.include "m8def.inc"

.cseg
.org 0

ldi R16, 0b00000110
ldi R17, 0b00111001
out DDRB, R16
out PORTB, R17

ldi R16, 0b00000111
ldi R17, 0b00110001
out DDRC, R16
out PORTC, R17

ldi R16, 0b00000000
ldi R17, 0b11111111
out DDRD, R16
out PORTD, R17

rjmp (PC)

