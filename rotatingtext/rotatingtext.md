# " ROTATING TEXT "

-   Display a text stored in the **program memory**
-   The text should be **longer than 7 characters**
-   The text will be **rotating** from the left to the right
-   At the beginning, the display will be empty. Then the text will "arrive" (i.e., it won’t be displayed at once). At the end, the display will be empty again. This will be run repeatedly
-   The display size should be **customizable** (adjustable by a parameter), from 4 to 7 characters. This parameter should also be stored in the program memory
-   The program must be able to display any string of any (reasonable) size. The string will be **zero-terminated**

Here is an example of a text and display length definition:

    .cseg               ; data memory
    .org 0x100          ; starting from address 0x100

    my_text1:   .db "I want some points from this assignment", 0    ; zero-terminated string
    disp_len:   .db 5                                               ; the display length is 5

-   Since the text should be rotating, some **movement** in time is involved. The AVR CPU is clocked at **2 MHz**. You will need to use **waiting loops**
-   You will need to compute the length of the waiting loop, so that the movement will be visible. Assume that one AVR instruction takes one clock cycle
-   The waiting loop should be implemented as a **subroutine**. Hint: the call of the waiting loop could be **commented out** for debugging purposes.
