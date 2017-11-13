(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\
(\									    (\
(\		   How to kick butt with AE macro action		    (\
(\		     Written by: The Radioactive Snail			    (\
(\									    (\
(\	 A continuation of: How to kick butt with AE cursor action	    (\
(\			 Written by: [mr. sandman]			    (\
(\									    (\
(\ The Last Dimension AE ..............................[10meg] 214/827-5249 (\
(\									    (\
(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\

			     The Macro Library File
			     ======================

I'm sure most of you have done some screwing around with the MACRO.LIB file,
and know most of the details about it, so I will just skim, over that here:

	The macro library (MACRO.LIB) contains the folowwing data:

		line#0	<blank>
		line#1+ macro character/displayed name/filename of macro.

Note that the first line of the MACRO.LIB file is kept blank, this is
necessary for use.  The "macro character" is the character you will type to
get the given macro, the "displayed name" is the name by which AE calls the
macro, "filename of macro" is simply the filename of the macro (minus the
.MAC suffix).  Therefore if line #1 of your macro library looked like this:

a/The Snake's Den/SNAKE

then from the -> or +> prompt, you can press return and AE will say:

Select? (A-Z,/,?)

if you press A (capitol or lowercase) AE will look for the macro beginning
with "a/".  Finding the Snake's Den macro, it will spin the drive, loading
the file called "SNAKE" and say:

The Snake's Den <macro loaded>

If you have the "dial after loading macro" option set in the install program
(on system menu #5 I think) it will then dial the macro for you.  Note: The
[Y]editor from the AE main menu is an easy way to modify the MACRO.LIB file.

From the "Select? (A-Z,/,?)" prompt, pressing "/" will load the MACRO.LIB file
and present you with a list of the current library.  Pressing "?" will give
you a list of macros (#0 to #;) currently loaded.

When a macro is loaded, you can dial it by pressing "Dial: m".	M for macro.

			      The Macro Editor
			      ================

Now comes the real kick-ass stuff:  Pressing [U] from the main menu loads
the macro editor from disk, and allows you to load/save/edit macros.  The
first page of options you are presented with is fairly self-explanitory. It
is simply a list of default options for the macro when it is loaded.  When
changing the phone number, several extra characters can be added:

Phone#: xxx-xxxx

If you place a / before the phone number, it will autodial the macro instead
of just dialing it once.  Example:

Phone#: /xxx-xxxx

If you place a !n before the phone number, it will (upon connect) execute
macro #n.  Example

Phone#: xxx-xxxx !0

This would, upon connect, execute macro #0.  Note that both the autodial and
the execute upon connect can be used at the same time:

Phone#: /xxx-xxxx !0

Pressing [D] from the macro menu will take you to the display-edit macros
screen

			     Display-edit Macros
			     ===================

Here you are allowed to change 12 different macros (#0 to #;) to whatever you
want.  Again, there are special characters:

		Delay ............................. *
		AE command character .............. \
		Slow .............................. ?
		String handshaking ............ <xxx>
		Handshake ......................... %
		Wildcard handshake ................ =
		Literal ........................... @
		Conditional handshake ............. ~
                Carrige return .................... '
		Jump to new macro line ........... \L

Note: these are the default values, and can be changed from the "C" option
      from the install program.

	Delay
	=====

When excuting a macro, if AE encounters a delay character, it will pause for
1/2 second (ie. "****" would produce a two second delay).

	AE Command Character
	====================

When AE encounters this character in a macro, it interprets it as if you had
hit your terminal escape key, then the character following the command
character.

	Slow
	====

When placed at the beginning of a macro, AE will excute the macro line at
1/3 normal speed (usefull for systems with spinning cursors and no input
buffer.. yeech).

	String handshake
	================

There are actually two separate characters for the conditional handshake,
a begining character, and an ending character (usually a set of one of the
three brackets).  If AE finds the beginning character for the conditional
handshake, it reads all the text until it encounters the ending character,
the AE waits for the other computer to send the EXACT string contained in the
brackets until proceeding.  Example:

<pukenuke>..rest of macro string..

This would pause until the string "pukenuke" was recieved over the line, then
it would continue with the rest of the macro.

	Handshake
	=========

This is quicker and easier than the conditional handshake, but at some times
it will not quite work right for a certian purpose.  When AE finds the
handshake character, it waits for the remote computer to send the
character immediatly following the handshake character, for example:

%:nuke'em

Would wait for a ":" to be sent over the modem, then print "nuke'em".

	Wildcard handshake
	==================

When encountering this character, AE will wait until a character comes over
the modem, it does not matter what character it is, AE will just wait until
one does.  For example:

=ugamugawuga.

Would wait for ANY character to be recieved, then print "ugumugawuga"

	Literal
	=======

If you wish to send a macro command character (the * for instance, which
usually produces a delay) insert this character before it.  Example:

@* yer screwed @*

would print:

* yer screwed *

instead of:

<pause> yer screwed <pause>

	Conditional handshake
	=====================

This waits for a certian character (like the normal "%" handshake) and then
waits for the next character and either 1) continues with the current macro
or 2) aborts the current macro, and jumps to another one.  Probably the best
(and only?) use of this is for reading mail on a BBS system.  If a system
said either:

You have mail waiting!

or:

Sorry, you have no mail waiting.

You could make a macro like:

<ou have>~ mn1<continued macro string to read mail..>

This macro would wait for the string "ou have" (because one you starts with
a capitol Y, the other does'nt), then it would wait for a space (the next
character regardless) then if the next character was an "m" (as in "mail
waiting") it will skip the "n1" part and go to the <continued macro string..>
part and read the mail.  If the next character is an "n" (as in "no mail
waiting") it will abort the current macro and jump to macro #1.

	Carrige return
	==============

Because it is advised that you take up only one or two macros for logon
procedure (to leave room for the creative ones later), sometimes it is
necessary to enter a carrige return (after a password for example), all
this character will do is enter a <CR>.  There is automaticly a <CR> after
the end of every macro, if you put this carrige return character at the END
of a line, it will abort the usual carrige return.  Therefore:

pukenuke'''

Would only give you:

pukenuke<CR><CR>

	Jump to new macro line number
	=============================

A backslash (the AE command character) followed by L, then a number (or :,;)
will jump to the new macro line number.

		       Full example, and uses of macros
		       ================================

Say your name was "PUKENUKE" and your password to "the global war BBS" was
"NUKE'EM", the phone number was: 999-9999 and that the logon procedure looked
like:
______________________________________________________________________________

Welcome to the global war BBS,
Your local nukefull system.
Sysop: Lord Nuke

Enter username: PUKENUKE<CR>
Enter password: NUKE'EM<CR>

Searching..found ya.

Welcome PUKENUKE, today is march 12, 2093.
Apacolypse wow!

Press <RETURN> to enter system: <CR>
______________________________________________________________________________

You would make the macro lib file to read:

a/The Global War BBS/NUKE

Load the macro editor, change the phone# to:

Phone#: /999-9999 !0

So it autodialed upon loading, and executed macro #0 when it connected, then
you changed macro #0 to:

#0 <username: >PUKENUKE'<password: >NUKE@'EM<system: >

This would log you on, and automaticly take you into the system.

			Now for the rest of the macros
			==============================

So, what do ya do with all the other macros ya say?  Well, make them into
your favorite sayings:

#0 logon macro+mail read
#1 logon w/no mail
#2 rah.
#3 When the going gets tough, the smart run like hell.
#4 Pukenuke.
#5 -=< The PUKENUKE >=-
#6 How un-nukefull of you.
#7 Go nuke yer mamma.
#8 Go commit nukeacide.
#9 Nuke or be nuked.
#: I think not.
#; Nukin' some ass.

Now, to display all those "nuke" messages, and signoff macros (like #5 and #4)
you have to do a ^W (again depending on the install program) and the macro
number.

So at the end of every message, you could do ^W5 which would print:

-=< The PUKENUKE >=-<CR>

And in chat, if a sysop told you that you were a complete asshole, you could
do this:

^W7^QHY<CR>

which would do this:

Go nuke yer mamma<CR>
+>Disconnect? Yes!
[click]

(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\

How to kick butt with AE macro action has been a presentaion of TP&the
Heartbreakers.	Typed and figured out by: The Radioactive Snail.  Credits
to [mr. sandman].

(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\(\
