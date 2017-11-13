>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>									     <<
>>			 AN INTRODUCTION TO CRACKING			     <<
>>									     <<
>>	      A treatise for the neophytes in the Apple world,		     <<
>>	      who are full of questions with no one to answer		     <<
>>	      them.							     <<
>>									     <<
>>			       by The Necromancer			     <<
>>									     <<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


  Greetings to all, and welcome to the wonderful world of Apple software
unprotection!  Those of you who are long-established hackers and crackers, you
will probably not find a lot herein to spark your interest (although you can
never be sure) -- this is especially for those new to the field.

  This does not necessarily mean that you don't know how to program -- there are
many people who are experienced programmers, but have never really gotten into
the unprotection racket.  In fact, knowing how to program is necessary if you're
going to get very far in cracking software.  There is no help for it, since the
whole point is undoing something that someone else did!

  There are a few 'tools of the trade' which, although not absolutely necessary,
will make your life a whole lot easier if you have them around.  These tools
include as one of the most helpful items a monitor ROM.  Like I said, it is not
*absolutely* necessary, for basic cracking.  But if you're going to get a whole
lot done, it will become needed.  In order to have a monitor ROM, however, you
do *not* have to own an Apple II.  Those of you with an Apple II+ or Apple //e
can come by one in several ways.

  The first of these is putting a monitor ROM image in a language card, and
write-protecting the language card.  This is a somewhat involved hardware
modification that I will not go into here, but instructions for it can be found
in numerous places.

  Another way to get a monitor ROM is by simply buying one and installing it on
your motherboard in place of your old Autostart ROM.  Or, a similar
modification, you can put it on your language card.  Some of you may not know
that your language card contains an Autostart ROM image, which actually takes
precedence over the ROM on the motherboard.  However, you can easily construct a
switch, which will allow you to choose between your motherboard ROM and your
language card ROM.  Thus, you can put a monitor ROM on your language card and an
Autostart ROM on your motherboard, and switch between them as you like.  This is
very handy indeed, since you can have either one you want, whenever you want,
simply by flicking a switch.  The uses of a monitor ROM will be discussed later
on.

  In any case, the other handy items are all software.	The most important of
these is a disk Zap program, some utility for editing a disk sector-by-sector.
The best one of these that I have come across is Zap, from Bag of Tricks.

  The other useful utilities are a variety of cracking utilities, from the
various Muffin-type programs to other disk-viewing programs.  The Muffins are
for copying programs from protected disks to normal disks, and the disk viewers
are for deciphering what on Earth these people have done to their disks.

  Now then, down to business.  What good is a monitor ROM, some of you may be
asking?  Well, you should know that when you press reset on an Apple with an
Autostart ROM, you are at the mercy of a few memory locations in page 3 of
memory.  These locations are $3F2-$3F4 (we are going to stick with hexadecimal
numbers here -- get used to them, you'll be seein3fqof them!).  $3F2 and $3F3
contain the address (lo-byte, hi-byte) to jump to when reset is pressed, and
$3F4 contains the exclusive-or of the value in $3F3 with an $A5.  This third
byte is used by the Apple for checking whether it has just been turned on.  If
this byte does not contain the XOR of $3F3 with an $A5, when you press reset the
monitor will perform a cold start.  This is how you can make the machine reboot
on a reset, by the way -- simply poke a value like zero into either $3F3 or
$3F4.

  Anyway, what does all this have to do with a monitor ROM?  Well, this
dependency of the Autostart ROM makes it easy on software protectors.  All they
have to do is tell the Apple where to go when the reset key is pressed.  With a
monitor ROM, you will always go to the same place -- the monitor -- when the
reset key is pressed.  This means that you are free to go on in and wade about
in their code, to decipher what they're doing.

  By the way, for reference's sake, there is another location which is handy to
know about, which is the Applesoft run flag at $D6.  If this is set, any command
given to the DOS parser will cause the program in memory to be run.  This is a
common location to set, so if you are attempting to crack a basic program, it is
likely to be set.  To defeat it, simply set it to any value less than 128.

  With a monitor ROM, some programs become a cinch to crack.  Basically, any
single-loading program (usually games) can almost always be cracked simply by
pressing reset and rebooting onto another disk.  Some notes, however...

  Before you can do anything with it, you have to know how it runs.  Say you've
got Program X, and you've pressed reset into the monitor.  It is a
single-loading game, so all of it is in memory there somewhere.  Where does it
start?	Good question.

  A frequent place is at $800, or sometimes $7FD, three bytes before $800.  Try
an 800G in the monitor.  If it starts up, great!  If not, time to look again.
Try the various page boundaries, particularly $2000, $4000, $6000, etc.  Check
the hires pages with a C050 <c/r>, C057 <c/r> to see the first hi-res page.  If
it has a title picture, the program isn't there.  Try C055 <c/r> to see page 2
of hi-res.  If there is a picture on page one and not on page two, $4000 is a
very possible starting location.

  There are hints for finding the starting location of a program.  Look for a
sequence that will turn on the hi-res pages for display -- look for addresses
like $C050, $C055, $C052, the graphics soft switches.  Look for a keyboard read
-- games will often show a title picture and wait for a keypress, reading the
strobe at $C000.  If none of these turns up an9thing, then it may be necessary
to try some likely places at random -- it can turn up useful information
sometimes, although it's not exactly recommended practice.  Look for
initialization routines, or jump tables.

  If all of this fails, then perhaps the protectors have tried some sneakier
tricks, which will be gone into in later columns.

  Once you have found the starting location, then what?  Then it's time to
transfer the program to your own disk.	Remember one of the prime rules of
cracking -- when working, always have one or two blank, initialized disks handy,
with a normal slave DOS on them.

  Let's say you have found the starting location to Program X -- what to do?
Well, let's look at memory for a moment.  Free memory starts, basically, at
$800, above the text page (it is possible to use this area, but that's a subject
for later), and goes until $9600, on a normal disk.

  However, it is more than likely that this disk you're cracking has no DOS.
That upper limit of $9600 is for a disk with normal DOS.  Assuming this program
is a single-loading game, it undoubtedly has no DOS.  Thus, this program is free
to go until $BFFF, really.

  But if you boot your slave disk now, it will wipe out memory from $800 to
$900, and $9600-$BFFF.	Therefore, we must split Program X into smaller pieces.
The first piece is from $800-$4000.  To put it onto your disk, first move it up
to protect it from your booting.  Move it up to $4000 with a *4000<800.3FFFM.
This moves everything from 800 to 3FFF to 4000 up.  Then do a 6<control-P> to
reboot.

  Now save segment one of the program to disk, after moving it down:

	  CALL -151
	  800<4000.7800M
	  BSAVE PROGRAM X (800-3FFF),A$800,L$3800

  And you have a good part of the program.  Now reboot the Program X disk, and
press reset again.  Now to save the rest.  We are going to assume that Program X
only goes up to $9600, to make life easy for now.  So just reboot4again, and
save part two of Program X with a BSAVE PROGRAM X (4000-9600),A$4000,L$5600.

  At this point, test your Program X by BLOADing the two pieces and running it.
If it still works, you're in business.  If not, the likelihood is that the
program requires some other pieces of memory.  Either the piece it needs is
below $800, or above $9600, obviously.	Try checking the code near the entry
point, and see if you can find any clues to what locations it might access.  In
either case, though, it becomes more complicated, since you can't just BRUN
something that requires memory below $400 or above $9600.  If it does not use
memory much above $9600, note that you can save over 1K with a maxfiles command,
since from $9600 to $9D00 are the DOS buffers.

  Assuming the program works, you just have the chore of cutting down the size
by figuring out what is really necessary of what you just saved.  Once you have
done that, you can just save the whole thing into a single file, give yourself
credit, and give the program to everyone you know.

  One more item:  if the program becomes greater than $7FFF in length, DOS will
not let you save it in one file.  Change location A964 in DOS to $FF and you
won't have any problems (why this restriction is there, *I* don't know!).

  Next time I will get into DOS and what modifications there are to help in
cracking........

  May your cracks be forever successful!

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>The Necromancer<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>									     <<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>The Cracker's Guild<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
