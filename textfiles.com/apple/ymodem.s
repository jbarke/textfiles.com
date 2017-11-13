* lst off
*--------------------------------------------------------*
* Ymodem Driver source code for GBBS... orginally by     *
* Mike Golazewski or Greg Schaefer (you choose). Sourced *
* (Disassembled) w/ Merlin Pro.                          *
* This file is NOT for public distribution.              *
* (So Lance doesn't get pissed...Aw poor baby)           *
*--------------------------------------------------------*

 ORG $5000
 ORG $9E00

CHRGET = $03B1 ;acos get character routine
GETBYT = $0380 ;get next byte from segment
CHKBYT = $0383 ;check next byte in segment
GOBCOM = $0386 ;gobble a comma in segment
MOVNAME = $038F ;move filename to acos internal
SETOVEC = $03A1 ;set acos output vector to dev #
DECOUT = $03A7 ;print a signed decimal # to dev
OPEN = $03AD ;open a file using acos
CLOSE = $03B0 ;close a file using acos
RDBLK = $03B9 ;acos read a block call
ACOPTHLO = $03CB ;acos path pointer high part
ACOPTHHI = $03CC ;acos path pointer lo part
ACOSREF = $03CD ;acos reference number
PRINT = $0906 ;print to sysops screen (local)
MDMIN = $0E15 ;modem: receive a character
MDMOUT = $0E18 ;modem: send a character
MDMDCD = $0E1B ;modem: check for carrier loss
H9E00 = $9E00
H9E01 = $9E01
H9E02 = $9E02
HA5FF = $A5FF
HA600 = $A600
HA640 = $A640
HA642 = $A642
MLI = $BF00 ;prodos MLI dispatch point
KEY = $C000
STROBE = $C010
PTRIG = $C070

*---------------------------------------------------------*

 JSR CHKBYT
 CMP #$AC ;Is it a comma?
 BEQ H4F11 ;yes, go send a file
 JSR GETBYT ;no, skip past the offending character
 JSR H5174 ;zero out some counters and stuff
 JMP H4F70 ;abort the xfer 
 RTS

H4F11 JSR GOBCOM ;gobble the comma
 JSR MOVNAME ;move the name to acos's buff's
 JSR OPEN ;open it using acos
 BCC H4F1D ;if all is ok, continue
 RTS  ;maybe file missing, return...

*---------------------------------------------------------*
* Go get some file information for use in the header pack *
*---------------------------------------------------------*

H4F1D LDA ACOPTHLO
 STA H522E
 LDA ACOPTHHI
 STA H522F
 JSR MLI ;dispatch the call
 HEX C4 ;Get File Info call
 DA H522D ;parameters found here
 BCC H4F34 ;if everything's ok, continue
 JMP CLOSE ;otherwise close it, leave

H4F34 LDA ACOSREF ;get acos internal file ref #
 STA H5240 ;store it for parms
 JSR MLI
 HEX D1 ;Get EOF call
 DA H523F ;address of Get EOF parms

 JSR H5174 ;zero out some locations
 LDA ACOPTHLO ;get pointer to filename/lo
 STA $00 ;set up indirect address
 LDA ACOPTHHI ;get pointer to filename/hi
 STA $01 ;finish setting up
 LDY #$00
 LDA ($00),Y ;get filename length byte
 TAX
H4F52 INY
 LDA ($00),Y ;get character in filename
 STA H4F8C,Y ;store it in the [     ]
 STA HA5FF,Y ;store it in the header packet
 DEX
 BNE H4F52
 LDA #$1D ;what's this?
 STA HA640

 LDX #$00 ;move the GFI and Get EOF
H4F65 LDA H522D,X ;results to header packet
 STA HA642,X
 INX
 CPX #$17 ;done all?
 BNE H4F65 ;no, loop
H4F70 LDA #$00
 STA STROBE ;clear the keyboard strobe
 STA $24 ;start flush left
 LDY #$03 ;get output channel
 JSR SETOVEC ;channel 3, sysop (local)

 JSR SPRINT ;print this, return after brk
H4F7E ASC '['
H4F8C ASC '               ] _ #'
 BRK

 LDA BADSEND ;last file check
 BEQ H4FAA ;if ok, continue
 JMP H5086 ;close 'em, stop sending
H4FAA JSR NAKIN ;wait for a <NAK> or 'C' (wrong!)

* In theory, we should wait for just 'C' or 'CK' for ymodem
* But greg decides to do it his own way.

 BCC SENDHEAD ;if ok, continue..
 JMP H5086 ;else, close and stop sending

*---------------------------------------------------------*
* Send the Header Packet with some file information in it *
*---------------------------------------------------------*

SENDHEAD LDA #$48 ;print an 'H' for header
 JSR PRSCRN

 JSR PRCOUNT ;print # of blocks sent

 LDA #$01 ;get SOH
 JSR MDMOUT ;send it out the port
 LDA BLOCKNUM ;get protocol block #
 JSR MDMOUT ;send it out the port
 EOR #$FF ;get complement of block #
 JSR MDMOUT ;send it out the port

 LDX #$00 ;start at $a600
H4FCC LDA HA600,X ;get the header packet
 JSR MDMOUT ;send the byte
 JSR DOCRC ;compute cumulative CRC for it
 INX  ;next byte
 CPX #$80 ;done 128 bytes?
 BNE H4FCC ;no, send another

 LDA CRCHI ;get CRC Hi part
 JSR MDMOUT ;send it out the port
 LDA CRCLO ;get CRC Lo part
 JSR MDMOUT ;out the port we go

 JSR ACKIN ;Check for an ACK received
 BCS SENDHEAD ;ACK not received, resend header

 LDA HA600 ;block length of 0? (EOT)
 BNE H4FF3 ;no, send file
 JMP H5089 ;else, yes, close up and return

H4FF3 JSR ACKIN ;wait for another ACK?

H4FF6 LDA #$0A ;initialize to 10 retries
 STA RETRIES ;store counter
 INC BLOCKNUM ;next xmodem block in series

 LDA BLKLO ;get blocks sent lo
 CLC
 ADC #$08 ;blocks sent=blocks sent+8
 STA BLKLO ;store result
 LDA BLKHI ;continue to make sure we
 ADC #$00 ;included the carry bit
 STA BLKHI ;store it also

 JSR PRCOUNT ;print # of blocks sent (again)

 LDX #$00 ;lo address of read call
 LDA #$A6 ;hi address of read call
 LDY #$08 ;number of 128 byte packets
 JSR RDBLK ;read 'em
 BCS H506D ;if error, end of file, close...

*---------------------------------------------------------*
* Send a Huge, 1024 Byte packet to the othe end with CRC  *
*---------------------------------------------------------*

SEND1024 LDA #$53 ;get an 'S'
 JSR PRSCRN ;print it for the sysop

 LDA #$00 ;set up indirect address to
 STA $00 ;point to $a600
 LDA #$A6
 STA $01

 LDA #$02 ;get an STX
 JSR MDMOUT ;send it out the port
 LDA BLOCKNUM ;get current block #
 JSR MDMOUT ;send it
 EOR #$FF ;255-block #
 JSR MDMOUT ;send it

 LDX #$04 ;send 4 packs of 256 bytes
 LDY #$00
 STY CRCLO ;initialize CRC lo
 STY CRCHI ;initialize CRC hi
H5044 LDA ($00),Y ;get the byte
 JSR MDMOUT ;send it
 JSR DOCRC ;compute the cumulative CRC
 INY  ;next byte
 BNE H5044 ;done 256? no, do some more

 INC $01 ;yes, next 256 bytes
 DEX  ;are we done with the 4 packs?
 BNE H5044 ;no, go send some more

 LDA CRCHI ;get CRC hi
 JSR MDMOUT ;send it
 LDA CRCLO ;get CRC lo
 JSR MDMOUT ;send it

 JSR ACKIN ;check for an ACK
 BCC H4FF6 ;ok, send the next 1024 byte pack

 DEC RETRIES ;count number of times packet sent
 BNE SEND1024 ;if count <> 10, try again
 JMP H5086 ;aborted transfer

*---------------------------------------------------------*
* End of transmission of one file, return to caller...    *
*---------------------------------------------------------*

H506D LDA #$0A ;initialize count for last byte
 STA RETRIES
H5072 LDA #$46 ;get an 'F' (final)
 JSR PRSCRN ;print it to sysop

 LDA #$04 ;get an EOT
 JSR MDMOUT ;send it
 JSR ACKIN ;wait for an ACK
 BCC H5086 ;if ok, finish up
 DEC RETRIES ;no ACK, try again...
 BNE H5072 ;if retries <> 10, try it again

H5086 JSR CLOSE ;otherwise close it, finish up

H5089 LDX #$00 ;erase bottom line
 STX $24 ;horizontal position = flush left
 LDA #$20 ;print a whole line of spaces
H508F JSR PRINT
 INX
 CPX #$27 ;done yet?
 BCC H508F ;nope, more spaces

 LDX #$0F ;put something consistent
H5099 STA H4F8C,X ;over top of the filename
 DEX
 BNE H5099
 LDA #$00 ;start flush left on return
 STA $24
 LDY #$00 ;output device is #0
 JSR SETOVEC
 RTS  ;return to calling program

*---------------------------------------------------------*
* NAKIN routine gets a <NAK>, or times out waiting        *
*---------------------------------------------------------*

NAKIN LDA #$57 ;put a 'W' on sysop's screen
 JSR PRSCRN

 LDY #$3C
H50B0 JSR INPUT ;get a character from the modem
 CMP #$15 ;is it a <NAK>?
 BEQ H50CF ;yes, return gracefully
 CMP #$43 ;is it a 'C'?
 BEQ H50CF ;yes, also return gracefully
 CMP #$03 ;is it a ????
 BEQ H50C6 ;non-fatal error in transmission
 CMP #$18 ;<CAN> character, major problems
 BEQ H50C8 ;uh oh, major type problems
 DEY  ;keep trying
 BNE H50B0 ;not done yet, try again
H50C6 SEC  ;either timed out or non-fatal
 RTS

H50C8 LDA #$FF ;fatal transmission error
 STA BADSEND ;cancel next file transmission
 SEC
 RTS

H50CF CLC  ;<NAK> received, return properly
 RTS

*---------------------------------------------------------*
* ACKIN routine gets an <ACK> , or times out waiting      *
*---------------------------------------------------------*

ACKIN LDA #$57 ;print a 'W' to sysop
 JSR PRSCRN

 LDY #$0A ;10 total for retries
 STY LASTCHAR
H50DB JSR INPUT ;get a character from the modem
 CMP #$15 ;is it a <NAK>?
 BEQ H50ED ;eww, yes, probably bad block
 CMP #$43 ;is it a 'C'?
 BEQ H50ED ;yes, bad block, or sync error
 CMP #$06 ;is it an <ACK>?
 BEQ H50F4 ;yes, return ok
 DEY  ;none of the above,
 BNE H50DB ;try again
H50ED LDA #$45 ;put an 'E' on the sysop's end
 JSR PRSCRN
 SEC  ;flag for bad data
 RTS

H50F4 CLC  ;data ok, return
 RTS

*---------------------------------------------------------*
* Get Input from modem or keyboard... <ESC> aborts send   *
*---------------------------------------------------------*

INPUT LDA #$00 ;initialize outer loop
 STA LOOPSML
 LDA #$64 ;initialize inner loop
 STA LOOPLRG
H5100 BIT PTRIG
 JSR MDMDCD ;are we still connected?
 BCC H513A ;no, close everything and return
 JSR MDMIN ;yes, get a character
 BCC H511E ;no character to get, branch
 CMP #$03 ;is it an ETX (End of Text)
 BNE H5115 ;no, check last character
 CMP #$18 ;is it a can character
 BNE H511A ;no, make this the last character
H5115 CMP LASTCHAR ;is this the last character? (can)
 BEQ H513A ;yes, flag send as bad, end it
H511A STA LASTCHAR ;no, make this the last character
 RTS

H511E LDA KEY ;check the keyboard
 BMI H512A ;key pressed? No, next part of loop
 STA STROBE ;yes, clear strobe
 CMP #$1B ;is it an <ESC>?
 BEQ H513A ;yes, stop transfer
H512A BIT PTRIG ;???
 DEC LOOPSML ;take car of inside loop
 BNE H5100
 DEC LOOPLRG ;take care of large loop
 BNE H5100 ;not done, try some more
 LDA #$00 ;done, nothing, 1 timeout
 RTS

*---------------------------------------------------------*
* Take care of bad send info... abort transfer            *
*---------------------------------------------------------*

H513A CMP #$18 ;is it a can character?
 BNE H5143 ;no, just go abort it
 LDA #$FF ;<CAN>, so mark it as bad send
 STA BADSEND ;save it
H5143 PLA
 PLA
 PLA
 PLA
 JMP H5086

*---------------------------------------------------------*
* Calculate a cumulative CRC-16 from Accumulator          *
*---------------------------------------------------------*

DOCRC PHA
 EOR CRCHI
 STA CRCHI
 TXA
 PHA
 LDX #$08
H5155 ASL CRCLO
 ROL CRCHI
 BCC H516D
 LDA CRCHI
 EOR #$10
 STA CRCHI
 LDA CRCLO
 EOR #$21
 STA CRCLO
H516D DEX
 BNE H5155
 PLA
 TAX
 PLA
 RTS

*---------------------------------------------------------*
* Initialize some locations & counters                    *
*---------------------------------------------------------*

H5174 LDA #$00 ;zero out some counters
 STA BLOCKNUM
 STA BLKLO
 STA BLKHI
 STA CRCLO
 STA CRCHI
 TAX
H5186 STA HA600,X ;zero out 1024 bytes
 INX
 CPX #$80
 BNE H5186
 RTS

PRSCRN PHA  ;save accumulator
 LDA #$12 ;save as horizontal position
 STA $24
 PLA  ;restore acc
 JSR PRINT ;print character in acc at horiz
 RTS

SETUP LDA H9E00
 CMP #$4C
 BEQ H51CC
 LDA #$4C
 STA H9E00
 LDA #$00
 STA H9E01
 LDA #$4F
 STA H9E02
 LDA $04
 PHA
 LDA $05
 PHA
 LDA #$2C
 STA $04
 LDA #$52
 STA $05
 JSR GETBYT
 PLA
 STA $05
 PLA
 STA $04
 LDA #$00 ;flag it as no bad send
 STA BADSEND
 RTS

H51CC LDA #$00
 STA H9E00
 STA H9E02
 LDA $04
 PHA
 LDA $05
 PHA
 LDA #>H522C
 STA $04
 LDA #<H522C
 STA $05
 JSR GETBYT
 PLA
 STA $05
 PLA
 STA $04
 RTS

*---------------------------------------------------------*
* Print number of blocks to sysop's screen (local)        *
*---------------------------------------------------------*

PRCOUNT PHA  ;save the ACC
 TXA  ;save the x reg
 PHA
 LDA #$15
 STA $24 ;new horizontal position
 LDX BLKLO ;block count lo
 LDA BLKHI ;block count hi
 JSR DECOUT ;print it
 PLA  ;get X
 TAX
 PLA  ;get ACC
 RTS

*---------------------------------------------------------*
* Here begins a fairly sophisticated print routine, more  *
* sophisticated than necessary in my opinion..            *
*---------------------------------------------------------*

SPRINT PLA  ;get return addr hi
 STA $48
 PLA  ;get return addr lo
 STA $49
 TYA
 PHA  ;save the y reg
 LDY #$00
 BEQ H520F ;does this work?
H520C JSR PRINT
H520F INC $48
 BNE H5215
 INC $49
H5215 LDA ($48),Y
 BNE H520C
 PLA  ;restore Y
 TAY
 LDA $49 ;get changed return addr lo
 PHA  ;push it
 LDA $48 ;get changed return addr hi
 PHA  ;push it
 RTS  ;return to altered location

*---------------------------------------------------------*
* Temporary Storage locations used by the program...      *
*---------------------------------------------------------*

BLKLO HEX 00 ;blocks sent lo
BLKHI HEX 00 ;blocks sent hi
CRCLO HEX 00 ;CRC lo
CRCHI HEX 00 ;CRC hi
LOOPSML HEX 00 ;small loop
LOOPLRG HEX 00 ;large loop (for input)
LASTCHAR HEX 00 ;last character sent
RETRIES HEX 00 ;# of retries
BLOCKNUM HEX 00 ;block number
BADSEND HEX 00 ;condition of last file sent
H522C HEX 00 ;???
H522D HEX 0A
H522E BRK
H522F BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
 BRK
H523F BRK
H5240 BRK
 BRK
 BRK
 BRK

