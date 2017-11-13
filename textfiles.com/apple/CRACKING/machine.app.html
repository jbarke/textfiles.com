***************************************
*				      *
*  Black Bag Presents...	      *
*				      *
*				      *
*	 Cracking Tutorial 001	      *
*				      *
*	   Machine Language	      *
*				      *
*				      *
*	      Written By:	      *
*	The Intern of Black Bag       *
*	       Rev. 1.0 	      *
*				      *
***************************************


  If you desire to do a bit of cracking, it would be a good idea to review (or
learn) machine language.  You probably have noticed most games are marked with
the "B" file type when you "CATALOG" your disk, telling you that they are
written in machine language.  You may wonder why would some poor masochistic
programmer write a game entirely in some bizzare language of ones and zeros.
Well, machine language is quick -- very quick.	Let's take a look at a sample
program for Hi-Res graphics.  We can type it in in a minute, but look to see
what you're getting into:


		 Basic
		 -----

	  10 HGR2 : HCOLOR=3
	  20 FOR X=0 TO 279
	  30 FOR Y=0 TO 191
	  40 HPLOT X,Y
	  50 NEXT Y
	  60 NEXT X
	  70 END

	   Machine Language
	   ----------------

	  10 HGR2 : HCOLOR=3
	  20 HPLOT 0,0
	  30 CALL 62454
	  40 END

  Wait!  Before you demand a refund, I realize they both look like BASIC, but
the second uses a machine language routine built into your apple.  It is easier
to understand than a whole lot of machine language garbage.  Just notice the
difference in speed.  Although "CALL" is a BASIC command, it is a bridge to
machine language.  It switches control over to machine language.  Before we go
any further, let's talk about what machine language is.  First, there are
different names for machine language.  You probably used them interchangably as:

	   Binary
	   Machine Language
	   Assembly

  Luckily, you don't have to worry much about binary.  Binary is mainly for
machine use only.  Binary is the most primitive form and your Apple works mostly
in binary because it is based on digital electronics.  In digital electronics,
you can have either a one or a zero.  The one signifies power (voltage), the
zero signifies no power.  There's not enough room here to go into a deep
explanation of a binary logic tree, but I can provide a short summary.	A
circuit in your computer will check things and receive either a one or a zero.
The circuit will travel along a road.  When it comes to a fork in the road, it
will take the high road if it received a one, but it will take the low road if
it has a zero.	At the end of the journey, a specific task would have been
completed.

  Each one or zero is a binary digit (or "bit" for short).  Obviously, your 6502
can't complete every task if it uses a bit every time it comes to a junction.
That is why the 6502 is referred to as an "EIGHT BIT" micro- processorr.  In
other words, it will take eight bits arranged in a predetermined manner for your
6502 to complete a specific task.

  Four bits in a row make a nybble and two nybbles (or eight bits) make a byte.
One byte can be represented as a decimal number from 0 to 255.	The bits in a
byte are identified by thier location.	In other words, a byte has 8 bits known
as bit 0 through bit 7.  The right-most bit is known as bit 0.	To summarize:


BITS:  1   1   1   1   1   1   1   1

     !	 !   !	 !   !	 !   !	 !   !
     !BIT!BIT!BIT!BIT!BIT!BIT!BIT!BIT!
     ! 7 ! 6 ! 5 ! 4 ! 3 ! 2 ! 1 ! 0 !
     +---+---+---+---+---+---+---+---+
     !		     !		     !
     !	UPPER NYBBLE ! LOWER  NYBBLE !
     !		     !		     !
     +---------------+---------------+
     !				     !
     !	       ENTIRE BYTE	     !
     !				     !
     +-------------------------------+


  Before we continue, Let's touch up a bit on your knowledge of base 2 math.
Here's an example of the addition of two binary numbers:

		  1		 1
    01		  01		 01
  + 01	 ->>>	+ 01   ->>>    + 01
  ----- 	-----	       -----
		   0		 10

 (Step 1)      (Step 2)       (Step 3)


  :> Step 1:  Start to add.

  :> Step 2:  Add first column, there's no "2" in the binary number system, so
you must carry the overflow.

  :> Step 3:  Continue to add.

  Well, you may be confused.  It is difficult for many people to convert a
binary number into our number system, base 10 or decimal.  It's really quite
simple if you can visualize that each place in a binary number represents a
power of two.  If you had a byte like 10000000 (bie 7 = 1), you have the
equivilent of two raised to the power of seven.  The easiest way to demonstrate
this is to use a conversion chart, such as this one:

+-------------------------------------+
!	BINARY CONVERSION CHART       !
+-----+---+---+---+---+---+---+---+---+
!BIT  !BIT!BIT!BIT!BIT!BIT!BIT!BIT!BIT!
!PLACE! 7 ! 6 ! 5 ! 4 ! 3 ! 2 ! 1 ! 0 !
+-----+---+---+---+---+---+---+---+---+
! 2'S !   !   !   !   !   !   !   !   !
!     ! 7 ! 6 ! 5 ! 4 ! 3 ! 2 ! 1 ! 0 !
!POWER!   !   !   !   !   !   !   !   !
+-----+---+---+---+---+---+---+---+---+
!DEC. !1  !6  !3  !1  !   !   !   !   !
!     ! 2 ! 4 ! 2 ! 6 ! 8 ! 4 ! 2 ! 1 !
!EQUIV!  8!   !   !   !   !   !   !   !
+-----+---+---+---+---+---+---+---+---+

EXAMPLE:
--------

10001000 = 2^7+2^3 = 1*128+1*8 = 136

 BINARY    POWER OF  MULTIPLY	DECIMAL
	     TWO

  Machine language is a general term generally meaning a low level language
which is heavily dependant on the machine.  For example, machine language on an
IBM is different than the machine language on an Apple.  Machine language is a
very broad area.  There are several different levels.  Organized from lnwest to
highest, they are:

	 Translated
	 Interactive
	 Mini-Assembler
	 Macro-Assembler

  The first refers to poking your program in from another language.  This often
used from within BASIC.  The reason this is used is to make a program
"self-contained," or to extend the limit of a machine.  On a Vic-20, machine
language is not supported.  In order to do any machine language on a Vic-20,
without purchasing an expansion module, you would have to "POKE" your program
into memory from BASIC and then "CALL" it.

  The second, the interactive mode, usually is accomplished by a "monitor." This
is not a CRT, it is a small program which contains most of the routines for
running your machine (keyboard input, character output, sound, and other things)
and also contains a small command processor which allows you to write machine
language programs and list them.  When you type "CALL-151" on an Apple, you
enter the "monitor" and can begin coding programs.  The major drawback of the
interactive and the translated method, is that you must know the numbers which
correspond to commands.  Machine language is much harder than BASIC simply
because line numbers, variables, data, and commands are all represented by the
same kind of numbers.  It is very similar to Chinese.  In Chinese, the same word
may be an obscenity or a complement.

  A mini-assembler allows you to write machine language using words for commands
rather than numbers.  They can use line numbers (actually memory locations) such
as the "mini-assembler" located within Integer BASIC, or "labels." A label
allows you to name a subroutine and not have to worry about mathematically
calling it.  In BASIC, it would be similar to typing "GOSUB HOUSEKEEPING""
instead of "GOSUB 100." Most mini-assemblers also allow the use of variables or
a name for a specific memory location that you will use for storage.  When you
use Apple's built-in monitor, you must always know the actual location, or a
number, that you will use as a variable.  Thus, mini-assemblers allow you to
write programs very quickly because you need not memorize a bunch of numbers and
sequences.

  A Macro-Assembler is the best.  In BASIC, most of us have at least one typical
subroutine that we use over and over again even for different programs.  Each
time we must re-enter it into memory.  In a macro assembler, we can write this
subroutine once, name it, and save it.	Then, when we write our program, we need
only to call it by name, and the machine will automatically insert your
subroutine.  Usually macro assemblers have psuedo-code options, which allow you
to control the translation of text to the actual program.  They can control
exactly what microprocessor is installed, or how much memory is available.

  The last two are the easiest to use, you would simply write your machine
language program in a text editor and compile them, or "assemble" them.  They
are very effecient because if you need to insert 1 or 100 lines of code, they
will automatically refigure the program just by compiling the program again.
The first two are good for short and quick applications.  When you just want to
test a small subroutine, or impress a your computer teacher.  It is best to
begin he hard way, with the translated and interactive methods, because all four
forms are bound by the same rules, and any mistakes you my have made will be
easy to see and even easier to change.	But, if you want to begin, you must know
a whole new counting system.  The hexadecimal counting system, or base 16.

  Hexadecimal breaks up a byte into two characters.  One character represents
the upper nybble, the other represents the lower hybble.  There is a problem
though, decimal has only 10 symbols, "0" to "9", and hexadecimal system needs 16
distinct characters.  To solve the problem, the symbols "A" through "F" are used
to represent 10 to 15.

      +------------------------+
      !        !	 !     !
      ! NYBBLE ! DECIMAL ! HEX !
      !        !	 !     !
      +--------+---------+-----!
      !        !	 !     !
      !  0000  !    0	 !  0  !
      !  0001  !    1	 !  1  !
      !  0010  !    2	 !  2  !
      !  0011  !    3	 !  3  !
      !  0100  !    4	 !  4  !
      !  0101  !    5	 !  5  !
      !  0110  !    6	 !  6  !
      !  0111  !    7	 !  7  !
      !  1000  !    8	 !  8  !
      !  1001  !    9	 !  9  !
      !  1010  !   10	 !  A  !
      !  1011  !   11	 !  B  !
      !  1100  !   12	 !  C  !
      !  1101  !   13	 !  D  !
      !  1110  !   14	 !  E  !
      !  1111  !   15	 !  F  !
      !        !	 !     !
      +--------+---------+-----+


  The conversion of a number to hex just takes practice, but becomes relatively
easy if you take a number and break it down to the binary level, where
conversion to hex is as easy as pie.

  Just as nybbles may be organized into groups of two, so may bytes.  Two bytes
together usually represent a number.  The number may be expressed in two
different ways.  Let us use the example of the number FF00:

	   A Two Byte Number
	   -----------------

    F F 0 0	=     0 0	F F
    \ / \ /	      \ /	\ /
     !	 !	       !	 !
     Hi  Lo	       Lo	 Hi
		      Byte	Byte

  When the two bytes are written together, the high byte is written first.  When
the two bytes are seperated, the low byte is written first.  This is one
difference you will notice between the different levels of machine language.  An
assembler will translate the standard format of two bytes written together to
the machine format of "lo byte first." You can blame the designers of computers
for the strange splitting of numbers, but it really makes much more sense to the
computer in the lo-hi format.

  One term you should know is "word." The word is simply two bytes.  The numbers
in the paragraph above are one word long.  Sixteen bit computers look at memory
in increments of words, while 8 bit computers look at memory in increments of
bytes.

  To distinguish between memory locations, values, and the different forms of
number systems, some symbols are used in addition to numbers:

 % = Binary Location Value
#% = Binary Number
   = Decimal Location (no symbol)
 # = Decimal Number
 $ = Hexadecimal Location Value
#$ = hexadecimal Number

  Following the symbols would be the digits.  Thus, the hexadecimal location 10
would be written $10.  The binary number 0110 would be written #%0110.	Again,
this does not pertain to the monitor or interactive forms of writing machine
language, only the forms using an assembler.  In an attempt to keep things
simple, I have ommited the symbol notations.

  This is still not true machine language, since that is a nazt.  If you did not
understand much of the tutorial, do not worry.	For now, just understand the
hexadecimal numbering system.

  For the next set of docs, try to find a copy of the "DOS Toolkit," and look
over the following examples.  Until then, good luck!

	      The Intern
	     of Black Bag

---------------------------------------
    Hex      Decimal	   Binary


    FF	 =    255     =  1111 1111
    D0	 =    208     =  1101 0000
    B7	 =    183     =  1011 0111
    A0	 =    160     =  1010 0000
    74	 =    116     =  0111 0100
    37	 =     55     =  0011 0111
    13	 =     19     =  0000 1101
--------------------------------------

