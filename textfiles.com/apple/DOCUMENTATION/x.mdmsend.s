*       X.Command       *
*     Version 1.0       *
* Written by Hermes     *
* Written on Merlin Pro *
* Version 1.0: 12/23/92 *
*                       *

 org $9e00           ;the freespace for use commands in Macos

* ---Equates
  Getnxt equ $380    ;get next byte from the program
Goblcomm equ $386    ;engulf the comma
 Mdmslot equ $e00    ;where Macos keeps the modem slot*16
    ASnd equ $c088   ;the base of the ACTA send byte
    ARcv equ ASnd    ;the base of the ACTA recieve byte
   Stats equ $c089   ;the base of the SSC status byte
 IntPage equ $bf80   ;the interrupt vectors in ProDOS
     MLI equ $bf00   ;the ProDOS Machine Language Interface

* ---SetInt
* Sets up the necessary interrupts to recieve
* chars. from the modem.  Because of this, the modem echo
* must be OFF, and the card must use interrupts.

SetInt ldx #$00      ;set-up offset into buffer and interrupt page
:loop lda IntPage,x  ;get the byte from the ProDOS page
 sta buffr1,x        ;put it right into the buffer
 inx                 ;up the pointer
 lda IntPage,x       ;get the next 1
 sta buffr1,x        ;and store it
:done jsr MLI        ;call the ProDOS MLI and ask it to...
:Deal_Int hex 41     ;deallocate interrupt
 da :parms           ;the address of the parameters is ':parms'
 JMP Send            ;yes, we can start sending to the modem
:parms hex 0101      ;1 parameter, ref. number 1
buffr1 ds 8          ;8 bytes to store the old interrupt vecotrs

* ---Send
* This routine send the user's string to the modem.

Send jsr Goblcomm    ;who needs the comma?
 ldx Mdmslot         ;load with offset to slot number
:loop jsr Getnxt     ;get the next char. from the program
 sta ARcv,x          ;send the char. to the modem
 pha                 ;store off the char. that was sent
:subloop lda Stats,x ;get the status from the SSC
 and #%00010000      ;turn off all bits except bit 4 (value 8)
 bne :doneloop       ;if we're done, go on...
 beq :subloop        ;otherwise, keep checking
:doneloop pla        ;get the character sent
 ora #%10000000      ;turn on bit 7
 cmp #$8d            ;is it return?
 beq checkrsp        ;it is, start waiting for response from modem
 bne :loop           ;it's not, well kepp looping the chars.

* ---checkrsp
* This routine sets up an infinite dummy loop
* The interrupt handler stores off each character in a buffer.
* Once done, ($8d found) it proceeds on to find a match.

checkrsp ldx #$0     ;set offset to zero
loop lda buffr2,x    ;get the last-known byte
 cmp #$8d            ;is it return?
 beq search          ;yes, whoopy! start the search
 bne loop            ;no, then keep checking always....
IntHndlr cld         ;yeah, we'll take the interrupt
 sei                 ;so we don't lose any interrupts
 ldx Mdmslot         ;load modem slot offset
 lda Stats,x         ;check to see if it was from the modem
 and #%00001000      ;kill everything except the 'sent' bit
 beq :not            ;if we don't have it, exit neatly...
 lda ARcv,x          ;get the byte sent by the modem
 ora #%10000000      ;turn the high-bit on...
 sta buffr2,x        ;store the byte in the buffer....
 inx
 cli                 ;it's been ushered off to the buffer
 clc                 ;there wasn't an error
 rts                 ;go into the middle of that loop.
:not sec             ;not our interrupt
 cli                 ;so interrupts are off
 rts                 ;and return
buffr2 ds 32         ;32 bytes of buffer space (more than adequate)

* ---Search
* Now to match the modem's response with the right code.
* This routine employs binary searching.  Not that I
* think it matters.  This routine isn't time-intensive;
* however, for a complete discussion see the docs.

search jsr Deall     ;clear interrupt,so Macos doesn't maiss anything
 ldy #$00            ;set offset into the damn string
 sty $03             ;store the initial id as zero
 lda #>table         ;the high-byte of the start addr. of the table
 sta $00             ;the high byte is there, forever
 lda #<table         ;the low-byte of the start addr. of the table
 sta $01             ;the low-byte is there, forever
loop2 lda ($00),y    ;get the byte from the table
 pha                 ;put it on the stack
 lda buffr2,x        ;get the char. to compare
 sta $02             ;the place to compare
 pla                 ;get that last char. back
 cmp $02             ;compare it.....
 bne doneloop        ;no, than take care o' it...
:incrmnt lda ($00),y ;get the char. back
 ora #$00            ;run a generic operation to set flags
 bmi found           ;if it's MSB is 1, we got ourselves a winner...
 inx                 ;otherwise, we keep on checking
 jmp loop2
doneloop ldx #$00    ;reset the comparison counter to 0
:loop lda ($00),y    ;get the byte
 ora #$00            ;dummy flag-setter
 bmi setit           ;if it's negative, we found next adr.
 jsr upzer           ;otherwise, keep looking
 jmp :loop           ;go do the loop again
setit jsr upzer      ;up one more byte
 inc $03             ;up the id counter
 lda $03             ;make sure we're not done....
 cmp #$1c            ;is it done
 beq error           ;yes, we have a problem
 jmp loop2           ;otherwise, yall can continue looping
upzer inc $01        ;up the low-byte
 pha                 ;save the a-register
 lda $01             ;get that low-byte
 beq :uphi           ;if it's zero, go ahead and up the low-byte
 rts                 ;otherwise, go back young man..
:uphi inc $00        ;up the low-byte
 rts                 ;and return

error ldx #$08       ;Missing Data Error
 jmp $392            ;that's it..I'm outa here

found lda $03        ;get the id
 sta $0a             ;put in it's place
 rts                 ;I'm done
Deall lda buffr1     ;get the low-byte of the addr
 sta All:Parms+1     ;move it back...
 lda buffr1+1        ;get the high-byte
 sta All:Parms+2     ;store it back
 jsr $bf00           ;re-install the interrupt handler
 dfb $40             ;allocate interrupt
 da All:Parms        ;the address of All:Parms
 rts                 ;now, we're done
All:Parms dfb $01    ;1 paramter
 ds 3                ;the addr. of Macos's  routine, pluse 1 byte
 rts                 ;and I'm outa here
table dci 'OK'
 DCI 'CONNECT 300'
 DCI 'RING'
 DCI 'NO CARRIER'
 DCI 'ERROR'
 DCI 'CONNECT 1200'
 DCI 'NO DIALTONE'
 DCI 'BUSY'
 DCI 'NO ANSWER'
 DCI 'UNKOWN'
 DCI 'CONNECT 2400'
 DCI 'VOICE'
 DCI 'CONNECT 9600'
 DCI 'CONNECT 9600/ARQ'
 DCI 'CONNECT 1200/ARQ'
 DCI 'CONNECT 2400/ARQ'
 DCI 'CONNECT 9600/ARQ'
 DCI 'CONNECT 4800'
 DCI 'CONNECT 4800/ARQ'
 DCI 'CONNECT 7200'
 DCI 'CONNECT 12000'
 DCI 'CONNECT 7200/ARQ'
 DCI 'CONNECT 12000/ARQ'
 DCI 'CONNECT 14400'
 DCI 'CONNECT 14400/ARQ'
 DCI 'CONNECT 16800'
 DCI 'CONNECT 16800/ARQ'

 sav /blank/x.call
