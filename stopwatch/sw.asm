.include "m169def.inc" 
.org 0x1000
.include "print.inc" 

.dseg 
s: .byte 1 
ms: .byte 1 
milli: .byte 1
secs: .byte 1
mins: .byte 1

.cseg 
.org 0 
jmp setup 

.org 0x000A 
jmp inthandlr 

.org 0x100 



; === SETUP === 
setup:

cli 
ldi r16,0xFF 
out SPL,r16
ldi r16,0x04
out SPH,r16

ldi r16,8
sts ASSR,r16 
ldi r16,1
sts TIMSK2,r16 
ldi r16, 1
sts TCCR2A , r16 
clr r16 
out EIMSK, r16 

in r17,DDRE
andi r17,0b11110011
in r16,PORTE
ori r16,0b00001100
out DDRE,r17
out PORTE,r16
ldi r16,0b00000000
sts DIDR1,r16
in r17,DDRB
andi r17,0b00101111
in r16,PORTB
ori r16,0b11010000
out DDRB,r17
out PORTB,r16

call init_disp 


; === RESET === 
reset:
ldi r20,0 
ldi r21,0 ; 1/10th of a second (0-9)
ldi r22,0 ; 2nd digit of seconds (0-9)
ldi r23,0 ; 1st digit of seconds (0-6)
ldi r24,0 ; 2nd digit of minutes (0-9)
ldi r25,0 ; 1st digit of minutes (0-6)
sts s,r25 
sts ms,r25
sts milli,r25
sts secs,r25
sts mins,r25
ldi r16, '0'
ldi r17, 2
call show_char
ldi r17, 3
call show_char
ldi r17, 4
call show_char
ldi r17, 5
call show_char
ldi r17, 6
call show_char


; === JOYSTICK === 
joystick:
in r18,PINB
in r19,PINE
andi r18,0xD0 
andi r19,0x0C
or r18,r19 
ldi r19,255 
loop:
dec r19
brne loop
in r16,PINB 
in r19,PINE
andi r16,0xD0 
andi r19,0x0C
or r16,r19 
cpse r18,r16 
jmp joystick 

sbrs r18,2 
jmp reset 

sbrs r18,3 
sei



; ===INTERRUPT HANDLER===
inthandlr:

push r16 
push r17
push r18
push r19
push r20
push r21
push r22
push r23
push r24
push r25
in r16, SREG
push r16


; === MILLI-SECs === 
millisec:
lds r16,ms 
inc r16
sts ms,r16

lds r16,ms 
cpi r16,13 
brlo secsmins 

sts ms,r20 
inc r21 
cpi r21,10 
brlt secsmins
ldi r21,0 




; === SECs/MINs === 
secsmins:
lds r16,s  
inc r16 
sts s,r16 
 
cpi r16,128 
brlo display

ldi r17,0 
sts s, r17 
sts ms,r17 
inc r22 
cpi r22,10 
brlt main 

subi r22,10 
inc r23
cpi r23,6 
brlt main

subi r23,6 
inc r24 
cpi r24,10
brlt main 

subi r24,10 
inc r25 
cpi r25,6 
brlt main 

subi r25,6 
brlo restore

; === DISPLAY === 
display:
ldi r17,6 
mov r16,r21 
subi r16, -'0' 
call show_char 
dec r17 
call joystick2
mov r16,r22 
subi r16, -'0' 
call show_char 
dec r17 
call joystick2
mov r16,r23 
subi r16, -'0' 
call show_char 
dec r17 
call joystick2
mov r16,r24 
subi r16, -'0' 
call show_char 
dec r17 
call joystick2
mov r16,r25 
subi r16, -'0' 
call show_char 
call joystick2
jmp millisec



restore:
pop r16 
out SREG,r16 
pop r20
pop r19
pop r18
pop r17
pop r16

reti


; === MAIN === 
main:
jmp display 
jmp millisec


; === JOYSTICK2 === 
joystick2:
in r18,PINB
in r19,PINE
andi r18,0xD0 
andi r19,0x0C
or r18,r19 
ldi r30, 3 				
delay1:			
dec r30
ldi r31, 255		
delay2:			
dec r31
cpi r31, 0			
brne delay2
cpi r30, 0			
brne delay1 			
in r16,PINB 
in r19,PINE
andi r16,0xD0 
andi r19,0x0C
or r16,r19 
cpse r18,r16 
jmp joystick2 

sbrs r18,2 
jmp reset 
ret
