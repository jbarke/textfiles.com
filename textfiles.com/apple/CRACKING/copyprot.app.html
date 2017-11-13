#44 : COPY PROTECTION
295 LINES - 59 SECTORS
CONTRIBUTED BY DIAMOND JIM
-----*

COPY PROTECTING YOUR OWN DISKS
BY THOMAS T. BRYLINSKI
08/04/82


INTRODUCTION:

  For those new-commers to the world of APPLE Computers, and to the history of
software development, here is a brief summary.	In ancient times (1978-1979),
the APPLE Corporation was just getting started , and absolutely no software was
available for your $1530 toy.  So most people who bought this expensive little
tan box had to write their own software.  If you were among the more fortunate
users who had a good sales pitch, you talked your boss into buying you an APPLE,
and then spent your company's time learning the in's and out's of programming.
In any case, you could not purchase ANY good software for your mac hine.
Shortly after the first early programmers crawled out of their shells, APPLE
users groups started to form.  The prime function of these groups was to share
programs and to exchange the secrets which one had learned in the previous
month.	(also it was a good excuse to get away from the kids at home, for a
night)!  Four or five months passed and a few early programmers got the idea
that they would market their software and make a few bucks for their hard hours
programming.  And thus, the first APPLE soft ware companies formed.  These
companies were very small and usually started in someone's basement.  The prime
buyers of this software were the APPLE DEALERS.  The dealers could now
demonstrate these marvelous machines with some "GREAT" software.  By the way,
this great software came on cassettes, (you know, those little plastic things
you used to record music on).  These cassettes were copyable by normal means,
(eg.  tape recording), and the dealers started giving some programs away with
each system that theys old.

  In the summer of the DARK AGES (1979), APPLE COMUPTER released their first d
isk drive system (3.2 DOS).  This disk system made copying programs easier,
faster, and much more reliable.  At this time copying was encouraged by both
programmer and dealer.	So on the software companies realized the increasing
market for their products, and theorized that if they could produce a disk that
could not be copied by normal means they could sell more software, hence more
profit.  APPLE'S disk system was the perfect answer to their problem.  APPLE
chose to make their disk system totally "SOFT", which means that all information
pertaining to the disk operation is stored on disk .  This information is then
loaded into RAM (random access memory), upon a system boot (PR#6).  All commands
typed at the keyboard are examined by the "disk operating system" (DOS), and
then by the apple ROM's (that row of big fat chips inside the machine).  Now the
software writers had an edge on the normal user, change how the APPLE responds
to user commands, and keep them out of your programs.  The only problem was that
the copy program that came with your disk drive was able to copy the complete
disk.  With a "soft" DOS, the programmers could change how the information is
read from disk and modify their DOS to read it.  As Apple users became more
aware of the internal workings of their machines, programmers made more and more
changes to DOS, and the race was on!

  So much for the history lesson (boring out-of-date information anyway), and o
n to the meat of the lecture.


TERMS USED IN THE TEXT:

  BIT-	  the smallest piece of information that the computer can recognize or
	  process.
  NIBBLE- four bits in a row, or a block
  BYTE-   eight bits in a row or block.  It is the smallest piece of information
	  that people like to work with.  (00000000)
  VTOC-   Volume Table Of Contents:  DOS uses this sector to tell it which
	  sectors are used and which are free on the disk.

  SELF-SYNC BYTE- a special byte used for locating information on the disk.
		  This byte differs from a normal byte in that it is made up of
		  nine bits.  (111111111)





PROTECTION METHODS


  DISK COMMAND CHANGES- changes to the DOS that make those familiar words like
Load, Delete, and Save, give the user that cold, unforgiving response...SYNTAX
ERROR

  CATALOG TRACK LOCATION- moving the catalog to a non-standard track (normally
track HEX $11, DEC 17)

  CHECKSUM ALTERATION- the portion of each sector that DOS automatically checks
to make sure that the information it has read is correct.

  $D6,VECTOR- an Applesoft pointer used by the machine to make "carriage return"
= RUN.

  LOADER DOS- a DOS whose sole purpose is to Load and execute one program from
disk.

  HALF-TRACKING- writing information between the normal tracks on the disk.

  DOS HOOK- designating a specific track on the disk, where the only information
on the track is a track & sector number, to tell DOS where to read next.

  PROGRAM LOCK- a line of programming that looks at a specific memory location
 and compares its contents to a programmed number.  (x=peek(y))

HARDWARE LOCK- Using a hardware modification to lock the program.

  NIBBLE COUNTING- setting aside a specific track on the disk where a number of
self-sync nibbles are written.









TOOLS FOR LOCKING PROGRAMS


DOS BOSS - Beagle Brothers Software
BEANETH APPLE DOS - Quality Software
PROGRAMMER'S AIDS - Dakin 5 Corporation
BAG OF TRICKS - Quality Software
SUPER DISK COPY - Sensible Software
TASC - Microsoft
THE EXPEDITER - On Line Systems
THE DOS MANUAL - Apple Computer Corporation
APPLE II REFERENCE MANUAL - Apple Computer Corporation
WHAT'S WHERE IN THE APPLE - William F. Luebbert
SOFTALK magazine
NIBBLE magazine


  If you are familiar with the above manuals, software, and periodicals you ar e
well on your way to locking programs.  Also you will need use of one of the nib
ble copiers on the market such as, LOCKSMITH, NIBBLES AWAY, or CLONE.  CLONE is
my choice because it is very fast compared to the others.


LOCKING TECHNIQUES:

MESS UP DOS

  Change some or all of the DOS commands.  This in itself may be enough to prot
ect your programs.  Go a little further.  Bury some control characters in the
cata log.  (control chrs.  don't print usually).  Change "CATALOG" to "LIST" and
the Bas ic command "List " becomes unusable.  Try it, you can't "list" a program
in memory.  Duplicate DOS commands are great.  Only the first one encountered
will work.  Confuse the user by changing the disk error messages.  For example
do the following:

 1) Change the SAVE command to STORE
 2) Change the READ command to SAVE
 3) Change the "NOT DIRECT COMMAND" error
    message to "NOT COPYABLE"

  Now when anyone tries to load and save your program you get the "NOT COPYABLE"
error message because he used the wrong command!  *** EXPERIMENT ***

  Now the following can be done to any disk you want.  We will move the catalog
track from track $11 to track $5, just for convenience mind you.

 1) Boot your favorite 3.3 system master to load DOS
 2) Placeyour DOS BOSS disk in the drive and type:LOAD DOS BOSS (return)
 3) Type: Poke 44033,5 (return)
 4) Place a blank disk into the disk drive and close the door. (something your
    parents keep telling you to do.)
 5) Type: RUN (return)
 6) Change a few commands...any one you want!
 7) Before you leave DOS BOSS, change the disk volume heading to" SYNTAX ERROR"
 ... Don't forget the ctrl-G at the end!
 8) Exit the DOS BOSS program.
 9) Type: NEW (return) <--(by now you should remember)
 10) Type: INIT HELLO
 11) Wait a minute or so and pull the disk out of the drive.
 12) Boot your system master again and try to catalog the disk you've just init
     iallized.


  If you have not noticed by now 44033 is the memory location that holds the
cata log track number.	Type:  PRINT PEEK(44033), and you will see that DOS is
looking at track 17 to find the catalog.  Now if one were rather clever you
would use som ething like SUPE R DISK COPY to copy the catalog track from
another disk onto your modified disk .	Also it will be necessary to change VTOC
so that you do not overwrite real fil es on the disk.  VTOC is normally located
on track $11, sector $00.  However the V TOC to fix on yo ur modified disk i **

   T0 SYNC: 18=20 19=00 40=20 44=DD 45=AD
	    46=DA 72=00 73=00 77=00
	    78=00 79=12 7C=00

   T1.5-TB.5  SYNC
   TD-T20  SYNC



  BORG **

   T0: 18=20 19=00 40=20 4D=00 4E=00
       52=00 53=00 54=12 57=00
       72=00 73=00 77=00 78=00 79=12
       7C=00 44=DD 45=AD 46=DA

   T1.5-TC.5 SYNC
   TD-T20 SYNC



BPI BUSINESS ACCTING SYSTEM (4 DISKS)

       (REVISED 10-26)

  T0-T22: 19=00 21=02 58=19 59=06	     5A=1A 5B=FF BD=44 BE=E6
  BF=45 C0=FF C1=40 C2=01

	   C4=44 program RUN when any command is issued.


  POKE 1010,102:  POKE 1011,213:  POKE 1012,112 -- Makes RESET run the program
in m emory.

POKE 2049,1 -- Makes the first program line list repeately.


  Well by this time you should be bored stiff or really into learning copy pro
tection.  If the latter is the case continue to read, if the former, re-boot the
system and fire up your favorite game.

  Now we shall take on the heavier ways to protect.  If you were reading carefu
lly to this point, you now should know how to change your DOS commands and chang
e the catalog track.  Also if you were experimenting you should have a few other
tricks under you r belt.  So, if you're having trouble at this point it would be
advised to start at the beginning!

  In this section we will discuss the heavier ways of protection.



CHECKSUM ALTERATION:

  In each sector on the disk is a byte which is the Checksum.  This byte is the
last byte to be written into a sector.	The value of this byte varies with the a
mount of information stored in that sector.  Normal Apple DOS reads in the
inform ation on the sec tor, and then counts the bytes it has read.  It then
compares this number to the checksum, if they are equal it continues to read the
next sector.  If it is not equal DOS has made an error and tries to read it
again.	After three tries it sto ps and gives the user an error message.  In
order to change the checksum we must change the byte should also be noted at
this time, that your standard 3.3 DOS will no longer re ad this sector.

  Now in order to read this sector, we must disable the Checksum routine in DOS.
To do this from the keyboard type the following:

  1) CALL-151
  2) B942:18	 REM 3.3 DOS
       or
     B963:18	 REM 3.2 DOS

This changes a "set carry" instruction to a "clear carry" instruction.

  3) 3D0G

Now you're back in Basic.

  I hav'nt found a way to INIT a disk with this changed DOS yet, but by using
DAK IN 5 PROGRAMMERS AIDS you can change DOS directly on your disk with the
Patcher.  The data to be zapped resides on track 0, sector 3.

    Byte $42  change $38 to $18  REM 3.3 DOS

    Byte $63  change $38 to $18  REM 3.2 DOS




$D6, VECTOR:

  The D6 memory location in the Apple can set from Applesoft by typing POKE 21
4,255; OR from assembly by:

	     LDA  #$FF
	     STA  D6

  This is where the Applesoft Run pointer resides.  By putting a number larger
tha n 128 in this location Applesoft equates a carriage return with the
Applesoft RU N command.  Once set, all user commands cause the program in memory
to be execute d.


LOADER DOS:

  Loader DOS is the minimal DOS that can be utilized in the Apple.  It consists
of nothing more than RWTS and a table of track and sector numbers that are to b
e read in.  Loader DOS has no DOS commands, as its only function is to load a
pro gram, and start running it.  If you're interested in this consult the DOS
manual.  The manual exp lains how to write the look-up table and how to utilize
RWTS directly.




HALF-TRACKING:

  half- tracking is utilizing the tracks between the normal tracks on the disk .
This is possible because the disk drive is actually capable of writing to seve
nty tracks, as that is the number of stepped positions the read/write head has.
However one cann ot use these half tracks to double the amount of information
stored on the disk due to hardware constraints in the Apple drive unit.  In
order to use half track s the adjacent full tracks must not be written to
because of the high risk of ov erwriting or des troying information on the half
track.	It is only possible to write to half tra cks with assembly because the
programmer must toggle the soft stepper switch onl y once and then access RWTS
directly.


DOS HOOK:

  In order to use a DOS HOOK one has to first write their own RWTS portion of
DOS.  Then write or modify the DOS boot routines to supply RWTS with a track and
sector number and read that sector.  This information is taken as data for RWTS
a nd the next read .  A program that utilizes the hook very effectively is
MASTERTYPE from Lightning Software.




PROGRAM LOCK:

  This is no more than a combination lock that is built into the program.  To e
ffectively use it, it is necessary to modify the boot routine in DOS.  This is
done by moving the PROM boot routine down into RAM where we can change it to
stop after the first bootstrap routine is loaded.  This is done by typing:

 1) CALL-151
 2) 9600<C600.C700M
 3) 96F9:59 FF
 4) 9600G

  At this point the disk starts and loads the boot routine in at $800 but does
not execute it.  Now look at it by typing 800L.  Hit L a few more times until
you come to JMP $301.  The OP codes should be 4C 01 03.  This is the key that
you will look for on the d isk.  You will find them on track 00, sector 00 of
the disk.  Using PROGRAMMING A IDS you will be able to change this information
on the disk, and put into memory your own combination.	Do this by typing in the
OP codes for the following:

       LDA  #$XX      ;XX = PART OF COMB

       STA  YYYY      ;YYYY = MEMORY LOC

And don't forget to put the JMP $300 back in.

  Now all that is left is to doctor up your program to look for the combinatio n
that you stored in the boot.  Do this by PEEKing that memory location, and comp
aring the contents.





HARDWARE LOCK:

  I won't spend much time on this because it is the worst way to protect softw
are.  It works like this:  You have to plug in something that looks like an
integrated circuit into the game port.	That will simulate the game paddles set
at a specific spot.  The program then reads the port and compares the input to
the progeammed readings , if different....CRASH!!!




NIBBLE COUNTING:

  Unfortunately the only thing I know for sure about this is it must access the
memory locations C080-C08F+16*(SLOT #)



SUMMARY:

  If you choose to write your programs in Basic, it is a very good idea to comp
ile the source code.  The generated OP CODE is almost impossible to read or
change.  In this way you can hide all sorts of locking schemes.  Also don't
forget to use the ONERR Applesoft command, this will stop a ctrl-C Break from
Applesoft.

-----*
