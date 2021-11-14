-   Logged in user [samymbas](https://courses.fit.cvut.cz/BIE-SAP/labs/11/index.html#)
    -   Log out
-   Log in

[FIT CTU Course Pages](https://courses.fit.cvut.cz/)

BIE-SAP — Computer Structures and Architectures

-   [](https://courses.fit.cvut.cz/BIE-SAP/labs/11/index.html#)
     Past semesters
    -   [B101](https://courses.fit.cvut.cz/BIE-SAP/@B101/)
    -   [B102](https://courses.fit.cvut.cz/BIE-SAP/@B102/)
    -   [B112](https://courses.fit.cvut.cz/BIE-SAP/@B112/)
    -   [B121](https://courses.fit.cvut.cz/BIE-SAP/@B121/)
    -   [B122](https://courses.fit.cvut.cz/BIE-SAP/@B122/)
    -   [B131](https://courses.fit.cvut.cz/BIE-SAP/@B131/)
    -   [B132](https://courses.fit.cvut.cz/BIE-SAP/@B132/)
    -   [B141](https://courses.fit.cvut.cz/BIE-SAP/@B141/)
    -   [B142](https://courses.fit.cvut.cz/BIE-SAP/@B142/)
    -   [B152](https://courses.fit.cvut.cz/BIE-SAP/@B152/)
    -   [B162](https://courses.fit.cvut.cz/BIE-SAP/@B162/)
    -   [B172](https://courses.fit.cvut.cz/BIE-SAP/@B172/)
    -   [B182](https://courses.fit.cvut.cz/BIE-SAP/@B182/)
    -   [B192](https://courses.fit.cvut.cz/BIE-SAP/@B192/)
    -   [master](https://courses.fit.cvut.cz/BIE-SAP/)
    -   [B202](https://courses.fit.cvut.cz/BIE-SAP/@B202/)
-   [](https://gitlab.fit.cvut.cz/BI-SAP/bie-sap/blob/master/labs/11/index.adoc)
     View on GitLab
-   [](https://gitlab.fit.cvut.cz/BI-SAP/bie-sap/issues/new?issue[title]=labs/11/index.adoc:%20)
     Report issue

[Go to course navigation](https://courses.fit.cvut.cz/BIE-SAP/labs/11/index.html#nav)

11th Lab: The Final Assignment - Homework
=========================================

[](https://courses.fit.cvut.cz/BIE-SAP/labs/11/index.html#_assignment)Assignment
--------------------------------------------------------------------------------

Implement the **countdown clock** in AVR.

After the device start/reset, the user pre-sets the time and then runs the countdown. The countdown will terminate in time 0 and the finish will be indicated by some text.

Detailed instructions:

-   The time will be displayed on LCD, in minutes and seconds (MM:SS). Alternatively, tenths (hundredths) of seconds can be shown too.
-   The initial time will be pre-set using a joystick. The minutes will be set first, then, after confirmation, the seconds will be set.
    -   joystick up/down: numbers selection,
    -   joystick pressed: confirmation
-   After the confirmation, the countdown will be initiated.
-   The remaining time will be displayed during the countdown.
-   After the coundown finishes, some text will appear on the display.
-   After pressing a joystick, a new countdown will be run.

Some more details and hints:

-   The numbers will be in decimal (not hex). Thus, you will need to implement routines converting a number to a decimal radix. Or to count in decimal
-   See [Joystick](https://courses.fit.cvut.cz/BIE-SAP/labs/11/joystick.html) for details on the joystick operation
-   The **quartz oscillator and interrupts** should be used to control the timing. For details see [Interrupt Principles](https://courses.fit.cvut.cz/BIE-SAP/labs/11/interrupts.html)

[](https://courses.fit.cvut.cz/BIE-SAP/labs/11/index.html#_evaluation)Evaluation
--------------------------------------------------------------------------------

**4 points** for successfully accomplishing the task.

[](https://courses.fit.cvut.cz/BIE-SAP/labs/11/index.html#_on-line-submission)On-line submission
------------------------------------------------------------------------------------------------

**"Personal" on-line submission is preferred**. Thus, you will show your solution to one of your lecturers by sharing your screen in a personal chat (in Teams). Also, it is preferred to submit all tasks together.

You will be asked to show:

-   the code (including waiting loops)
-   the simulation. Waiting loops should be commented out

Then, it is compulsory to submit the solution of this assignment on-line here: [https://ddd.fit.cvut.cz/odevzdavac/](https://ddd.fit.cvut.cz/odevzdavac/). Submitting all assignments in one zip file is preferred.

The solution **must** contain:

-   The **complete AVR Studio project**
-   The code (asm) must be appropriately **commented**. The **principles** of the implemented algorithm must be clear from the comments.

###### Warning:

Do not submit the project, unless you will be told to by your lecturer. Because "personal" on-line submission is preferred, **followed by** the submission of the project.

You’re browsing the **...** version.
 [Go to the latest version.](https://courses.fit.cvut.cz/BIE-SAP/)

Course navigation
=================

-   [](https://courses.fit.cvut.cz/BIE-SAP/index.html)
    BIE-SAP
-   [](https://courses.fit.cvut.cz/BIE-SAP/classification/index.html)
    Classification
-   [](https://courses.fit.cvut.cz/BIE-SAP/labs/index.html)
    Laboratories
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/01/index.html)
        1st Lab: Vivado Design System, Logic Gates, Adder
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/01/adder.html)
            4-bit adder
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/01/bd-script.html)
            Acceleration of the first phase of schematic synthesis
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/01/gates.html)
            Logic gates
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/02/index.html)
        2nd Lab: Combinational Logic Function
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/02/table.html)
            a) Implementation by a truth table
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/02/algebra.html)
            b) Implementation by an algebraic expression
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/02/schema.html)
            c) Implementation by a schematic
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/03/index.html)
        3rd Lab: Combinational circuits implementation
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/04/index.html)
        4th Lab: Sequential circuits design
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/04/fsmmoore.html)
            Sample solution of the M3 counter in Gray code - Moore type
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/05/index.html)
        5th Lab: Design, implementation, and simulation of a synchronous circuit built from blocks
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/06/index.html)
        6th Lab: Final Assignment with FPGA
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/06/code_lock/index.html)
            Code lock
            -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/06/code_lock/l6_code_lock_test.vhd)
                L6 code lock test
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/07/index.html)
        7th Lab: Getting Acquainted with AVR
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/07/the-avr-processor.html)
            The AVR Microprocessor
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/07/avr-studio.html)
            The AVR Studio
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/07/using-the-display.html)
            Using the Display and Programming the Design Kit
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/08/index.html)
        8th Lab: Arithmetics, Program Flow Control
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/08/AVR_basics.html)
            Basic AVR Assembler Directives and Instructions
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/09/index.html)
        9th Lab: Working with Memory, Subroutines
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/10/index.html)
        10th Lab: Working with Memory, Subroutines
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/11/index.html)
        11th Lab: The Final Assignment - Homework
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/11/interrupts.html)
            Interrupts, Working with the Timer (Quartz Oscillator)
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/11/joystick.html)
            Joystick
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/12/index.html)
        12th Lab: Finishing the Assignments, Assessment
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/home.html)
        Accessing your HOME directory
    -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/index.html)
        Basys3 design kit and Xilinx Vivado 2018 Manuals and Tutorials
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/vivadomanual.html)
            Brief guidelines to Xilinx Vivado 2018
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/simulation.html)
            Circuit simulation
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/createipcore.html)
            Creating your own IP core (IP block)
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/commonblocks.html)
            Description of lib\_SAP blocks and some selected blocks from Vivado
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/basys3.html)
            Description of the Basys3 design kit
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/bd-script.html)
            Speeding up the synthesis
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/templates.html)
            VHDL templates for download
        -   [](https://courses.fit.cvut.cz/BIE-SAP/labs/common/vivadoinstall.html)
            Xilinx Vivado 2018 and the lib\_SAP library installation
-   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/index.html)
    Lectures
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/01/index.html)
        1-st lecture: Introduction
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/02/index.html)
        2-nd lecture: Combinational logical circuits
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/03/index.html)
        3-rd lecture: Sequential logic circuits
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/04/index.html)
        4-th lecture: Computer inside circuits
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/05/index.html)
        5-th lecture: Signed and unsigned numbers in fixed-point representation
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/06/index.html)
        6-th lecture: Machine code &amp; assembler
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/07/index.html)
        7-th lecture: Floating-point representation
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/08/index.html)
        8-th lecture: Processor data path
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/09/index.html)
        9-th lecture: Types of memories
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/10/index.html)
        10-th lecture: Busses and interrupts
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/11/index.html)
        11-th lecture: Cache memory, virtual memory system
    -   [](https://courses.fit.cvut.cz/BIE-SAP/lectures/12/index.html)
        12-th lecture: Processor control unit
-   [](https://courses.fit.cvut.cz/BIE-SAP/literature/index.html)
    Literature
-   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/index.html)
    Seminars
    -   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/01/index.html)
        1-st seminar : Combinational circuits
    -   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/02/index.html)
        2-nd seminar : Sequential circuit design
    -   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/03/index.html)
        3-rd seminar : Arithmetic operations in fixed - point representation
    -   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/04/index.html)
        4-th seminar : Assembler of the ATmega129 processor
    -   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/05/index.html)
        5-th seminar : Arithmetic operations in floating point representation
    -   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/06/index.html)
        6-th seminar : Computer memory system
        -   [](https://courses.fit.cvut.cz/BIE-SAP/seminars/06/tutorial-6-cache)
            Tutorial 6 cache
-   [](https://courses.fit.cvut.cz/BIE-SAP/annotation/index.html)
    Short annotation
-   [](https://courses.fit.cvut.cz/BIE-SAP/teacher/index.html)
    Teachers
-   [](https://courses.fit.cvut.cz/BIE-SAP/seminars.html)
    Tutorials:

11th Lab: The Final Assignment - Homework
 [labs/11/index.adoc](https://gitlab.fit.cvut.cz/BI-SAP/bie-sap/blob/master/labs/11/index.adoc), [last change 015d397e (2021-04-28 at 2:34, doc. Ing. Petr Fišer, Ph.D)](https://gitlab.fit.cvut.cz/BI-SAP/bie-sap/commit/015d397eacee5a8b9069b9af400757c774ef0cd7 "Update labs/11/index.adoc")

Generated with [**FIT CTU Course Pages**](https://gitlab.fit.cvut.cz/course-pages/course-pages/) v0.8.0
 Page generated at 2021-05-20 at 2:07

[![Build status](./stopwatch_files/pipeline.svg)](https://gitlab.fit.cvut.cz/BI-SAP/bie-sap/pipelines)
