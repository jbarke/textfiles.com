EXAMINING PROTECTED APPLESOFT BASIC PROGRAMS.
BY THE DISK JOCKEY.

  Many protected programs are written in APPLESOFT.  Of course, most publishers
are sly enough to protect against break ing out of their program with CTRL C or
reset.	Also, most protect against re-entering BASIC from the monitor by
changing the typical BASIC re-entry poi nt (at $3D0) so that it points to
disaster.  And lastly, many change the R UN flag vector at $D6 so if you manage
to get out of their program and into BA SIC, anything you type will RUN their
BASIC program.	I will describe how to b eat all these protection schemes,
assuming you have an old style F8 monit or ROM.

  First, we must determine if the protect ed program is written in APPLESOFT.
If after you boot the progra m a BASIC prompt appears, this is a good indicator
that at least some of the program is written in BASIC.	Further more, if the
program prints a l ot of text on the screen, or requires a good deal of user
inputs, it is a goo d guess that the program is written in BASIC.  The reason
for this is that p rinting text on the screen and inputing data from the
keyboard is easi ly accomplished from BASIC using PRINT and INPUT statements.
To do this from ASSEMBLY language requires a great deal more work.  Also, we
should relieze why a programmer uses ASSEMBLY language.  The only real advantage
to AS SEMBLER is speed.  If speed is not critical, most (non-sadist) programmers
will use BASIC.

  With this in mind, look at how the prog ram runs and prints on the screen.  If
it runs at about the same speed as t he BASIC programs you have written run, it
is a good guess that it is in B ASIC.  Remember, ASSEMBLY language is
considerably faster than BASIC in every respect.

  Finally, read the package the program c ame in.  It usually says what it was
written it.  If it doesn't, a dead give away is in the hardware requirements.
If the program requires APPLESOFT in RO M, then at least part of the program is
probably written in APPLESOFT.

  Now that you have figured out your prot ected program is written in BASIC, it
is time to LIST their code.  The firs t step is to reset into the monitor when
the program is running.

  Now you can try to enter the immediate BASIC mode by typing:


*3D0G


  This is the normal BASIC re-entry point .  But if the protection is worth
anything, this will not work.

  Assuming that didn't work, reload the p rogram and reset into the monitor
again.	The next thing is to try typing 9D84G or 9DBFG.  These are the DOS cold
and warm start routines, respectively.	If you are lucky enough to get a BASIC
prompt, you have done well.  Most of the time, you won't.

  If in either case you succeed in gettin g a BASIC prompt, try LISTing the
program or CATALOGing the disk.  If anyt hing you type starts the program
running again, the protection has chang ed the RUN flag at $D6.  So reset into
the monitor again.

  The RUN flag is a zero page location (a t $D6) which will run the BASIC
program in memory if $D6 contains $80 o r greater (128 or greater in decimal).
This is easy to defeat after you have r eset into the monitor by typing:


*D6:00


  This resets the RUN flag to normal.  Now if 3D0G, 9D84G or 9DBFG previously
rewarded you with a BASIC prompt, this will solve the problem of the program
re-running when you type a command.

  For debugging efforts, the RUN flag can get changed from within a BASIC progra
m by issuing the code:


10 POKE 214,255


  or by poking location 214 with anything greater than 127.  From ASSEMBLY
language, the code would most likely lo ok like this:

800- A9 FF     LDA #$FF
802- 85 D6     STA $D6

  or by loading a register with $80 or gr eater and storing it at $D6.

  Now if 3D0G, 9D84G or 9DBFG did not pro duce a BASIC prompt, then the DOS
being used is more elaborate.  So re-loa d the program and reset into the
monitor after it is running.

  Now comes the final steps in trying to examine a BASIC program.  If you are
using a ROM card in slot zero with an o ld style F8 monitor ROM to reset into
the monitor, turn on the mother board R OMs and turn off the ROM card INTEGER
ROMs by typing:

*C081

  Now reset the RUN flag to normal, just to be sure.  Type:

*D6:00

  Finally, enter APPLESOFT the sure fire way by typing:

*<CTRL C>

  You should see an APPLESOFT prompt.  Now type:

]LIST


  and your APPLESOFT program should now a ppear.

  Applying this to a real world example, try this method with one of Strategic
Simulations releases (SSI).  SSI uses a highly modified DOS called RDOS for
their protection.  SSI uses all the tric ks mentioned to prevent you from
LISTing their programs.  But using the a bove procedure, you can LIST their
BASIC programs.

  In addition, the DOS used by SSI (RDOS) uses the appersand in all of its DOS
commands.  So if you see any ampersands from within their BASIC program, you
know it is a DOS command.  For example, to catalog a SSI disk, after you follow
the above procedure and you are in BASI C, type:


]&CAT


  This will display SSI's catalog.  Very d ifferent, eh!


  Well, back at the ranch, if you want to save your APPLESOFT program to a norma
l DOS disk, do these steps:

  1) Reset into the monitor after the pro gram is running.

  2) If you are using a ROM card in slot zero, Type:

*C081

  3) Now type:

*D6:00
*9500<800.8FFM

  3) Check where the APPLESOFT program en ds by typing:

*AF.B0

  4) Write down the two bytes listed some where.

  5) Boot a 48K normal DOS 3.3 slave disk with no HELLO program.

  6) Enter the monitor by typing:


]CALL-151


  7) Restore the APPLESOFT program by typ ing:


*800<9500.95FFM
*AF:  enter the two bytes you wrote down here, separated by spaces.

  8) Enter BASIC and save the program by typing:

*3D0G
]SAVE PROGNAME

  What you have done is to move $800 to $ 8FF out of the way so you can boot a
slave disk.  After normal DOS is up, you restore $800 to $8FF from $9500 to
$95FF, and then restore the end of APPL ESOFT program pointers so DOS knows how
big your BASIC program is.  Next you just save it to your disk!  Of course there
are other more automated ways of getting programs to a normal DOS 3.3 disk (such
as Demuffin Plus or CopyB), but this is a quick and dirty method that will
always work.  Keep in mind tha t the program may not run from normal DOS because
of more secondary pr otection from within the BASIC program itself.  Any curious
CALLs, POKE s or PEEKs to memory above 40192 (this is memory where DOS resides)
or b elow 256 (zero page memory) should be examined closely.

  I hope this will help you learn more ab out the protected programs you own
that are written in APPLESOFT.

--------------------------------------

  COPYB DOCUMENTATION FILE.  BY THE DISK JOCKEY.


INTRODUCTION:

  There are probably hundreds of ways to protect a program from being copied.
But generally speaking, protection fall s under two categories:  protect the
actual program (by various means), or p rotect a disk full of programs with some
sort of DOS modification.  DOS modi fications are the most common since they are
the easiest to deal with (from the publisher's point of view).  DOS
modifications are also the least succes sful of protection, since someone always
seems to find a way to copy all the files onto a normal DOS disk, eluding all
the protection.  The classic program for dealing with modified DOS' s is
DEMUFFIN PLUS.	It works much the sam e way as Apple's MUFFIN program works.
MUFFIN was written to read files from a DOS 3.2 disk and then write the m to a
DOS 3.3 disk.  DEMUFFIN was a varia tion of MUFFIN, allowing the hardcore 3.2
user to copy files from DO S 3.3 to DOS 3.2.  DEMUFFIN PLUS operates on the same
principle, but use s whatever DOS is in memory to read the disk, and then writes
out to an ini tialized DOS 3.3 disk.  While this is a powerful utility, it only
works with programs that are based on DOS file structures and that have a
catalog trac k.


INTRODUCING COPYB:

  COPYB is a highly modified version of C OPYA which converts a protected disk
that uses a modified DOS and/or RWTS to normal DOS 3.3 format.	The protected
disk may have a normal DOS file structu re, or it may not.  Since COPYB copies
on a track by track basis, this does not matter.  This makes COPYB a far more
flexible tool than DEMUFFIN PLUS.

  COPYB uses the protected disk's RWTS to read in the tracks and then uses norma
l DOS 3.3 to write them back out to an in itialized disk.  Unless otherwise
instructed, COPYB copies track $03 to t rack $22, sector $0F to sector $00 of
each track.  Here are the parameters for COPYB:



LOCATION		   NORMALLY
HEX DEC     DESCRIPTION     HEX DEC NT.
---------------------------------------
22E 558 FIRST TRACK TO READ   03 03 (1)
236 556 FIRST SECTOR TO READ  0F 15 (2)
365 869 RESET SECTOR NUMBER   0F 15 (2)
3A1 929 STOP ON ERROR($18=NO) 38 56 (3)
302 770 TRK TO STOP READING+1 23 35 (4)
35F 863 TRK TO STOP READING+1 23 35 (4)


NOTES (NT.):

  1) This is the first track that COPYB s tarts reading at.  This is normally
set at track 3, so not to copy the protecte d DOS which normally resides on
track 0 through track 2.

  2) These two parameters are normally se t to $0F for 16 sector disks.  Change
these two parameters to $0C for 13 sect or disks.  Most of today's protection
schemes are based on 16 sect ors.  Yet there are still a few using 13 sectors
(such as Muse).  Intere stingly enough, there is a handful of authors that also
us sectori ng other than 13 or 16 sectors per track.  An example of this is
"Thief " from Datamost.  This program uses 11 sectors per track.  COPYB can al
so accommodate these programs.

  at upon reading a 'bad sector' COPYB will stop and display an error.  To let
COPYB keep going after a read error, change this byte to $18 (24 in decimal) .
The equivalent sector on the copied disk will be written blank.

  4) These two parameter determine where COPYB will stop reading the protected
disk.  Normally, this is set to the last track, $22 (34 in decimal) , plus one.
To change this, add one to the last tra ck you want to copy and change these two
parameters.


CREATING COPYB:

  After entering or downloading the BASIC program, save the program by typing:


]SAVE COPYB

  Now you must enter the ASSEMBLY languag e subroutines that COPYB uses.  COPYB
uses the main subroutines that CO PYA uses, so we only have to modify the file
COPY.OBJ0 that is on the DOS 3 .3 System Master.  But first I will explain the
added subroutines that COPY B needs.

  Remember that COPYB uses the protected program's RWTS to read the disk by
moving it from $8000 to $B700 - $BFFF.	After COPYB is done reading the
protected disk, normal RWTS is moved ba ck up to $B700 - $BFFF from $8900 to
write to a normal DOS disk.  This is han dled by some subroutines which will add
to the existing file COPY.OBJ0.  Her e are the routines (formatted in 80
columns):

  0220- 20 B0 02 JSR $02B0 :save the registers.
  0223- A0 B7 LDY #$B7 :botto m page to move from.
  0225- A9 89 LDA #$89 :desti nation page to move to.
  0227- 20 80 02 JSR $0280 :copy normal RWTS from $B700-BFFF to 89 00-91FF.
  022A- 20 B4 03 JSR $03B4 :subro utine to locate RWTS ($3E3).
  022D- A9 03 LDA #$03 :start ing track to read from.
  022F- 8D D1 02 STA $02D1 :store track.
  0232- 8D D2 02 STA $02D2 :store track.
  0235- A9 0F LDA #$0F :start ing sector to read from.
  0237- 8D D3 02 STA $02D3 :store sector.
  023A- 8D D4 02 STA $02D4 :store sector.
  023D- 4C E7 02 JMP $02E7 :jump to read routine.
  0240- 20 B0 02 JSR $02B0 :save the registers.
  0243- A0 80 LDY #$80 :botto m page to move from.
  0247- 20 80 02 JSR $0280 :move normal RWTS from $8900 back to $B700 -BFFF.
  024A- 4C F7 02 JMP $02F7 :jump to write routine.
  0260- 20 B0 02 JSR $02B0 :save the registers.
  0263- A0 89 LDY #$89 :botto m page to move from.
  0265- A9 B7 LDA #$B7 :desti nation page to move to.
  0267- 20 80 02 JSR $0280 :move normal RWTS from $8900 back to $B700 -BFFF.
  026A- 4C 17 03 JMP $0317 :jump to write routine
  0270- 20 B0 02 JSR $02B0 :save the registers.
  0273- A0 89 LDY #$89 :botto m page to move from.
  0275- A9 B7 LDA #$B7 :desti nation page to move to.
  0277- 20 80 02 JSR $0280 :move normal RWTS from $8900 to $B700 -BFFF.
  027A- 4C BC 03 JMP $03BC :Resto re the registers and exit.
  0280- 84 07 STY $07 :store original page to move from.
  0282- 85 09 STA $09 :store destination page to move to.
  0284- A2 09 LDX #$09 :load X with number of pages to move.
  0286- A9 00 LDA #$00 :load accum with $00.
  0288- A8 TAY :trans fer #$00 to Y.
  0289- 85 06 STA $06 :store #$00 at $06.
  028B- 85 08 STA $08 :store #$00 at $08.
  028D- B1 06 LDA ($06),Y:load accum with the address pointed to by locations
	$06 & $07 (lo-hi order), index ed by Y.
  028F- 91 08 STA ($08),Y:store accum at the address pointed to by locations $07
	& $08 (lo-hi order) index ed by Y.
  0291- C8 INY :incre ment Y.
  0292- D0 F9 BNE $028D :conti nue until end of page.
  0294- E6 07 INC $07 :incre ment original page.
  0296- E6 09 INC $09 :incre ment destination page.
  0298- CA DEX :decre ment X.
  0299- D0 F2 BNE $028D :if ha ven't moved 9 pages, do again.
  029B- 60 RTS :retur n from subroutine.
  02B0- 8D C7 03 STA $03C7 :store accumulator at $3C7.
  02B3- 8E C8 03 STX $03C8 :store X-register at $3C8.
  02B6- 8C C9 03 STY $03C9 :store Y-register at $3C9.
  02B9- 60 RTS :retur n from subrotine.

  So to create the objective file for COP YB, we should first enter the monitor
by typing:

]CALL-151

  Next we should initialize the memory ar ea by typing:

*220:FF N 221<220.2CDM

  Now bload the file COPY.OBJ0 from the D OS 3.3 System Master by typing:

*BLOAD COPY.OBJ0

  Now type in the new code and some chang es:

*228:80 02 20 B4 03 A9 03 8D
*230:D1 02 8D D2 02 A9 0F 8D
*238:D3 02 8D D4 02 4C E7 02
*240:20 B0 02 A0 80 A9 B7 20
*248:80 02 4C F7 02
*260:20 B0 02 A0 89 A9 B7 20
*268:80 02 4C 17 03
*270:20 B0 02 A0 89 A9 B7 20
*278:80 02 4C BC 03
*280:84 07 85 09 A2 09 A9 00
*288:A8 85 06 85 08 B1 06 91
*290:08 C8 D0 F9 E6 07 E6 09
*298:CA D0 F2 60
*2B0:8D C7 03 8E C8 03 8C C9
*2B8:03 60
*2C1:20
*2C4:40
*2C7:60 02
*2CB:13 7F B0 60
*2D0:01 03 03 0F 0F
*2D8:B4
*2DD:02
*2F8:B4
*318:B4
*3C7:02 9D C0 B3 C4 C4
*220:20 B0 02 A0 B7 A9 89 20

  After entering these changes, save the file by typing:

*BSAVE COPYB.OBJ,A$220,L$1AB



USING COPYB:

  To use COPYB, you must capture the fore ign RWTS and put it at locations $8000
through $88FF.	You can do this on e of two ways:

  1) Boot the protected disk and after th e foreign DOS is loaded, reset into
the monitor.  The foreign DOS will usual ly be loaded a few seconds after the
boot starts.  You can tell this beca use many times a BASIC prompt will appear
at the bottom of the text screen .  Use the monitor move command to move RWTS
down to $8000 as so:

  *8000<B700.BFFFM

  Now boot a 48k slave disk (this will no t destroy memory from $900 to $95FF)
and run COPYB.



  ENTERING THE PARAMETERS AND RUNNING COPYB:

Run COPYB by typing:

]RUN COPYB

  The program will come up and ask what p arameters to use, all described above.
COPYB will poke in the values you have entered for you.  Enter all values in
DECIMAL.

  After entering the parameters, you will be asked if your selections are
correct.  If you answer YES, the next se t of prompts will appear, which should
look familiar.	Enter the origina l and destination drive and slot numbers, just
like in COPYA.	Lastly, yo u will be asked if you want the destination disk to
be initialized, res pond yes or no.  Now press the RETURN key to start the copy.

  When the copy is completed, assuming al l went correctly, you will have a
normal DOS 3.3 version of your protecte d disk which may run or be examined and
changed more easily then t he original disk.

  This method of deprotection is more dep endable that using DEMUFFIN PLUS and
covers more types of programs.	I am sur e you will find COPYB an excellant
utility to have.
---------------------------------------

  INTRODUCTION TO KRAKING PART TWO.B.  MAK ING YOUR OWN CUSTOM F8 MONITOR ROM.
BY THE DISK JOCKEY.

  In this section I will describe how to make the code for the modified F8
monitor ROM that you will find extremel y useful in kraking.

  The EPROM will act like a old style F8 monitor ROM with regards to resets.
What I mean is that hitting reset will cause you to jump into the monitor.

  The EPROM will also have a special func tion when an NMI is encountered.  Upon
NMI, this ROM will push the accumu lator, the x-register,the y-register and
location $00 onto the st ack.  The stack pointer will then be saved at location
$00.

  Next, the EPROM will move $00 to $4000 into a RAM card in slot zero.	This
clears the way for a 16K slave disk boo t.  Here is the code and an explanation
of how it works (in 80 colu mn format):




FCC9-	48	    PHA 	  PUSH
ACCUM ONTO THE STACK.
FCCA-	8A	    TXA 	  TRANS
FER X-REG TO ACCUM.
FCCB-	48	    PHA 	  PUSH
(X) ACCUM ONTO THE STACK.
FCCC-	98	    TYA 	  TRANS
FER Y-REG TO ACCUM.
FCCD-	48	    PHA 	  PUSH
(Y) ACCUM ONTO THE STACK.
FCCE-	A5 00	    LDA   $00	  LOAD
ACCUM WITH $00.
FCD0-	48	    PHA 	  PUSH
($00) ACCUM ONTO THE STACK.
FCD1-	BA	    TSX 	  TRANS
FER STACK POINTER TO X-REG.
FCD2-	86 00	    STX   $00	  STORE
 STACK POINTER AT $00.
FCD4-	AD 81 C0    LDA   $C081   ENABL
E WRITE TO RAM BANK 1.
FCD7-	AD 81 C0    LDA   $C081   (MUST
 ACCESS TWICE).
FCDA-	A0 00	    LDY   #$00	  -----
------------------------------
FCDC-	B9 00 00    LDA   $0000,Y MOVE
$00 TO $FF INTO RAM CARD SO WE
FCDF-	99 00 D0    STA   $D000,Y CAN U
SE ZERO PAGE FOR REST OF MOVE.
FCE2-	C8	    INY
FCE3-	D0 F7	    BNE   $FCDC   -----
------------------------------
FCE5-	84 00	    STY   $00	  MOVE
$100-$2FFF INTO BANK 1
FCE7-	84 02	    STY   $02	  OF TH
E RAM CARD.
FCE9-	A9 01	    LDA   #$01
FCEB-	85 01	    STA   $01
FCED-	A9 D1	    LDA   #$D1
FCEF-	85 03	    STA   $03
FCF1-	B1 00	    LDA   ($00),Y
FCF3-	91 02	    STA   ($02),Y
FCF5-	C8	    INY
FCF6-	D0 F9	    BNE   $FCF1
FCF8-	E6 03	    INC   $03
FCFA-	E6 01	    INC   $01
FCFC-	A5 01	    LDA   $01
FCFE-	C9 30	    CMP   #$30
FD00-	D0 EF	    BNE   $FCF1   -----
------------------------------
FD02-	4C CD FE    JMP   $FECD   RAN O
UT OF ROOM HERE, JMP TO $FECD.
.
.
.
FECD-	A9 D0	    LDA   #$D0	  RESET
 MOVE ROUTINE POINTERS.
FECF-	85 03	    STA   $03
FED1-	AD 89 C0    LDA   $C089   ENABL
E BANK 2 OF RAM CARD.
FED4-	AD 89 C0    LDA   $C089   (MUST
 ACCESS TWICE).
FED7-	B1 00	    LDA   ($00),Y -----
------------------------------
FED9-	91 02	    STA   ($02),Y MOVE
$3000-$3FFF INTO BANK 2
FEDB-	C8	    INY 	  OF TH
E RAM CARD.
FEDC-	D0 F9	    BNE   $FED7
FEDE-	E6 03	    INC   $03
FEE0-	E6 01	    INC   $01
FEE2-	A5 01	    LDA   $01
FEE4-	C9 40	    CMP   #$40
FEE6-	D0 EF	    BNE   $FED7   -----
------------------------------
FEE8-	AD 82 C0    LDA   $C082   TURN
ON MOTHERBOARD RAM AND WRITE
FEEB-	AD 8A C0    LDA   $C08A   PROTE
CT BANKS 1&2 OF RAM CARD.
FEEE-	4C FD FE    JMP   $FEFD   RAN O
UT OF ROOM, JUMP TO $FEFD.
.
.
.
FEFD-	A2 1C	    LDX   #$1C	  THIS
SUBROUTINE OUPUTS THE
FEFF-	BD 0B FF    LDA   $FF0B,X MESSA
GE "RAM CARD LOADED WITH
FF02-	9D D6 07    STA   $07D6,X $00-3
FFF" AT THE BOTTOM OF
FF05-	CA	    DEX 	  THE T
EXT SCREEN.
FF06-	10 F7	    BPL   $FEFF   -----
-----------------------------
FF08-	4C 59 FF    JMP   $FF59   ALL D
ONE, EXIT THRU NORMAL RESET.


  To create this EPROM file, here are the steps:

  1) Boot a normal DOS disk and enter the monitor by typing:

  ]CALL -151

  2) Move your autostart F8 monitor ROM c ode down into RAM by typing:

  *4800<F800.FFFFM

  3) Now change the code as follows:

  *4CC9:48 8A 48 98 48 A5 00 *4CD0:48 BA 86 00 AD 81 C0 AD 81 C0 A0 00 B9 00 00
99 *4CE0:00 D0 C8 D0 F7 84 00 84 02 A9 01 85 01 A9 D1 85 *4CF0:03 B1 00 91 02 C8
D0 F9 E6 03 E6 01 A5 01 C9 30 *4D00:D0 EF 4C CD FE *4ECD:A9 D0 85 03 AD 89 C0 AD
89 C0 B1 00 91 02 C8 D0 F9 E6 03 *4EE0:E6 01 A5 01 C9 40 D0 EF AD 82 C0 AD 8A C0
4C FD FE *4EFD:A2 1C BD 0B FF 9D D6 07 CA 10 F7 4C 59 FF *4F0B:52 41 4D 60 43 41
52 44 60 4C 4F 41 44 45 44 60 57 49 54 48 60 *4F20:64 70 70 6D 73 46 46 46
*4FFA:C9 FC 59 FF

  4) Now save the file to a disk by typin g:

  *BSAVE F8 SAVE RAM EPROM,A$4800,L$800

  5) Finally, burn the 2716 EPROM with th is code or have someone do it for you.

  Now to use your new 2716 EPROM, you mus t make these changes directly to the
chip itself (not advisable), or to a ju mper socket which your new chip will
plug into, and then which will be plugg ed into your motherboard.

  You need a 24 pin low-profile socket (n ot wire-wrap!, they will destroy your
motherboard sockets!).	These are availa ble from radio shack (part number
276-1989) or the such.	Now with the soc ket up-side-down and the pins looking
you in the face, it should look like this:

---------------------------------------
!  13 14 15 16 17 18 19 20 21 22 23 24!
! ./ ./ ./ ./ ./ ./ ./ ./ ./ ./ ./ ./ !
!				      !
!				      !
!				     -
!			   (notch)->!
!				     -!
!				      !
! .  .	.  .  .  .  .  .  .  .	.  .  !
!/  /  /  /  /	/  /  /  /  /  /  /   !
!12 11 10 9  8	7  6  5  4  3  2  1   !
---------------------------------------

  Now your soldering skills come in handy !  Using some short, hi-gauge wire
(wire-wrap is preferable, but anything in the 26-30 gauge will work), solder a
piece between pins 21 and 24, and solde r a piece between pins 12 and 18.  Be
extremely careful not to short out t he wire or to cross solder any pins!  Also,
try and solder as close to the ba se of the socket as possible, since you have
to cut off pins 18 and 21 afte r you have finished soldering them.  Now cut of
pins 18 and 21 as close to t he base of the socket without cutting the freshly
soldered wires!  Remember, p ins 18 and 21 should be short enough so that they
will not touch the socket you will be plugging this one into.  The socket should
now look like this:

---------------------------------------
!  13 14 15 16 17 18 19 20 21 22 23 24!
! ./ ./ ./ ./ ./ ./ ./ ./ ./ ./ ./ ./ !
!		 x	  x	   /  !
!		/	 /	  /   !
!	       /	/--------/   -
!    /--------/ 		    !
!   /				     -!6
!  /				      !
! /  .	.  .  .  .  .  .  .  .	.  .  !
!/  /  /  /  /	/  /  /  /  /  /  /   !
!12 11 10 9  8	7  6  5  4  3  2  1   !
---------------------------------------

  Double check your soldering and the con nections (and notice that pin 18 and
21 are cut off!).  Now carefully remove the ROM labelled F8 (it is the socket
farthest on the left that has 24 pins a s you face the keyboard) and plug this
jumper socket into the motherboard.  Now plug your modified 2716 EPROM into thi
s jumper socket and your all done!  Make s ure you have the notch pointing in
the same direction as the other ROMs (towar ds the keyboard).

  When you turn on the Apple you should s ee a screen full of garbage with the
monitor prompt at the bottom of the scr een.  To boot your Apple, just type "6
ctrlP", and your computer will act j ust as usual.

  ---------------------------------------

  INTRODUCTION TO KRAKING PART TWO.C.  MAKING YOUR OWN NMI BOARD.  BY THE DISK
JOCKEY.

  In this article I will describe how to make your own NMI board that will work
in conjunction with the modified F8 monitor EPROM you have (or will) create.
Here is the parts lists for the NMI board:

  (1) 7400 or 74LS00 chip.  Radio Shack part #276-1801.  $0.59

  (1) SPDT momentary push switch.  Radio Shack part #275-1549.	$2.19

  (1) 14 pin low profile or wire wrap socket.  Radio Shack part #276-1999 or
#276-1993.  $0.89

  (2) 3.3k ohm resisters, 1/4 watt.  Radio Shack part #271-1328.  $0.39

  (1) Dual plug-in interface board.  Radio Shack part #276-164.  $4.95 NOTE:
This part has been discontinued by Radio Shack, but you can sometimes still find
them in the junk bin.  Cut the board so it will fit inside your Apple.

  ALTERNATIVELY:  (1) Apple bare board number PAPGBP5001.  $13.95 from Priority
Electronics, 9161 Deering Ave., Chatsworth, CA 91311.

  After you have obtained all the parts above, you should solder the 14 pin
socket and the two resistors somewhere convenient on the bare board.  Next get
some hi-gauge wire and make the following connections:

  1) Connect pin 25 of the bare board to one leg of each of the two resistors.

  2) Connect each of the other legs of the resistors to the two outside contacts
of the switch.	(one resistor goes to one contact, the other resistor goes to
the other contact).  Use some good wire.

  3) Connect pin 25 of the bare board to pin 14 of the 14 pin socket.

  4) Connect the middle contact of the switch to pin 7 of the 14 pin socket.

  5) Connect pin 26 of the bare board to pin 7 of the 14 pin socket.

  6) Connect pin 2 of the 14 pin socket to pin 6 of the 14 pin socket.

  7) Connect pin 3 of the 14 pin socket to pin 4 of the 14 pin socket.

  8) Connect pin 4 of the 14 pin socket to pin 29 of the bare board.

  9) Connect the leg of one of the resistors that is connected to the switch to
pin 5 of the 14 pin socket.

  10) Connect the other leg of the resistor that is connected to the switch to
pin 1 of the 14 pin socket.

  11) Check all connections twice, and don't get confused on what pin is what on
the bare board and the 14 pin socket.

  You have now completed building your own NMI board.  This board may be plugged
into any one of the peripheral slots.

---------------------------------------

THE ROM CARD. BY THE DISK JOCKEY.

OBJECTIVE:

  While being able to deprotect programs from files on Pirate's Harbor is
certainly helpful in the quest for copyable software, it would be optimal to
deprotect your own programs without the help of other sources.	This works on
the premise that you can give a man a fish and feed him today, or you can teach
him to fish and feed him for life.

  With this in mind, our objective is to teach you the ways of deprotection in
general, and mention some of the tools that will make this easier.  Although
some of these tools will cost money and are somewhat specialized, they will only
increase your knowledge of the Apple computer, for what that's worth.

  INTRODUCING THE ROM CARD:

  The foremost of important tools for easily snooping through memory is the ROM
card.  The ROM card was originally developed for t`g{m(a|`(xzograms written in
both INTEGER and APPLESOFT BASIC.  Remember that your motherboard (the big green
printed circuit board inside your computer case) can house only one of the BASIC
languages, either INTEGER or APPLESOFT.  When the Apple was originally released,
it was only available with INTEGER BASIC.  So many programs were written in
INTEGER, and would not run on the Apple II+ (with APPLESOFT on board) when it
was introduced.

  Before RAM memory was very cheap, many people bought ROM cards for their Apple
II+ that could be put in slot zero (as you would a RAM card), to enable them to
run programs that were written in either BASIC language.  It was just as though
you had loaded INTEGER BASIC into you RAM card, like the DOS 3.3 System Master's
HELLO program does.  When RAM cards became available at a reasonable cost,
everyone started buying them because they are so much more versatile for the
average folk.  That is why you don't see ROM cards for sale too much any more.
But for deprotecting Apple programs, the ROM card is indespensible.

  Also, for the Apple II owner who wanted to run the newer APPLESOFT programs,
the ROM card was available with APPLESOFT ROMs.  The INTEGER and the APPLESOFT
versions of the ROM card are identical, except for the actual ROMS on the card.
In other words, one had INTEGER ROMs and the other had APPLESOFT ROMs, and there
is no other differences.

  THE REASONS WHY:

  Their are several reasons the ROM card is so important.  The least of the
reasons is the need for INTEGER BASIC or the Programmer's Aid chip.  If you can
get a ROM card cheaply without INTEGER or the Programmer's Aid ROMs, do so.
From a cost outlook, it is to your advantage.  Besides, INTEGER is a dead
dinosaur, and who really cares if it's faster than APPLESOFT?

  The reason we want a ROM card is so we can put an old style F8 monitor ROM and
THE INSPECTOR ROM (from Omega Microware) on it.  These two ROM chips are really
essential for learning more about protected programs.  Ultimately, we would like
WATSON in conjunction with THE INSPECTOR, but to do so you will also need
INTEGER BASIC ROMs, since WATSON uses some routines from the INTEGER BASIC ROMs.
Watson enhances the Inspector by adding even more commands and flexibility.  The
combination of Watson and the Inspector provides you with great power for not
only snooping, but also for general purpose utility chores.

  The reason we want the old style F8 ROM should be obvious by now.  After
reading several kraking articles and from your own experiences, you have noticed
that it is impossible to break out of many programs with just an autostart F8
monitor ROM.  The reason we should have the old style F8 ROM on the ROM card and
not on the mother board is for convenience.  The ROM card has a switch which
determines which F8 monitor ROM is active when you hit reset.  So you can have
the convenience of the Autostart F8 monitor ROM, and when you need it, hit the
switch and be able to break out of any program you want with the old style F8
monitor ROM.

  OBTAINING YOUR OWN ROM CARD:

  ROM cards are available used at very cheap prices.  Check your local Apple
users' group.  Alternatively, you can get blank cards and stuff it yourse8f.  I
would suggest stuff your own since the parts are easy to get, and it is usually
the least expensive route!  I have also seen Japanese clone cards for sale at a
very reasonable price.	The best place to check for these is in The Computer
Shopper, a bi-monthly newspaper of Apple and other computer bargins.

  OBTAINING YOUR OWN ROMs:

  You can either buy an old style F8 monitor ROM, or you can make one by
changing your autostart F8 code slightly.  After making the change, you can save
the file to disk and have a friend or your local computer store burn the image
into a 2716 EPROM.  Here is the instructions for creating your own:

  1) Boot a normal DOS 3.3 disk.  2) Enter the monitor by typing:

]CALL-151

  3) Move the autostart F8 ROM image into RAM by typing:

*4800<F800.FFFFM

  4) To enter the monitor when reset is pressed, type these changes:

*4FFC:59 FF

5) Bsave the file to a blank disk by
typing:

*BSAVE OLD $F8,A$4800,L$800

6) Burn this image into a 2716 EPROM.

  This new F8 EPROM will be just like the autostart version F8 ROM except when
you hit reset, you will be in the monitor and not in BASIC.  Now you can reset
out of any program.

  Alternatively, you can use a modified F8 EPROM too, as described in other
kraking articles.  This will give you the advantage of being able to save memory
from $00 to $8FF when you hit reset.  This would certainly be helpful at times.

  If you want INTEGER BASIC on your ROM board, you can either buy the ROMs from
your local Apple dealer, or you can make them.	When you bought your Apple disk
drive and controller you also bought DOS 3.3, the DOS 3.3 System Master, and all
the programs on the System Master, including INTEGER BASIC.  So you can also
burn INTEGER into 2716 EPROMs just like you burned your new F8 EPROM, and put
them on your ROM card.	Here are the steps to do this:

  1) Boot your DOS 3.3 System Master.

  2) Bload the file INTBASIC by typing:

  ]BLOAD INTBASIC,A$2000

  3) Bsave the INTEGER files to a blank disk by typing:

]BSAVE INT $E0,A$3000,L$800
]BSAVE INT $E8,A$3800,L$800
]BSAVE INT $F0,A$4000,L$800

  4) Burn three 2716 EPROMs from each of these files.

  IMPORTANT:  In order to use 2716 EPROMs on your ROM card instead of the
F8 ROM socket on the ROM board white circle with the word "2716" next to it.
Inside the circle will be four solder pads, grouped into two pairs.  Notice each
pair has two pads real close together, but not touching.  Take a soldering iron
and cross each pad in each pair together with some solder.  So now the circle
will have two solder pads, instead of four.  DO NOT CROSS ALL FOUR PADS
TOGETHER!  Your ROM board will now except ONLY 2716 EPROMs, so when you do this
you have to use all 2716 EPROMs, and no 9316 ROMs.

  While on the subject of jumpers, there is another jumper on your ROM card just
below the E8 ROM.  This jumper, when crossed, will ignore the position of the
ROM card switch.  Reset will always ignore the F8 monitor ROM on the ROM board,
and just use the motherboard F8 monitor ROM.  Obviously, we do not want to cross
this jumper.

  If you can't tell if you should cross the 2716 jumper because you don't know
if you have 2716's or 9316's, it is easy to tell the difference.  2716's have a
small quartz window on their face, usually beneath some label.	The window is
used to erase the EPROM (hence the name Erasable, Programable,0Read Only
Memory).  They should also say "2716" somewhere on them too.

  If you must mix 9316's and 2716's on the same ROM card, do not cross any of
the two pairs of jumpers.  Instead, refer to INTRODUCTION TO KRAKING PART 2.B on
how to make 2716 scrambler sockets for using 2716's in 9316 applications.

  9316's are the all black 24 pin ROM chips that come with your Apple, and are
not erasable.  They will not have a quartz window.

  Now plug in your F8 monitor EPROM or ROM in the socket labeled F8, and do the
same with the other E0, E8 and F0 INTEGER EPROMs or ROMs.  We are ready for the
next step.

THE INSPECTOR:

  The next thing the ROM board enables us to do is to use THE INSPECTOR from
Omega Microware.  The Inspector is basically a sector editor program with some
really nice features which come in handy when deprotecting programs.  To use The
Inspector, we just reset out of a program and into the monitor, and type C080 N
D800G.	Now The Inspector is running without disturbing anything in memory
outside of what normally gets disturbed upon hitting reset.

  Besides being a sector editor, The Inspector has a very useful FIND command
which enables us to find any string of bytes in memory or to locate them on a
disk.  This can help us find where a particular routine is being called from, or
to help find the starting address of a program, etc.  Also, The Inspector has a
free sector map, removes DOS from a disk, does nibble reads of protected disks,
displays bytes in HEX or ASCII, reads half tracks, and compares or verifies
disks.	It also has unlimited uses in snooping and changing memory and disks.

  The Inspector is VERY useful, especially in conjunction with its partner,
WATSON (also from Omega1Microware).  It is the most powerful and well used
utility I have.  And since it is on my ROM card, it is always available without
disturbing mother board memory.  This is why it is so useful.  If we had to load
it in from disk like any other program, it would be just like any other sector
editor to a large extent.

  Ask around and try and find someone with the Inspector and Watson code saved
in a Bfile so you can burn your own Inspector EPROM and plug it into your ROM
card.  If you buy the Inspector, BE SURE you tell Omega when buying The
Inspector that you want it in 2716 EPROM form if you are planning on using only
2716 EPROMs on your ROM card, instead of 9316's.

WHERE Do I PUT IT?:

  Now that you have a ROM board, what slot should you put it in?  Generally, the
conventional slot is slot zero.  But, I am sure many of you have RAM cards in
slot zero.  It is probably best 99 percent of the time to have your RAM card in
slot zero, since most programs which use RAM cards expect it in only slot zero
(although it has some uses in other slots).  So that leaves you with two
choices, put your ROM card in another slot, or play musical slots when you need
the ROM card.

  I prefer to put my ROM card in slot two since the card (and The Inspector) is
still always available, but that presents some problems.  The main problem is
that after flipping the ROM board switch up to use the old F8 monitor ROM and
hitting reset, your computer cannot find APPLESOFT when you boot a disk, it can
only find INTEGER BASIC (assuming you have it on the ROM card).  One way out is
to flip the switch back down and hit reset again before booting a disk.  I do
not recommend this when deprotecting a program since now your computer will jump
to the reset routine that was there when you originally hit reset.  Of course,
there is a better way.

  After reseting into the monitor and just before you boot a disk you must turn
off your ROM card ROMs and turn on the motherboard ROMs.  This is accomplished
with a softswitch, much like turning on the hi-res page.  Remember how we
activated the Inspector with C080 N D800G?  Well, the C080 turns on the ROM
card, so those ROMs are active, much like typing INT from BASIC.  If you type
C081 from the monitor, this turns the ROM card ROMs off, and the motherboard
ROMs on.  If your ROM card is in another slot, you need to type the slot number
times ten, and add it to C081.	Then you can boot a disk, and APPLESOFT will be
found.	Here is a chart of what you would type from the monitor just prior to
booting a disk (you do not have to do this if your ROM card is in slot zero):

	  TURN ON	      TURN ON
SLOT	  ROM CARD	    MOTHERBOARD
---------------------------------------
 0	    C080		C081
 1	    C090		C091
 2	    C0A0		C0A1
 3	    C0B0		C0B1
 4	    C0C0		C0C1
 5	    C0D0		C0D1
 6	    C0E0		C0E1
 7	    C0F0		C0F1


  For example, if your ROM card was in slot two, and you have reseted into the
monitor, type:

  *C0A1

  before you boot a disk to turn on your motherboard ROMs so APPLESOFT can be
found.

  Likewise, if you have reset into the monitor and you want to use the
Inspector, type (assuming slot two):

  *C0A0 N D800G

  Notice we multiply the slot number by twenty and add it to $C080 or $C081.

  Another alternative is to use DAVID DOS from David Data when you boot normal
DOS 3.3.  This DOS is incredible in just speed savings of loading programs.  It
will also recognize your ROM card in any slot (and hence solves our problem),
has a relocatable DOS function to put DOS in your RAM card, has a find command,
and has a disassemble command.	If that is not enough, it has a TLOAD and TLIST
command which loads and lists text files like BASIC or binary files!  This alone
make DAVID DOS worth the price.  The only disadvantage to David DOS is it does
not have an INIT disk command.	To put David DOS on another disk requires using
a program that comes with it.

  Of course, if you are booting a disk which does not run under normal DOS, you
can not use David DOS and you must use the first alternative.

  CONCLUSION:

  This completes our discussion of ROM cards and what configuration is most
desirable.  In summary, we would like a ROM card with an old style F8 monitor
ROM, The Inspector, and ultimately, INTEGER BASIC and WATSON.  Next we will
discuss some general methods of deprotecting single load programs.

---------------------------------------

INTRODUCTION TO KRAKING PART TWO. USING
 SOME MINIMAL HARDWARE.
BY THE DISK JOCKEY.

INTRODUCTION:

  Assuming that you have read part one of this series, you now should possess
some basic information regarding the ar chitecture of the Apple computer.  Using
this basic information you will g o quite far down "memory lane" in your kraking
efforts, but it doesn't stop th ere.  Now we need to talk about some basic
hardware you will need to make yo ur job easier.  What we will be discussing is
the use of resets and "NM Is" in the art of kraking.

  As you have probably noticed, when you try to reset from a protected program
with your II+ or //e, the computer can do some strange things.	This is because
the reset key is actually a programable key that when hit, can be made to run a
program within memory.	In most cases, t he program that is run clears memory
and re-boots your disk.  This of course keeps undesirables from snooping through
memory, discovering any secrets a publisher may be hiding.

  The reason the reset key is programable computer will jump to the address
point $3F3, in "backassward" order.  This mean s if $3F2 = 00 and $3F3 = 60,
then upon reset you will jump to $6000.  The worst part about this is there is
no way to stop it unless you use some hard ware (although you may use a RAM
card, I will discuss this method later) .

  The hardware I am getting to is the fam ed "old F8 monitor ROM", which when
you hit reset, jumps unconditionally to $FF59 and puts your program to a halt
and leaves you in monitor.  Using this c hip, you may break out of any program
and examine memory.  Now you ask, "what the hell is a old F8 monitor ROM
anyways?".

  The F8 monitor ROM is a set of programs that oversees the operations of your
Apple, and hence is called a "monitor".  It is a ROM because it is "Read Only
Memory", or a permanent memory, as oppo sed to random Access Memory, or RAM.
The reason it is called a "F8" ROM is because it occupies memory from $F800 to
$FFFF.	The chip is located jus t in front of the peripheral slots on the II+,
and should be labeled "ROM- F8".  On a //e, this chip is not as accessible as on
the II+, and generally you are "SOL" (shit out of luck) in trying to replace it.
But fear not, ref er to the article "The ROM card" or "RAM card Resets" for help
in your effo rts.

  Back in the old days when the Apple was first introduced, it came with the "ol
d style F8 monitor ROM".  But later it was replaced by the "autostart F8 monitor
ROM".  It would be most easy for us to f ind the old style ROM and replace it
with our present autostart monitor ROM.  This would allow us to reset out of an
y program, at any time with it installed.  But before you run out and buy one,
read on as I introduce another topic th at will parallel our ROM discussion.


INTRODUCING THE NMI:



  NMI is an acronym for NON MASKABLE INTE RRUPT, and as the name implies, it can
not be prevented (or masked) on the Apple.  The NMI is the basis behind mos t of
the "copy cards" on the market, such as the Wildcard or Replay cards.  The NMI
allows us to interrupt a program, a nd to restart it with minimal effort.
Obviously this is of extreme importance to the krakist, who wants to interrupt a
programs, save memory to a normal DOS disk, and restart the program upon BRUNing
the file.

  To use an NMI you can simply crossed pi n 26 (ground) and pin 29 (NMI) of any
one of the peripheral slots.  You can do this with a 100 ohm resistor.	This wil
l execute an NMI.

  Unfortunately, this is less than ideal since when you try to do this, you will
probably execute 20 or so NMI's.  This i s because it happens so fast, that an
NMI will interrupt an NMI, and so on fo r many, many times.  This will put much
garbage onto the stack (page one).  Using a switch for this chore doesn't help
since the switch actually slams (o r bounces) against itself many times causing
the same problem.  To solve this we need to make a "de-bounced" NMI switch.
This will constitute about $8 t o $20 of capital resources (depending on your
parts supplier), and a solderin g iron.  This is considerably less expensive
than a store bought NMI board, but will lack some of the features the commercial
ones have.  A fu ll discussion of how to make an NMI board is in the file
"KRAKING PART TWO.  C".

  Assuming you have made your NMI card, I will now tell you more about how it
works and its uses.  If you don't fully understand the workings of the NMI,
don't worry about it.  Just try and foll ow along.

  When you push the NMI switch, the 6502 processor will push the present value
of the program counter on the stack alo ng with the processor status word.  Then
it will jump to what ever location s are pointed to by $FFFA and $FFFB.  So the
restart a interrupted pro gram, we only need to restore the registers (x, y,
accum), the lower page s of memory, and the stack pointer, and do a "RTI"
(return for int errupt) instruction.

  Now remember our old F8 monitor ROM?	We ll these two locations live in the
monitor ROM.  It would be nice if we cou ld change these location and after an
NMI is executed, run a small program to that will save the registers, the stack
pointer, and the lower pages of m emory.  Now this leads us back to our old
friend, the F8 monitor ROM.

  This is indeed what we need to do.  The best thing would be to execute an NMI,
and then jump to a routine that moves t he lower 16K of memory into a RAM card.
Then we could boot a 16K slave di sk (which would only disturb the lower 16K of
memory), and save all of m emory to a disk.  After we have saved all of memory,
we could reconstruct our program and re-start, or do a "return from interrupt".

  Of course to do this we need to change some of the code in the F8 monitor ROM.
We can not do this directly to the F8 c hip that comes with your Apple since it
is Read Only Memory.  But we can move the code in the ROM down to RAM, put our
routines in, and burn a new "2716 E PROM".  The 2716 EPROM will replace the ROM,
and will have our new kraking rout ines in it.

  Now you ask, "how do I burn a 2716 EPRO M?".  Well, if you don't have access
to an EPROM programmer, you can take yo ur modified F8 code (saved to a disk) to
a local computer store and they shou ld be able to burn you one for a nominal
fee.

  Refer to the article entitled "KRAKING PART TWO.B" for an explanation of how
to create the code for the new EMPROM a nd how to plug it in after it is burnt.

  Lastly, we need to make a 16K slave dis k and to use the program to save all
of memory to a disk.  To get the program type it in or download it from someone
.  To create a 16K slave disk, do the foll owing:  (NOTE:  this only applies to
the Apple II or II+)

  1) Turn off your computer.

  2) Open the lid, and look for the 3 row s of chips that have a white line
boarder around them.  These are the 48K of RAM in your Apple II+.

  3) Remove any one chip from each of the two rows of RAM furthest away from the
keyboard.

  4) Turn the computer on and boot your D OS 3.3 System Master.

  5) Put a blank disk in the drive and ty pe:

]INIT RAM 48K SAVER



6) When this is complete, turn the comp

uter off and replace the two chips.



  7) Run a sector editor and change the f ollowing sectors of the 16K slave
disk:


TRK   SECTOR   BYTE   FROM  TO
------------------------------
$00    $01     $48    $03  $00
$00    $0D     $42    $06  $34

  8) Write the sector back out to your 16 K slave disk.

  9) Delete the Hello program on the disk by typing:

]DELETE RAM 48K SAVER

  Now download the "RAM 48K SAVER" file a nd save it to your 16K slave disk.
Also down load the file "MEMORY MOVE WR ITER".  Save these to your 16K slave
disk also, and then write protect it.

  In the next episode, I will discuss how to use these hardware and software in
a real-life application.

---------------------------------------

DEPROTECTION PART THREE.
PRACTICAL USES FOR THE NMI/MODIFIED ROM HARDWARE.
BY THE DISK JOCKEY

  Now that you have burned your own F8 mo nitor ROM, constructed your own NMI
board and created a 16K slave disk with the previously mentioned files, its time
to put it all together and use it (also make sure you have a RAM card in slot
0).  The primary use for these hard ware devices is for the single load program.
As a practical example, we wil l be putting the Locksmith 5.0 fastcopy program
into a file.  This prog ram is a really fast normal DOS copy program that is
worth having in a file.

  First turn off your computer and instal l your new F8 monitor EPROM into the
motherboard, and put your NMI board in any slot.  Now boot your Locksmith 5.0
(an original or a copy will do) and select the "16 sctr utilities" option.  Next
select the "16 sector fast disk ba ckup".  Now just after the drive stops
spinning, and before you see the prompt "drive- original:1", hit the NMI switc h
on your NMI card.  You should then be in the monitor.

  Now boot your 16K slave disk.  The "RAM 48K SAVER" program will run and will
initialize a disk and save all 48K of m emory to your disk.

  Finally, run the "MEMORY MOVE WRITER" p rogram and select the number of moves
as one.  Next select the running address as $8000.  Use a forward memory move,
and enter the start page as $40, and th e hi page as $80.  Next select the
starting page to move to as $00.  Finall y, select the text page, page one, and
full text.  Now enter $8024 as the address to jump to and save the memory move
program to disk.

  Now its time to put all these files tog ether as the final product.  Boot a
normal 48K disk and Bload the following files by typing:

]BLOAD ^00-3FFF,A$4000
]BLOAD MEMORY MOVE $8000,A$8000
]BLOAD RERUN,A$8024

  Now make the file run when you brun it by typing:

]CALL -151

*3FFD:4C 00 80


  Now we can save the final product by ty ping:

*BSAVE LS 5.0 FASTCOPY,A$3FFD,L$4040

  Congratulations!  You now have deprotect ed the Locksmith fast copy program
into a file that you may brun a nytime!

  This technique will work well for depro tection other single load programs
too!  The main advantage to this techniq ue is that you don't have to find the
starting address of the progra m to restart it.  The program will just start up
from the point where you interrupted it.

  The only other thing you really must do is determine what parts of memory you
must save so the program will run.  REME MBER, YOU MUST ALWAYS SAVE MEMORY FROM
$00 TO $2FF FOR THIS PROCESS TO WO RK CORRECTLY!  Use the Memory Move Writer to
rearrange memory so you can s ave it in a normal DOS binary file.

  If you want further practice in using y our NMI/F8 EPROM hardware, write a
program in APPLESOFT that some some scr een displaying and interrupt the
program.  Then try and reconstruct it us ing the same technique as described
above and restart the program.

  You can save the BASIC program in a Bfi le by saving $00 to $7FF and from $800
to the end of the program, where e ver that might be (zero page locations $AF
and $B0 will give you the ending lo cation of a APPLESOFT program, in
backassward order).  You might also have to save some of the variable storage
for your BASIC program, which lives fro m $95FF down (depending on size).  The
best thing to do is to experiment, and practice makes perfect.
---------------------------------------

