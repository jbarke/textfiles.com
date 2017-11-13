+=============================================================================+
!VER:2.1	       (^)+=- PEEKS, POKES & CALLS -=+(^)	 (c) May. 1984!
+=============================================================================+
!Writen by:		    \	       for the APPLE ][+ & ][e W/DOS 3.3 & 48k!
!	     -===THE=WIZARD==]>>>)}					      !
!			    /		 The World of Cryton: [414] 246-3965  !
+-----------------------------------------------------------------------------+
			       SCROLLING WINDOW

POKE 32,L......Sets LEFT SIDE of the Scrolling Window {L=0 to 39}
POKE 33,W......Sets WIDTH of the Scrolling Window {W=0 to 40-L}
POKE 34,T......Sets TOP of the Scrolling Window {T=0 to 23}
POKE 35,B......Sets BOTTOM of the Scrolling Window {B=0 to 23;B>T}

			    TEXT & CURSOR POSITION

POKE 36,CH.....Sets HORIZONTAL cursor position +1 {CH=0 to 39}
POKE 37,CV.....Sets VERTICAL cursor position +1 {CV=0 to 23}
CALL -1036.....MONITOR S/R to MOVE CURSOR RIGHT
CALL -1008.....MONITOR S/R to MOVE CURSOR LEFT
CALL -998......MONITOR S/R to MOVE CURSOR UP
CALL -990......MONITOR S/R PERFORM a VERTICAL TAB to ROW in ACCUMULATOR
CALL -980......MONITOR S/R PREFORM ESCAPE FUNCTION
CALL -958......CLEAR from CURSOR to END of PAGE {ESC-F}
CALL -936......MONITOR S/R HOME & CLEAR SCREEN {Destroys ACCUMULATOR & Y-REG}
CALL -926......MONITOR S/R PERFORM a CARRIAGE RETURN
CALL -922......MONITOR S/R PERFORM a LINE FEED
CALL -912......MONITOR S/R SCOLL UP 1 LINE {Destroys ACCUMULATOR & Y-REG}
CALL -868......MONITOR S/R CLEAR to END of LINE
CALL -868......CLEAR from CURSOR to END of LINE {ESC-E}
CALL -384......set INVERSE mode
CALL -380......set NORMAL mode

			       CHARACTER DISPLAY

POKE 50,255....White on Black {Normal}
POKE 50,63.....Black on White {Inverse}
POKE 50,127....Blinking {Flash}

				 SCREEN FORMAT
				   GRAPHICS

POKE -16304,0..Set Graphics display mode
POKE -16303,0..Set TEXT display mode
PEEK(-16358)...READ TEXT switch {If > 127 then it is "ON"}
POKE -16302,0..Set FULL-SCREEN Graphics display mode
POKE -16301,0..Set MIXED-SCREEN Graphics display mode
PEEK(-16357)...READ MIXED switch {If > 127 then it is "ON"}
POKE -16300,0..Turn page 2 HI-RES off {set page 1}
POKE -16299,0..Set display to HI-RES Graphics page 2
PEEK(-16356)...READ PAGE2 switch {If > 127 then it is "ON"}
POKE -16298,0..Turn HI-RES display mode off
POKE -16297,0..Set HI-RES Graphics display mode
PEEK(-16355)...READ HI-RES switch {If > 127 then it is "ON"}
CALL 62450.....CLEAR current HI-RES screen to BLACK
CALL 62454.....CLEAR current HI-RES screen to HCOLOR of last dot ploted


				   KEYBOARD

PEEK (-16384)..READ keyboard. If > 127 then a key was pressed. Always clear
	       keyboard strobe before reading it.
POKE -16368,0..CLEARS the keyboard STROBE.
CALL -657......GET a LINE of input with NO PROMPT or LINE FEED, and wait.
CALL -662......GET a LINE of input with PROMPT, NO LINE FEED, and wait.
CALL -665......GET a LINE of input with PROMPT, LINE FEED, and wait.
  *NOTE: INPUT CHARACTERS are found in the INPUT BUFFER {Loc 512-767 $200-$2FF}
CALL -756......WAIT for KEY PRESS.

				     SOUND

X=PEEK(-16336).TOGGLES the SPEAKER {1 click}
POKE -16336,0..TOGGLES the SPEAKER {1 click (longer then PEEK)}

				    CASSETE

X=PEEK(-16352).TOGGLES CASSETTE OUTPUT once {1 click on cassette recording).
CALL -310......WRITE to TAPE
CALL -259......READ from TAPE

				 GAME PADDLES

PEEK(-16287)...READ PDL(0) push BUTTON switch {If > 127 then switch is "ON"}
PEEK(-16286)...READ PDL(1) push BUTTON switch {If > 127 then switch is "ON"}
PEEK(-16285)...READ PDL(2) BUTTON (SHIFT KEY) {If > 127 then switch is "ON"}
POKE -16296,1..CLEAR GAME I/O AN-0 OUTPUT {OFF-3.5V HIGH}
POKE -16295,0..SET GAME I/O AN-0 OUTPUT {ON-.3V LOW}
POKE -16294,1..CLEAR GAME I/O AN-1 OUTPUT {OFF-3.5V HIGH}
POKE -16293,0..SET GAME I/O AN-1 OUTPUT {ON-.3V LOW}
POKE -16292,1..CLEAR GAME I/O AN-2 OUTPUT {OFF-3.5V HIGH}
POKE -16291,0..SET GAME I/O AN-2 OUTPUT {ON-.3V LOW}
POKE -16290,1..CLEAR GAME I/O AN-3 OUTPUT {OFF-3.5V HIGH}
POKE -16289,0..SET GAME I/O AN-3 OUTPUT {ON-.3V LOW}
CALL -1250.....MONITOR S/R to READ PADDLE - X-Reg contains PDL # (0-3).

				LO-RES GRAPHICS

CALL -2048.....PLOT a POINT {AC:Y-COORD  Y:X-COORD}
CALL -2023.....DRAW a HORIZONTAL LINE.
CALL -2008.....DRAW a VERTICAL LINE.
CALL -1998.....CLEAR LO-RES SCREEN 1 and set GRAPHICS mode.
CALL -1994.....CLEAR top 20 lines of LOW-RES Graphics
CALL -1977.....CALCULATE Graphics base ADDRESS.
CALL -1953.....INCREMENT COLOR by 2
CALL -1948.....ADJUST COLOR BYTE for both havles EQUAL.
CALL -1935.....MONITOR S/R to get SCREEN COLOR {AC:
Y-COORD Y:X-COORD}

				    COLORS

0= Black	   4= Dark Green       8= Brown 	   12= Green
1= Magenta	   5= Grey	       9= Orange	   13= Yellow
2= Dark Blue	   6= Medium Blue      10= Grey 	   14= Aqua
3= Light Purple    7= Light Blue       11= Pink 	   15= White

				HI-RES GRAPHICS

POKE 800,H.....Set HORIZONTAL COORDINATE. H=MODULUS 256
POKE 801,H/256.H= 0 (left) to 279 (right)
	       * Note: Both POKE 800 & 801 are required.
POKE 802,V.....Sets VERTICAL COORDINATE. {V= 0 (top) to 159 (bottom)}
POKE 804,S.....STARTING ADDRESS of SHAPE TABLE. S=MODULUS 256
POKE 805,S/256.Both 804 & 805 are required.
POKE 28,C......COLOR of SHAPE
POKE 812,x.....Sets COLOR for HI-RES
CALL -3805 PG..DRAWS predefind SHAPE.
CALL -3761.....PLOTS a POINT on the screen
CALL -3086.....Clear HI-RES screen to Black
CALL -3082.....Clear HI-RES screen to recent HCOLOR
CALL -2613.....HI-RES coordinates to ZERO page.
CALL -1438.....Pseudo-Reset
CALL -11780 M.."FIND" or POSITION
CALL -11272 S.."FIND" or BACKGROUND (HCOLOR 1 set for black background)
CALL -11471....HI-RES Graphics BACKGROUND (PAMAM=COLOR)
CALL -11462....HI-RES DRAW1(X0;Y0;COLOR)
CALL -11335....HI-RES SHLOAD
POKE 249,R.....Sets ROTATION of SHAPE {R=1 to 64; 0=Normal; 16=90' Clockwize}
PEEK (243).....FLASH MASK
PEEK (241).....SPEED (256 - current speed)
PEEK (234).....COLLISION COUNTER for shapes
PEEK (232-233).SHAPE TABLE starting address
POKE 231,S.....Sets SCALE of SHAPE
PEEK (230).....HI-RES PLOTING page. (32=Page 1, 64=Page 2, 96=Page 3)
PEEK (224-226).HI-RES GR X&Y Cordinates
POKE 228,x.....HI-RES GR COLOR BYTE (x can be 0-255)

				 HI-RES COLORS

0= Black1 {Gr/Vl}  1= Green	       2= Violet	   3= White1 {Gr/Vl}
4= Black2 {Or/Bl}  5= Orange	       6= Blue		   7= White2 {Or/Bl}

			      OTHER USEFULL CALLS
			{Add +65536 to get pos. POKE's}

CALL 54915.....CLEARS STACK. Dose away with the false "OUT OF MEMORY" error.
CALL 1002......Reconnect DOS
CALL -8192.....RESET INTERGER BASIC. KILLS VARIABLES and CLEARS
CALL -8117.....LIST INTERGER PROGRAM
CALL -6739.....NEW
CALL -6729.....PLOTS a POINT on the screen
CALL -6090.....RUN INTERGER PROGRAM {SAVES VARIABLES}
CALL -4116.....RUN INTERGER PROGRAM {KILLS VARIABLES}
CALL -3973.....LOAD INTERGER PROGRAM from TAPE
CALL -3776.....SAVE INTERGER PROGRAM to TAPE
CALL -3774.....SAVE
CALL -3318.....CONTINUE
CALL -2458.....TURN ON MINI-ASSEMBLER
CALL -2423.....SWEET-16 INTERPRETER entry
CALL -1906.....MONITOR S/R DISASSEMBLER entry
CALL -1728.....MONITOR S/R-PRINT contents of X & Y {REG 9 as 4 HEX digits}
CALL -1716.....MONITOR S/R PRINT X BLANKS {X REG contains # to PRINT}
CALL -1402.....MONITOR S/R-IRQ HANDLER
CALL -1390.....MONITOR S/R-BREAK HNADLER
CALL -1370.....RE-BOOTS DISK SYSTEM
CALL -1321.....MONITOR S/R to display USER REGISTERS
CALL -1233.....MONITOR S/R SREEN INIT
CALL -1223.....MONITOR S/R set SCREEN to TEXT mode {Destroys ACCUMULATER}
CALL -1216.....MONITOR S/R set GRAPHICS mode {GR} {Destroys ACCUMULATER} CALL
CALL -1205.....MONITOR S/R set NORMAL WINDOW
CALL -1184.....Prints the 'Apple ][' at the top of your screen.
CALL -1181.....MONITOR S/R MULTIPLY ROUTINE
CALL -1148.....MONITOR S/R DIVIDE ROUTINE
CALL -1087.....MONITOR S/R CALCULATE TEXT BASE ADDRESS
CALL -1052.....MONITOR S/R SOUND BELL
CALL -1027.....MONITOR S/R OUTPUT A-REG as ASCII on TEXT SCREEN 1
CALL -856......MONITOR S/R WAIT LOOP
CALL -756......GET KEY from KEYBOARD {Destroys ACC & Y-REG} WAIT for KEY PRESS.
CALL -741......MONITOR S/R KEYIN ROUTINE
CALL -715......READ KEY & PERFORM ESCAPE FUNCTION if necessary.
CALL -678......Wait for RETURN
CALL -676......Bell; Wait or RETURN
CALL -670......PREFORM LINE CANCEL
CALL -665......PREFORM CARRIAGE RETURN & GET LINE of TEXT.
CALL -662......GET LINE of TEXT from KEYBOARD {X RETND with # of CHARACTERS}
CALL -657......INPUT; Accepts commas & collons.
	       EX:PRINT "NAME (LAST, FIRST):";:CALL-657:A$="":FOR X= 512 TO 767
		  IF PEEK (X) < > 141 THEN A$= A$ + CHR$ (PEEK (X) -128) : NEXT
CALL -626......PRINT CARRIAGE RETURN {Destroys ACCUMULATOR & Y-REG}
CALL -622......PRINT A1H,A1L. Example: 10 POKE 60,A1H	 20 POKE 61,A1L   30END
		...Then RUN, CALL -622
CALL -550......PRINT CONTENTS of ACCUMULATOR. As 2 HEX DIGETS.
CALL -541......PRINT a HEX digit
CALL -531......OUTPUT CHARACTER IN ACCUMULATOR. {Destroys ACCUM. & Y-REG COUNT}
CALL -528......GET MONITOR CHARACTER OUTPUT
CALL -468......PERFORM MEMORY MOVE A1-A2 TO A4.
	       Example:    10 POKE 60,LOB
			   20 POKE 61,HOB
			   30 POKE 62,LOE
			   40 POKE 63,HIE
			   50 POKE 66,LOD
			   60 POKE 67,HID
		...Then RUN, CALL -468
		* Note: LOB is lo-byte of begining of memory to move, HIB is

		   high, LOE is low end, HIE is high, LOD is low destina-
			tion, HID is high.
CALL -458......Perform MEMORY VERIFY (compare and list differences)
CALL -418......DISASSEMBLE 20 INSTRUCTIONS
CALL -415......DISASSEMBLER  Note: POKE start add. at 58-59 before calling.
CALL -378......set I FLAG
CALL -375......set KEYBOARD
CALL -336......JUMP to BASIC
CALL -333......CONTINUE BASIC
CALL -330......MEMORY LOCATION "GO"
CALL -321......DISPLAY A,S,Y,P,S REG. {CURRENT VALUES}
CALL -318......PERFORM MONITOR TRACE
CALL -307......WRITE OUT cassette tape
CALL -259......READ FROM cassette tape {LIMITS A1 to A2}
CALL -211......PRINT "ERR" & SOUNDS BELL {Destroys ACCUMULATOR & Y-REG}
CALL -198......PRINT BELL {Destroys ACCUMULATOR & Y-REG}
CALL -193......MONITOR & SWEET-16 "RESTORE"
CALL -188......MONITOR "RESTR1"
CALL -182......MONITOR & SWEET-16 "SAVE"
CALL -180......MONITOR "SAV1"
CALL -167......ENTER MONITOR RESET, TEXT mode, "COLD START"
CALL -155......ENTER MONITOR, ring BELL, "WARM START"
CALL -151......Go to MONITOR
CALL -144......SCAN INPUT BUFFER {ADDRESS $200...}
	       EX: A$ = "300:A9 C1 20 ED FD 18 69 01 C9 DB D0 F6 60 300G D823G"
		   FOR X=1 TO LEN(A$): POKE 511+X,ASC (MID$ (A$,X,1))+128: NEXT
		   POKE 72,0: CALL -144

				    ERRORS

POKE 216,0.....RESETS ERROR FLAG
PEEK (216).....If = 127 then an ERROR was detected.
PEEK (212).....Returns ERROR CODE FLAG in decimal.

			       MEMORY ALLOCATION

RANGE	    ! USE DESCRIPTION
------------+--------------------------------------------+
$0-$1FF     ! Program wook space {not for USER}
$200-$2FF   ! Keyboard Character buffer
$300-$3FF   ! Available for short Machine langauge rutine
$400-$7FF   ! Screen display page 1 TEXT or GR
$800-$1FFF  ! Available RAM for BASIC programs
$2000-$3FFF ! HGR page 1
$4000-$5FFF ! HGR page 2
$6000-$95FF ! Available RAM for BASIC programs
$9600-$9CFF ! DOS files buffers {Maxfiles 3}
$9D00-$AAFC ! Main DOS routines
$AAFD-$B7B4 ! File Manager
$B7B5-$BFFF ! RWTS
$C000-$CFFF ! I/O Hardware {end of RAM}
$D000-$FFFF ! ROM {I/O Addresses}


			   SPECIAL MEMORY LOCATIONS

LOCATION   ! USE DESCRIPTION
-----------+------------------------------------------------------------------+
$18	   ! First track of data {for DOS}
$19	   ! First sector of data {for DOS}
$1A	   ! Number of sectors to load {for DOS}
$1B	   ! The HIGH BYTE of the buffer {LO is always 00} {DOS Command}
$1A - $1B  ! Shape pointer used by DRAW and XDRAW
$1C	   ! Last color used {HCOLOR converted to its color byte}
$26 - $27  ! Address of byte contained X,Y point
$2B	   ! Boot SLOT * 16
$2C	   ! Lo-res line END-point
$30	   ! COLOR * 17
$33	   ! Prompt-Char, {POKE 51,0:GOTO line #; Defeats NOT DIRECT COMMAND}
$68	   ! LOMEM: {LOW BYTE is always 00}
$4E - $4F  ! Random - Number feild
$69 - $6A  ! Simple Variables
$6B - $6C  ! Start of ARRAY - Space
$6D - $6E  ! END of ARRAY - Space
$6F - $70  ! Start of STRING storage
$73 - $74  ! HIMEM: $73=LO BYTE
$75 - $76  ! Line # being executed
$77 - $78  ! Line # where program stopped
$79 - $7A  ! Address of executing line #
$7B - $7C  ! Current DATA line #
$7D - $7E  ! Next DATA address
$7F - $80  ! Input or Data address
$81 - $82  ! Last used Variable NAME: VAR$ = CHR$(PEEK(129)) + CHR$(PEEK(130))
$83 - $84  ! Last used variable address
$AF - $B0  ! End of Applesoft program
$D8	   ! ONERR flag   NOTE: POKE 216,0 cancels ONERR function
$DA - $DB  ! Line # of ONERR error
$DE	   ! ONERR error code {Dec. PEEK (222)}
$E0 - $E1  ! X-coordinate (0-279) in HEX {Low,High}
$E2	   ! Y-coordinate (0-191) in HEX
$E4	   ! Color being used {0=0:42=1:85=2:127=3:128=4:170=5:213=6:255=7}
$E6	   ! Current HI-RES page being used {$20: Page one, $40: Page two}
$E7	   ! Current SCALE (0-256)
$E8 - $E9  ! Location of shape table {Low,High}
$EA	   ! Collision counter {used by XDRAW and DRAW}
$3D0 - $3D2! JUMP vector to DOS Warmstart {JMP $9DBF}
$3D3 - $3D5! JUMP vector to DOS Coldstart {JMP $9D84}
$3D6 - $3D8! JUMP vector to DOS File Manager {JMP $AAFD}
$3D9 - $3DB! JUMP vector to RWTS {JMP $B7B5}
$3DC - $3E2! Subroutine to locate File Manager PARM list {LDA $9D0F;LDY $9D0E}
$3E3 - $3E9! Subroutine to locate RWTS PARM list {LDA $AAC2; LDY $AAC1; RTS}
$3EA - $3EE! JUMP to replace DOS intercepts subroutine {JMP $A851; NOP; NOP}
$3EF - $3F1! JUMP vector to Autostart BRK Handler {JMP $FA59}
$3F2 - $3F3! Autostart Reset handler {$9DBF}
$3F4	   ! POWER-UP byte ($3F3 EOR $A5) {$38}
$3F5 - $3F7! JUMP vector to Applesoft & Handler {JMP $FF58}
$3F8 - $3FA! JUMP vector to CTR-Y handler {JMP $FF65}
$3FB - $3FD! JUMP vector to NMI handler {JMP $FF65}
$3FE - $3FF! Vector for IRQ handler {$FF65}
$AA61.$AA60! LENGTH of file just loaded {$AA61 is the HIGH BYTE}
$AA73.$AA72! STARTING ADDRESS of file just loaded {$AA73 is the HIGH BYTE}
$FBB3	   ! SIGNATURE byte {$06 = //e	:  $EA
 = ][+}


			   MISCELLANEOUS INFORMATION
				 CONTROL RESET

To make it run your program type this:
      10 POKE 1010,102
      20 POKE 1011,213
      30 POKE 1012,112

To make it send you to MONITOR type this:
      POKE 1010,105
      POKE 1011,255
      CALL -1169

To make it BOOT DOS type this:
      POKE 592,0
      POKE 1012,0

* Note: The origanal values are:
      PEEK(592) = 255  DivDos64k  Norml
      PEEK(1010)= 3	  60	   191
      PEEK(1011)= 224	  191	   157
      PEEK(1012)= 69	  26	   56

			  VERY QUICK SORTING ROUTINE

1000 FOR I = 1 TO N - 1 : REM N = # OF ITEMS
1010 P = I
1020 FOR J = I + 1 TO N
1030 IF A(J) < A(P) THEN P = J
1040 NEXT J
1050 T = A(I) : A(I) = A(P) : A(P) = T
1060 NEXT I

			     DOS MEMORY LOCATIONS

LOCATION    ! USE DESCRIPTION
------------+-----------------------------------------------------------------+
$3D0 - $3D2 ! Re-enter DOS Vector
$3F2 - $3F4 ! Reset Vector   EX: POKE 1012,0 Reboots  {Norm: 56}
$3F5 - $3F7 ! Ampersand Vector. EX: POKE 1014,165:POKE 1015,214 -=> LIST
	    !			EX: POKE 1014,110:POKE 1015,165 -=> CATALOG
	    !			EX: POKE 1014,18 :POKE 1015,217 -=> RUN
$3F8 - $3FA ! Crtl - Y Vector
$A56E	    ! Catalog Routine.	Also  CALL 42350
$9E42	    ! Greeting program RUN-FLAG {POKE 40514,X: 52=BRUN, 20=EXEC}
$A884-$A907 ! DOS Commands
$A972-$AA3E ! ERROR messages
$A960-$AA61 ! Last BLOAD Lenght {LEN = PEEK (43616) + PEEK (43617) * 256}
$AA72-$AA73 ! Last BLOAD START {STR = PEEK (43634) + PEEK (43635) * 256}
$AA57	    ! MAX Files Values
$AAB1	    ! Max files Default Value
$AA68	    ! Drive - Number  EX: POKE 43624,DR   DR= Drive for I/O
$AA6A	    ! Slot - Number
$AC01	    ! Catalog Track number.
$AE17	    ! # Characters -1 in catalog file name.
$B3A7-$B3AE ! File type codes
$B3AF-$B3BA ! Disk Vol. Heading
$B3C1	    ! Disk Vol. Number
$B3F0	    ! Number of Sectors per Track


			       DOS MISCELLANEOUS

To defeat the "NOT DIRECT COMMAND" error type: POKE 51,0 : GOTO line #
To kill the INIT command do: Poke 42309,96  or	$A545:60
To kill the INIT command in normal DOS type: POKE 42309,96  or $A545:60
If you want a basic program to load in after HGR {more memory than LOMEM:16384}
   use this loader program:
	 10 POKE 16384,0 : POKE 104,64 : REM STARTING LOCATION OF PROGRAM
	 20 PRINT CHR$(4) "RUN PROGRAM"

  *Note:To put things back to normal use this program:
	     10 POKE 2048,0 : POKE 104,8
	     20 PRINT CHR$(4) "RUN OLD PROGRAM"

If PEEK(-18070) = 150 then your using DOS 3.3 .

POKE 40193,PEEK(40193)-N:CALL 42964...Move DOS buffers down N*256 bytes.
POKE 44452,N+1:POKE 44605,N...........Allows N file names before Catalog pause.
POKE 44505,234:POKE 44579,234:POKE 44580,234...Cancels return after file names.
POKE 44578,234:POKE 44579,234:POKE 44580,234...Cancels catalog pause.
POKE 44599,234:POKE 44600,234.........Wait for key input after every file name.

Here are some POKEs that turn on the DRIVES but do not READ or WRITE.  These
   can be used as scare tactics. EX. PRINT "INITIALIZING DISK" : POKE -16151,0
      POKE -16151,0........TURNS ON DRIVE 1
      POKE -16135,0........TURNS ON DRIVE 2
      POKE -16152,0........TURNS OFF DRIVE 1
      POKE -16136,0........TURNS OFF DRIVE 2

To stop CATALOG for a key input after every file name type:
      POKE 44599,234 {NORM 208}
      POKE 44600,234 {NORM 8}

To omit the pause after a full screen of CATALOG then type:
      $AE34:60	or  POKE 44569,96

For WILDCARD DOS files useing "=" type: (from monitor)
      B201:4C 71 BA
      BA69:E8 B1 42 DD C6 B4 D0 0A C8 C0 1E D0 F3
	   AE 9C B3 18 60 C9 AD F0 F7 4C 0B B2

				 MISCELLANEOUS

To make the program in memory run when any Syntax (but DOS commands) is typed
   then put this line in:  10 POKE 214,128 {Norm 0}

PEEK (104).....If 8 is returned then APPLESOFT is in ROM. Any other value means
	       APPLESOFT is in RAM or not available.
POKE 2049,1...Repeatedly Lists first  li
CALL -856......TIME DELAY. POKE 69,XX to set amount of delay.
CALL -1182.....Prints the Apple ][ across the top of your screen.

POKE 49107,234:POKE 49108,234:POKE 49109,234...Prevents language card re-load.

For "true" random number generation use RND(PEEK(78)+PEEK(79)*256).

POKE 1912+SLOT,1 on APPLE PARALLEL CARD (with P1-02 PROM) will enable LINEFEED.
POKE 1912+SLOT,0 on APPLE PARALLEL CARD (with P1-02 PROM) => disable LINEFEEDS.

REMAINDER {Mod} type: R = X - (INT (X / Y) * Y)
To ROUND to N digets past the decimal type: X = INT (X * (10^N) +.5) / (10^N)
QUADRATIC formula : R1 = (-B + SQR (B^2 - 4 * A * C)) / (2 * A)
		    R2 = (-B - SQR (B^2 - 4 * A * C)) / (2 * A)

				  CONVERSIONS

To change VOLUME # xxx to SECTORS FREE = xxx then type the following:
      ADC0:20 69 BA
      BB69:A9 00 85 40 85 41 A0 C8 18 B9 F2 B3 F0 0E 0A 90 FB 48 E6 40 D0 02 E6
	   41 68 18 90 F0 88 D0 E9 A6 40 A5 41 20 24 ED 60
      B3AF:A0 BD A0 D4 C3 C5 D3 A0 C5 C5 D2 C6

If you own a //e then you can get the functions of an 80 col card (save 80 col)
   with out the card. Just type: POKE 49162,0  then type: PR#3

[Dist. The Temple of Doom  805/682-5148]
+=============================================================================+
!  If you find an error or want to add something, please leave me a message!  !
+=============================================================================+
