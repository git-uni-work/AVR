.include "m169def.inc"	

.cseg
.org	0
jmp start

.org 0x100						
string: .db ",YEEZY YEEZY", 0	

.org 0x1000
.include "print.inc"

	
start:
	ldi r16, 0xFF		
	out SPL, r16
	ldi r16, 0x04
	out SPH, r16
	
	call init_disp		

	ldi	r30, low(2*string)	; Load string address into R31:R30 (Z)
	ldi	r31, high(2*string)	
	movw r28, r30          ; load address into R28:R29 (Y)
	movw r26, r30			; load address into R26:R27 (X) -- this will keep the start of the string between resets

reset:
	movw r30, r26 		;load address of beginning of string into Z
	movw r28, r26		;load address of beggining of string into Y
	ldi r17, 7	; reset position register
	ldi r18, 7	; reset position of first letter on display
	ldi r19, 8	; reset position of last letter on display
	jmp print

load:
	jmp delay

print:
	lpm r16, Z+	;load character pointed to by Z; increment Z
	cpi r16, 0	; if r16 is 0 (terminating byte)...
	breq shrink   ; jump to shrink
	        
shrink_back:
	call show_char ;display the character
	inc r17 ; increment to next position
	cp r17, r19 ; if position is above the last possible position
	brge load   ; jump to load

back:
	jmp print

shrink:
	cpi r19, 1 ; check if last position is 1
	breq shrink_back 
	dec r19 ; decrement r19
	jmp shrink_back

extend:
	cp r18, r19 ; if the lowest position and highest position is the same, we read the entire string
	breq reset; jump to reset
	jmp setz 

setz:
	cpi r18, 1 ;if lowest position is not 1
	brne same ; jump to same
	ld r20, Y+	
	movw r30, r28 ; load position of the first letter that's going to be printed to Z
	jmp set17

same:
	dec r18 ; decrement lowest position
	movw r30, r26	;load beginning of the word into Z
	jmp set17

set17:
	mov r17, r18 ; reset r17 to lowest position
	jmp print

delay: ; loop 2 * 255 * 255 times
	ldi r22, 2

wait2:
	ldi r21, 255

wait3:
	ldi r20, 255

wait:
	dec r20
	brne wait   
	dec r21
	brne wait3
	dec r22
	brne wait2
	jmp extend ; write again
