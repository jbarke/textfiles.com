
                                  How to get

                                   S P E E D

                   out of your HST and HST Dual Standard Modem

                                     using

                              ACOS Version 2.01d5

                               and an Apple IIGS

-------------------------------------------------------------------------------
    Brought to you by The Oggman, creator of OGG-Net Networking Systems
          Call Infinity's Edge (415) 820-9401 or any OGG-Net BBS
-------------------------------------------------------------------------------


HST Basics
----------

        Those of you who have spent big bucks on the HST modem, hoping to get
14.4K bps, have probably been disappointed, misled, or both.  When used with
ACOS, the HST will only get throughput of 9600 bps with NO COMPRESSION.  Why is
this?  Well, its actually pretty simple.

        When you're dealing with high speed modems, you have to differenciate
between  "connect rate" and "DTE rate."  Connect rate is the speed in which
both modems are talking with each other.  You can get the connect rate by
looking at the number after the CONNECT message (ig 1200, 2400, 9600) or by
looking up the numeric result code.  DTE rate is the rate at which the serial
port is set at when it makes the call.

        HST's can be communicated to with DTE rates of up to 38400 bps.  This
means that, even though its only (!) a 9600 bps modem (so to speak), you can
actually send commands to it at baud rates of up to 38400.  In normal
operations, the DTE rate will drop down to the connect rate as soon as the
modem completes a call to the other modem.


Compression and 14.4K
---------------------

        In order to use V.42 or MNP Level 5 data compression, THE DTE RATE HAS
TO BE HIGHER THAN THE CONNECT RATE.  Likewise, to get actual throughput of
higher than 9600 bps (12K, 14.4K), the DTE rate will have to be higher than
9600.  So, for the Apple, this generally means your serial port will HAVE TO
STAY AT 19,200 BAUD.

        Do you see the problem?  ACOS autobauds the serial port to whatever the
connect rate is.  If someone connects at 9600 baud, then the serial port is set
to 9600 baud, making data compression and high speed totally useless.  So, what
to do about this problem?


Making the Change
-----------------

        To make your HST operate at its optimum efficiency, you'll have to fix
the DTE rate of your modem and make a little change to your ACOS.OBJ file.
First, run the CONFIG.SYS program and choose GS Modem Port and the HST modem
(sorry, I haven't deciferd what to do for the SSC yet.  Maybe later).  Change
the init string so &D2 is replaced by &B1 (&D2 does absolutely nothing), and
the X6 is changed to X4.  &B1 will fix your modem's DTE rate.  Pick 19200 for
the default baud rate.   You should also make sure your NVRAM settings include
&K1 and &H1.  These settings are needed for data compression and flow control.

        Now, load BASIC.SYSTEM and type the following:

bload acos.obj,a$800            (loads the ACOS.OBJ file)
call -151                       (enter monitor)
ff0:ea ea ea ea ea ea           (make the change)
bsave acos.obj,a$800,l$5300     (save it)

        Now, all you have to do is run your board and you're set.  The modem
will fix its DTE (the &B1) at 19200 (the default baud rate).  When someone
calls, ACOS will no longer reset the DTE rate to the connect rate, but keep it
at 19200.  Info(2) will still contain the connect rate/300, however.


Warp Speed on the HST
---------------------

        So, now we have our HST's zooming along with a fixed DTE rate of 19200.
This is the best we can get, right?  Well, we know that the HST will operate at
DTE rates of up to 38400 baud, but the Apple IIGS serial port will only go to
19200.  Or will it?

        Well, very recently, Apple guru Guy T. Rice came out with a little CDA
called Fastport GS 38.4 that will actually open up the Apple IIGS modem port at
38400 baud.  It appears that 19200 is only a firmware limit, not a limit of the
SCC chip.  After decifering Mr. Rice's little desk accessory, I mananged to
incorporate it into an ACOS mod that will actually fix the DTE rate of the
modem port to 38400, allowing the maximum throughput of the HST for ACOS 2.0d5
bulletin boards.

WARNING:  Even with a 7 mhz Transwarp GS card installed, 38400 baud is VERY
fast and you'll probably get dropped characters.  This might not be a problem
once we get 10 or 13 mhz out of our amazing machines, but until then, do this
mod with caution.  I personally have found no problem with this mod on my 6.25
mhz GS.

        First, run CONFIG.SYS just as above making the same changes.  Run
BASIC.SYSTEM and type the following:

bload acos.obj,a$800                            (loads the ACOS.OBJ file)
call -151                                       (enter monitor)
ff0:ea ea ea ea ea ea                           (make the change)
ffd:20 30 10 ea ea ea ea ea ea ea ea ea ea
1030:78 a9 0c 8d 38 c0 a9 01 8d 38 c0 a9 0d 8d 38 c0 a9 00 8d 38 c0 60
bsave acos.obj,a$800,l$5300                     (save it)


Calling Out
-----------

        As a BBS user, you will also have to do your part in getting the best
throughput for your HST.

        First, you will also have to fix your modem's DTE rate to the highest
baud rate possible (19200 normally, 38400 using the Fastport CDA).  To do this,
set your baud rate at its highest level, and type AT&B1&K1&H1 and return while
in the terminal mode of your term program.

        Now for the hard part.  Proterm and most every other term program for
the Apple has the same problem that ACOS has; it autobauds.  I don't have a
quick fix for this, but you can get around it.  Just call the HST board with a
baud rate of 19200 (or 38400).  It will connect at 9600 like normal.  Once it
connects, however, change the baud rate back to what it was.  In Proterm, do an
OA-O and put it back to 19200.  If you have the Fastport CDA installed,
activate it once you connect with the HST board.

        That should do it.  If you have any questions, I can be reached at my
board Infinity's Edge (user #1) or through any board in the OGG-Net network.


Paul Parkhurst
The Oggman

