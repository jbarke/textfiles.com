	 =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	 -					     -
	 =	 //c Serial Ports -- J.A.K. //x      =
	 -					     -
	 =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

-----------------------------------------------------------------
HAND CONTROL
-----------------------------------------------------------------
Connector	Signal
Pin Number	Name		Description

1		GAMESW1 	Switch input (paddle #1)
2		+5		+5 VDC (Do not exceed 100 MA)
3		GND		System Ground
4,9		-		Not used for hand controllers
5,8		PDL0 & PDL1	Hand control inputs.  Each of
				these must be connected to a 1K
				pot connected to +5
6		N.C.		Not connected
7		GAMESW0 	Switch input 0 (paddle #0)

-----------------------------------------------------------------
MOUSE CONNECTOR
-----------------------------------------------------------------
Connector	Signal
Pin number	Name		Description

1		MOUSEID 	Mouse Identifier
2		+5V		+5VDC (Do not exceed 100 ma.)
3		GND		System Ground
4		X1		Mouse X-direction Indicator
5		X0		Mouse X-movement interrupt
6				Mouse button
7		MSW		Mouse button
8		Y1		Mouse Y-direction indicator
9		Y0		Mouse Y-movement interrupt

-----------------------------------------------------------------
EXTERNAL POWER
-----------------------------------------------------------------
Connector	Signal
Pin Number	Name		Description

1,7				Not Connected
2,3		Ground		Common electrical ground
4		Chassis 	Chassis ground
5,6		+15V		+15VDC input to converter

=================================================================
	  Description and Setup of Apple //C Serial Ports


The Apple //c serial ports are 5-pin DIN connectors.  Both Port 1 (Printer) and
Port 2 (Modem) have the same pin-out and signal description.  Here are the cable
descriptions for connecting them to the ImageWriter and the Apple Modem.

	  Apple //c Serial Port  -  ImageWriter  -  Apple Modem

		 DTR (1)	      6 - DSR	      6 - DTR
		 TXD (2)	      3 - RCD	      9 - TXD
		 GND (3)	      7 - GND	      3 - GND
		 RCD (4)	      2 - TXD	      5 - RCD
		 DSR (5)	     20 - DTR	      2 - DSR
						       __
			_ ______		      |  ]
		       |_|	 \		      |  ]
		   (5)	   (1)	  \ ________________ /	 ]
				   )________________)	 ]
		   (4)	   (2)	  /		     \	 ]
		       (3)______ /		      |  ]
						      |__]

		 DIN type connector	    DB type connector

Setting up the printer port from within a program on the //c is essentially the
same as changing the settings on previous interface cards: after first directing
output to the serial port (using PR#1 and PR#2 for Ports 1 and 2, respectively),
the commands can then be sent to the serial port.  Each command for Port 1 must
be preceded by <CTRL-I>.  The commands for Port 1 are:

Command 	     Description

 nnn		     Set line width (from 001 through 255): This command must
                     be followed by an 'N' or a <CR>.

 nnB		     Set baud rate to value corresponding to nn.

		     nn   Rate		       nn   Rate

		     01 - 50		       09 - 1800
		     02 - 75		       10 - 2400
		     03 - 110		       11 - 3600
		     04 - 135		       12 - 4800
		     05 - 150		       13 - 7200
		     06 - 300		       14 - 9600
		     07 - 600		       15 - 19200
		     08 - 1200

 nB		     Set Data Format to values corresponding to n.

		     n	-  Format

		     0	   8 data 1 stop
		     1	   7 data 1 stop
		     2	   6 data 1 stop
		     3	   5 data 1 stop
		     4	   8 data 2 stop
		     5	   7 data 2 stop
		     6	   6 data 2 stop
		     7	   5 data 2 stop

 I		     Echo output to screen.

 K		     Disable <LF> after <CR>.

 L		     Generate <LF> after <CR>.

 nP		     Set Parity corresponding to n.

		     n	-  Parity

		     0	   none
		     1	   odd
		     2	   none
		     3	   even
		     4	   none
		     5	   mark (1)
		     6	   none
		     7	   space (0)

 R		     Reset Port 1 and exit from serial port 1
		     firmware.

 S		     Send a 233 millisecond Break character

 Z		     Zap (ignore) further command characters
		     (until Control-Reset or PR#1).  Do not
		     format output or insert carriage returns
		     into output stream.

    Port 2 uses the same commands, with the differences and additions listed
    below.  Each command for Port 2 must be preceded by a <CTRL-A>.

 nnn		     same

 nnB		     same

 nD		     same

 I		     same

 K		     same

 L		     same

 nP		     same

 Q		     Quit Terminal Mode

 R		     same

 S		     same

 T		     Enter Terminal Mode.  Use this command after IN#2 only.
		     If you follow this command by PR#2, the //c will echo
		     input to output. (NOTE: If the other device is also
		     echoing input to output, entering the first character
		     will cause an infinite loop.  Use <CTRL-RESET> to get


 Z		     same

 Control-T	     When issued from a remote device, this command puts the
		     //c in terminal mode if IN#2 is already in effect.  The

 Control-R	     When issued from a remote device, this command undoes
		     the terminal mode command.  If IN#2 and PR#2 are in
		     effect, the remote keyboard and display become the input
		     and output devices of the local //c.  The command is the
		     same as <CTRL-A> "Q" typed locally.

=================================================================

	  Description Of the Apple //C Video Expansion Port


	  The back panel of the Apple //c has a DB-15 connector for
sophisticated video interfaces external to the computer. See table below for
description of signals.

	  In the table, the column labled Deriv indicates what clock signals the
video signals are derived from.  LDPS, CREF and PRAS have a maximum delay of
30ns from the appropriate 14MHz rising edge.  SEROUT is clocked out of a 74LS166
by  the rising edge of 14M and has a maximum delay of 35ns. VIDD7 is driven from
a 74LS374 and has a maximum delay of 28ns from the rising and (if 80 column)
falling edges of phase1.

	  To align CREF so it is in the same phase at the beginning of every
line, certain clock signals must be stretched. This stretch is for one 7M cycle
(140ns), and occurs at the end of each video line.  All timing signals except
14M, 7M and CREF are stretched.

	     WARNING!!!   The signals at the DB-15 on the Apple //c are not the
same as those on the Apple ///.  Do not attempt to plug a cable intended for one
into the other.

	     WARNING!!!   Several of these signals, such as 14MHz, must be
buffered within about four inches (10 cm) of the back panel connector -
preferably inside a container directly connected to the back panel.


	  The Video Expansion Connector Pinouts

	  Pin  Deriv  Name    Description

	  1    phase1 TEXT    Video text signal from TMG; set to
			      inverse of GR, except in double
			      high-resolution mode

	  2	      14M     14M master timing signal from the
			      system oscillator

	  3    Q3     SYNC*   Display horizontal and vertical
			      synchronization signal from IOU pin 39

	  4    PRAS   SEGB    Display vertical counter bit from IOU
			      pin 4; in text mode indicates second
			      low-order vertical counter; in
			      graphics mode indicates low-resolution

	  5	      1VSOUND One-volt sound signal from pin 5 of
			      the audio hybrid circuit (AUD)

	  6    14M    LDPS*   Video shift-register load enable from
			      pin 12 of TMG

	  7    PRAS   WNDW*   Active display area blanking; includes
			      both horizontal and vertical blanking

	  8	      +12 V   Regulated +12 volts DC.; can drive
			      350mA

	  9    14M    PRAS*   RAM row-address strobe from TMG pin 19

	  10   PRAS   GR      Graphics mode enable from IOU pin 2

	  11   14M    SEROUT* Serialized character-generator output
			      from pin 1 of the 74LS166 shift
			      register

	  12	      NTSC    Composit NTSC video signal from VID
			      hybrid chip

	  13	      GND     Ground reference and supply

	  14   phase0 VIDD7   From 74LS374 video latch; causes
			      half-dot shift if high

	  15   14M    CREF    Color reference signal from TMG pin 3;
			      3.58MHz

	     WARNING!!!   Use caution--The maximum allowable current drain of
+12V regulated power at the video expansion connector is 300 milliamps.  If the
external device draws more than this. it can damage the computer or cause the
power supply to shut down.


=================================================================


	       Description Of Apple //C External Disk Port

The Apple //c external disk drive port is a DB-19 connector.  The signals
available at the port are as follows:

				     10 - WRPROT
		     1 - GND
				     11 - SEEKPH0
		     2 - GND
				     12 - SEEKPH1
		     3 - GND
				     13 - SEEKPH2
		     4 - GND
				     14 - SEEKPH3
		     5 - +12V
				     15 - /WRREQ
		     6 - + 5V
				     16 - NC
		     7 - +12V
				     17 - /DR2
		     8 - +12V
				     18 - RDDATA
		     9 - /EXTINT
				     19 - WRDATA

CAUTION: This is not a recommendation by Apple to connect any but the Disk //c.
	 Connecting any other disk drive will invalidate the Apple warranty.


================================================================

	       Using the AppleSoft Sampler on a //c


Customers are finding that the Applesoft Sampler diskette (included with the
Applesoft Tutorial), when used on an Apple //c, does not function as expected.
Menus generated by this software are correct when used on an Apple //e, but
there is a vertical displacement of one line between menu selection numbers and
menu item descriptions when executed on an Apple //c.

The problem resides in two programs (CONVERTER and DISK.MENU) located on the
Applesoft Sampler diskette.  Load the "CONVERTER" program and list line number
625.  This line currently reads;

     625 VTAB PEEK(37): IF COL80 THEN VTAB PEEK(1531)

Change this line to read:

     625 IF COL80 THEN VTAB PEEK(1531) : GOTO 630

and then add the following line:

     627 VTAB PEEK(37)

SAVE the file "CONVERTER".

Make the same changes to the file "DISK.MENU"

These changes will fix the problem.

We have been informed that these changes will soon be included in the final
product.  However, the problem exists in product that is already shipping. Our
suggestion is to perform the above changes to the CONVERTER and DISK.MENU
programs and give the fixed version of the program to those that need it.

NOTE:  The following program will automatically update the Tutorial diskettes.

     100 D$ =  CHR$ (4): REM CTRL-D
     105  PRINT D$;"OPEN COMMAND.FILE"
     110  PRINT D$;"WRITE COMMAND.FILE"
     115 F$ = "DISK.MENU": GOSUB 200
     120 F$ = "CONVERTER": GOSUB 200
     125  PRINT "RUN DISK.MENU"
     130  PRINT D$;"CLOSE COMMAND.FILE"
     135  PRINT D$;"EXEC COMMAND.FILE"
     140  END
     200  PRINT "LOAD ";F$
     205  PRINT "625 IF COL80 THEN VTAB PEEK(1531):GOTO 630
     210  PRINT "627 VTAB PEEK(37)
     215  PRINT "UNLOCK ";F$
     220  PRINT "SAVE ";F$
     225  RETURN
