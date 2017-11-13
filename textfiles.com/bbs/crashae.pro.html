

***************************************
*                                     *
*  THE LUMBERJACK PRESENTS.....       *
*                                     *
*           SOFT/DOC 001              *
*                                     *
*        A SYSOP'S GUIDE TO AE        *
*                                     *
*             Written by              *
*           THE LUMBERJACK            *
*               Rev 1.0               *
*                                     *
*  WRITTEN FOR:                       *
*                                     *
*   THE MILL  213-393-6501  PW=WOOD  *
***************************************




     ASCII Express is the most widely used programs for the distribution of
software.  With all of its powers, AE still need some minor fine tuning.
Hopefully, with this article, AE sysops will know a little more about their
boards.

     First of all, most sysops want to know how to customize their messages.
Instead of "Goodbye..." they may want "Later dude".  Making a mod to AE itself
is pretty easy if you know how AE prints out a message.  Whenever AE prints
something out it does a machine language equivalent to a GOSUB and the data
following that GOSUB is printed out character by character until it reaches a
zero or null.  When it reaches that null, the program returns to a point after
the null.  That is why if you tried to replace "Entry :" by "Password", AE
would probably crash.
     Almost any sector editor will allow you to find the messages and
alter them.  If you opt to change messages this way, be sure that the message
you put instead in exactly the same number of characters.  If you want to
extend the message, you must place a seperate subroutine somewhere in memory. 
I chose $300 (of 768 in decimal).  I am pretty sure that area of memory is not
being used. Well, some of it is, but it should be free from $300 to $380. Here
is a sample program to make a longer
message:


5  TEXT : HOME : NORMAL
10 PRINT "ENTER MESSAGE CHARACTER BY
     CHARACTER. TYPE CONTROL-Q TO
     END"
15 POKE 768,32 : POKE 769,128 : POKE
     770,47
20 FOR X=1 TO 124
25 GET A$: PRINT A$;
30 IF A$ = CHR$(17) THEN 45
35 POKE 770+X,ASC(A$)
40 NEXT X
45 POKE 770+X,0:POKE 770+X+1,96
50 PRINT CHR$(4)"BSAVE MESSAGE.OBJ,
   A768,L"X+4


     This mini-editor will write the subroutine, you need only to alter AE to
call this subroutine rather than allowing AE to print out it's own message. 
The way AE is set up, the ideal messages to change would re the "Entry :" or
the "Goodbye..." message.  The way to change them is to use a sector editor to
scan the disk until you find the message.  The first three bytes in front of
the first letter should be  $20 $80 $2F.  You need to change that to $20 $00
$03. Then, you need to change every letter in the message and the $00
following the message to $EA.  Here is a sample (in hexadecimal):





(Old)
    00 01 02 03 04 05 06 07    ASCII

00- 4F 20 80 2F 45 6E 74 72  . @/Entr
08- 79 20 3A 00 A9 04 8D 11  y :@)DMQ


(New)

00- 4F 20 00 03 EA EA EA EA  . @Cjjjj
08- 
A EA EA EA A9 04 8D 11  jjjj)DMQ



     Please note, the locations and values in this example are not exactly what
you would see with your sector editor.  It would also be wise to try this on a
back-up copy of AE. You could probably changge almost any message in AE,
however, "Entry :" and "Goodbye..." are highly recommended for this type of
patch.

     To complete the patch, just BLOAD the MESSAGE.OBJ into memory and then
BRUN AE.

     There are some other minor notes that I thought I would include in this
article.  At the present time, I know of no back door to AE 4.2, but I
wouldn't doubt one exists.

     If you are not sure of the serial number of an AE line, call it up, and
type ctrl-D ctrl-I ctrl-S.  I don't know if this has any value though.

     If you need to post a message on your AE line, while someone is
connected, just chat with him.  Tell the user not to type.  Go into local with
a ctrl-Q, clear the copy buffer with C, go back to local with ctrl-Q, turn on
copy buffer, type your message while in chat mode, go back to local with
ctrl-Q, and turn off the copy buffer. You now have your message in your copy
buffer, just write it to disk with the W command.



     A popular method of crashing AE is to type V for view and then (space).
This puts the AE line into local, and leaves the phone off-hook.  To stop this
one can go into 'Install' and suppress the (space) which has a hexadecimal
value of $20.

     Another way to prevent crashing AE (spacebar method) and allow the space-
bar to function is by re-routing the RTS to the proper Menu after the View
command has been aborted:

BLOAD AE
CALL -151
31A0:4C 8D 18
BSAVE AE

     AE also allows you to put individual passwords on seperate drives or
volumes.  Most people already know how to do this, but here is a review.
Create a text file named "AE.NOACCESS" (no qoutes).  In that text file, you
may have one line of text, that text may be up to 38 characters.  That line of
text is the password.  Simply put that file on the drive/volume you wish to
lock
out.


  

     THE LUMBERJACK & THE DI

(>
