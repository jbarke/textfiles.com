  =========================================================================
                                    ||
  From the files of The Hack Squad: ||  by Lee Jackson, Moderator, FidoNet
                                    ||   Int'l Echos SHAREWRE & WARNINGS
          The Hack Report           ||  Volume 2, Number 5
         File Test Results          ||  Result Report Date: April 27, 1993
                                    ||
  =========================================================================

  *************************************************************************
  *                                                                       *
  *  The following test was performed by and the results are courtesy     *
  *     of Jeff White and Bill Logan of the Pueblo Group in Tuscon,       *
  *         Arizona.  Their assistance is greatly appreciated.            *
  *                                                                       *
  *************************************************************************


File: PHYLOX.ARJ

Description:    Fun VGA game from Britain.  Has you battling insects & monsters
                in subterranean caves.  Needs 640k, 286+.

Brief:  This popular Shareware game has been hacked.  It is now a trojan
        that will wipe out your C: drive.  The author's changes are easy to
        spot.  The time/date stamp on the files that were added/altered are
        all from February 1993, whereas the files that came with the original
        archive are dated until November 1992.  Two added programs, SETUP.EXE
        and INSTALL.EXE are exact matches of each other (by date/time, size,
        CRC) and are the programs responsible for wiping the hard drive.
        Another added program, PHYLOX.EXE, is reported to be suspicious by
        F-Prot 2.07 (heuristics mode) as possibly containing a memory-resident
        infector.  INSTALL.DAT contains a vulgar message.   The author also did
        something strange: included the original PHYLOX game with his hack
        distribution.  This file, called PHYLOX.DAT, is actually the original,
        authenticated ARJ file of the unaltered Phylox game!

Contents: (listed in wide form because of amount)
-------------------------------------------------

 Directory of D:\PHYLOX

[.]             [..]            AR.SP           ARM1.PIC        ARM2.PIC
ARM3.PIC        ARM4.PIC        ARM5.PIC        ASCENE.PIC      AUDIO.INS
BACKSCR.TXT     CAVPIC.PIC      COMING.EXE      COMP.BPR        COMP.SAV
COMP.SPR        CONFIG.PIC      D.LEV           EC.PAL          EG.SPR
EG2.SPR         EOL.SPR         EOL1.SPR        EOL2.SPR        EX1.BPR
EX1.SAV         EX1.SPR         FLAME.SPR       FONT.SP         FOOT.BPR
FOOT.SAV        FOOT.SPR        GAMEOV.SP       GETRED.SP       GREN.BPR
GREN.SAV        GREN.SPR        GUN.BPR         GUN.SAV         GUN.SP
GUN.SPR         GUNC.SP         HAT.SP          HEART.BPR       HEART.SAV
HEART.SPR       HI.SP           HI.TBL          HOOK.BPR        HOOK.SAV
HOOK.SPR        INC-VIOL.EXE    INS.SP          INSTALL.DAT     INTRO.SPR
JET.SP          LAUGH1.BPR      LAUGH1.SAV      LAUGH1.SPR      LEGAL.TXT
MENU.PIC        MISCC.SP        OBJ.SP          PAL.SCR         PCAV.EXE
PHYLOX.EXE      PHYLOX.CFG      PHYLOX.DAT      PING.BPR        PING.SAV
PING.SPR        PMAIN.EXE       PMAIN.PAL       PRUN.EXE        PSP.PLB
PT1.SP          PT2.SP          PT3.SP          PY.EXE          RAZEI.SP
RETB.SP         RETROXA.SP      RETROXC.SP      RETROXU.SP      RETS.SP
RIC.BPR         RIC.SAV         RIC.SPR         RICO.SP         RUN1.BLA
RUN1.BLK        RUN1.ELE        RUN1.INF        RUN1.INS        RUN1.IR
RUN1.LEV        RUN1.MAP        RUN1.MOV        RUN1.PAL        RUN1.PAT
RUNPIC.PIC      SC.PAL          SCORE.BPR       SCORE.SAV       SCORE.SPR
SCORE1.SP       SCREAM.BPR      SCREAM.SAV      SCREAM.SPR      SHOUT.BPR
SHOUT.SAV       SHOUT.SPR       SMART.SP        SOLD.BPR        SOLD.SAV
SOLD.SPR        SPLAT.BPR       SPLAT.SAV       SPLAT.SPR       STORE.BLA
STORE.BLK       STORE.ELE       STORE.INF       STORE.INS       STORE.IR
STORE.LEV       STORE.MAP       STORE.MOV       STORE.PAL       STORE.PAT
STORE.TMP       STORY.PIC       TDN.SP          TUP.SP          WINCH.BPR
WINCH.SAV       WINCH.SPR       MAIN.DOC        PHYLOX.PAL      INSTALL.EXE
RUNME.BAT       SETUP.EXE

      142 file(s)    1615125 bytes

Altered/added files:
--------------------

INSTALL  DAT      1527 02-20-93  11:44p
       * (Vulgar message) *
PHYLOX   EXE       898 02-17-93  12:08a
       * (Suspicious program [F-Prot]) *
PHYLOX   CFG       788 02-08-93   8:01p
       * (Phylox's configuration file - harmless) *
INSTALL  EXE      7360 02-14-93   8:36p
SETUP    EXE      7360 02-14-93   8:36p
       * (Trojan files - wipe out drive C: - same file [CRC check]) *
RUNME    BAT        22 02-16-93   1:36a
       * (Runs PHYLOX.EXE then PY.EXE - executes suspicious file) *

Virus Activity:
---------------
Virus scanning report  -  27. April 1993   11:22

F-PROT 2.07 created 3. February 1993
Virus signatures created 30. January 1993

Method: Heuristics
Targets: Boot/File
Files: Standard executables

Scanning boot sector D:

Analysing D:\PHYLOX\PHYLOX.EXE - Very suspicious file

This program seems to contain a memory-resident virus, which infects
other programs when they are executed.

Results of virus scanning:

Files: 140  (1.5 MB)  Scanned: 9  (415 KB)

Infected: 0
Suspicious: 1
Disinfected: 0
Deleted: 0
Renamed: 0


Notes:
------
        The file PHYLOX.DAT included with the archive is actually an ARJ file
        that has been renamed to a DAT file.  It is an authenticated ARJ which
        contains the original, unaltered Phylox game.  Authentication follows:

Processing archive: D:\PHYLOX\PHYLOX.DAT
Archive date      : 1992-11-27 10:45:52
ARJ archive created by Precision Software Publishing. Tel:0223 208288 R#0493


