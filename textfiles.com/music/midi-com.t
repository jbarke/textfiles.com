[To be published in Computer Music Journal 18:4 (Winter 94)]

A Comparison of MIDI and ZIPI 

Matthew Wright
Center for New Music and Audio Technologies (CNMAT)
Department of Music, University of California, Berkeley
1750 Arch St. 
Berkeley, California 94720 USA
Matt@CNMAT.Berkeley.edu

A main factor in the design of ZIPI was frustration with MIDI, the
well-established standard for communication among electronic musical
instruments. This article lists some of those frustrations and explain how
ZIPI overcomes them.  Basic knowledge of both MIDI and ZIPI are assumed
(e.g., [IMA 1988] and the related articles on ZIPI in this issue).


Real Networks
=============

Each MIDI device has separate MIDI plugs labeled "in," "out," or "thru." A
MIDI user must think carefully about which devices will be sending
information to which other devices, and arrange that the "MIDI-out" of the
device sending the information is connected with its own cable to the
"MIDI-in" of the device receiving the information, or that the signal is
properly daisy-chained via the "MIDI-thru" of intermediate devices.

Computer networks, in contrast, have the characteristic that any device
connected to the network can send and receive packets to and from any other
device connected to the network. ([Tanenbaum 1989] is an excellent
introduction to computer networks.) In Ethernet, for example, every device
has only one plug, and a single cable connects the computer to the entire
network, allowing it to talk to any device.

In this respect, ZIPI is more like a computer network than like MIDI. Each
ZIPI device has only one ZIPI plug, and a single ZIPI cable connects it to a
hub. Any devices connected to the same hub can send packets to each other.
If multiple hubs are connected with ZIPI cables, than any device connected
to any hub can talk to any other device on any hub.

This means that musicians will never have to rewire their ZIPI studios,
unless they add or remove devices. If you want to use your ZIPI synthesizer
as a keyboard controller one day and as a timbre module the next day, no
wiring has to change. You never have to worry about the number of ZIPI
outputs your computer has, because connecting your computer's one ZIPI port
to the hub will allow the computer to control any number of ZIPI
synthesizers. You never have to build complicated wiring structures with
in/out/thru, because you don't have to think about which data will flow
through which wire.

This also means that all ZIPI communication can be two-way instead of
one-way. A ZIPI controller can ask questions of a ZIPI synthesizer, e.g., to
find out its capabilities, and the synthesizer can respond by sending a
message back to the controller (Loy 1985).


Bandwidth and Efficiency
========================

MIDI has a data rate of 31.25 kBaud, which it uses 80 percent efficiently.
(MIDI has 10-bit bytes, with a start bit, 8 data bits, and a stop bit.) This
is more than enough for note on and note off events; consider the extreme
case of a keyboard player playing 10-voice 16th-note chords at 120 beats per
minute. That is 80 notes per second. A MIDI note on and note off each take
only 2 bytes to transmit (using running status), so that's 320 bytes, or
3,200 bits per second, which is just over a tenth of MIDI's bandwidth. 

MIDI cannot keep up, however, with continuous controllers. A guitar
controller soon to be released by Zeta Music tracks pitch, loudness,
brightness, even/odd ratio, and noise amount on each of six strings,
updating each parameter every 8-10 msec. Pitch and loudness are 2-byte
values; the other three are 1-byte, so to send these over MIDI we would have
to use seven continuous controllers. (Even this is generous, since MIDI
continuous controllers are only 7 bits and we compute 8-bit bytes.) This
results in 4200 control updates per second:

	7 control updates * 6 strings / 10 msec = 4200 control updates/sec

Sending continuous controllers on separate channels rules out MIDI running
status, so we assume each of these would take three bytes. How much
bandwidth does this require? 

4200 control updates/sec * 3 bytes/controller * 10 bits/byte = 126 kBaud.

This is over four times MIDI's data rate, without even considering note on
and note off messages.

ZIPI's data rate is variable, with no maximum, so as technology improves and
data rates increase, ZIPI will never be a bottleneck. ZIPI's minimum data
rate is 250 kBaud, eight times MIDI's rate, which is a comfortable speed
even for this kind of continuous information. Currently available
communication chips allow a maximum data rate of 20 MBaud. (ZIPI includes a
mechanism for automatically picking the fastest speed that all connected
devices can handle, so it's no problem to mix ZIPI devices with different
data rates.)

Also, ZIPI's data format allows it to transmit high-bandwidth information
more efficiently than MIDI.  For example, the information produced by the
guitar controller mentioned above would require 126 kBaud to transmit via
MIDI continuous controllers.  Via ZIPI, the same controller could transmit
all the same data, with slightly higher resolution, using only 85.6 kBaud.
(See the derivation for this in the "Examples of ZIPI Applications" article
in this issue.)  Thus, in addition to being faster than MIDI, ZIPI uses its
bandwidth more efficiently.


Flexibility in Message Addressing
=================================

MIDI messages fall into two categories. The first category consists of the
messages whose first data byte specifies a particular note number: note on,
note off, and polyphonic after-touch. All other MIDI controller messages,
such as pitch bend, pan, and modulation, apply to an entire channel, not a
single note.

Imagine that you are controlling a synthesizer from a guitar via MIDI. Each
of the six guitar strings might be bent by the guitarist by different
amounts, so to have individual pitch-bend control of six voices, you'd have
to put them on six different MIDI channels; all MIDI guitars do this. That
is awkward and needlessly complicated, and it uses up over a third of the
MIDI channels for one instrument. In ZIPI, it is possible to address a pitch
message to a single note instead of an entire channel. In fact, any message
can be sent to a single note, so this entire category of problem can never
arise.

MIDI has the opposite problem too. It would be nice to turn off all of the
notes on a channel all at once, but since note off commands cannot be sent
to a channel, this is impossible. Every note off message has to be sent to
only one note. There is a separate "All Notes Off" message, but it has a
decidedly second-class status; "In no case should [all notes off messages]
be used in lieu of note off commands to turn off notes which have been
previously turned on. Therefore any all notes off command (123-127) may be
ignored by receiver with no possibility of notes staying on, since any note
on command must have a corresponding specific note off command" (IMA 1988).

For after-touch, there are also two separate messages: polyphonic
after-touch, applicable only to a single note, and channel after-touch,
applicable only to an entire channel. The MIDI standard doesn't explicitly
discourage either of these messages, but in practice the channel version of
the message is generally favored---few MIDI controllers send polyphonic
after-touch. Again, MIDI has separate controllers that mean the same thing,
except for their addressability. 

The last note-addressed MIDI message is note on. It would be nice to be able
to articulate an entire chord in one message, avoiding temporal "smearing"
of the onsets of the notes in the chord (Moore 1988) and saving bandwidth.
This is impossible in MIDI. There isn't even a second-class channel message
for note-on, because MIDI has no way to specify what notes the chord would
contain. In ZIPI, every message can be sent either to a single note or to a
group of notes. Anything you can tell a note to do you can also tell a group
of notes to do.


Address Space
=============

In MIDI, a note's address is the same as the note's pitch. If you want to
specify which note to apply after touch to, or which note to release, you
have to name that note by giving its pitch. You cannot say "note number 55"
without it meaning "the note whose pitch is G below middle C."

In real life, though, a note's pitch might change over time, or there might
be two notes played on the same instrument with the same pitch. Both of
these situations are awkward to express in MIDI. You can't say "that note
that is G below middle C; slide it up a whole step to A below middle C." You
can send a pitch-bend message to the channel containing that note, but then
when you want to release the A you still have to call it a G, because the
note number is the name as well as the pitch.

Similarly, imagine a MIDI guitar controller in which the guitarist is
fretting an E on the fifth fret of the B string, and also letting the open E
ring on the high E string. The guitar is playing two notes at the same time,
with the same pitch. But the note on the E string might be a lot quieter
than the note on the B string, or the note on the B string might be bent up
a half step, or one of them could end while the other keeps sounding. When
you send a typical MIDI synthesizer two note-on messages with the same
pitch, it plays two copies of the same note.  But then it's hard to send
messages to a particular one of the two notes. If you send polyphonic after
touch to MIDI note number 64 (the E being played by two strings), it might
affect both the sounding notes, or just one of them, but there is no way to
specify which one. If you send a note-off to note number 64, either note
might release, even if one is much louder than the other. It is possible to
get around these problems by using separate MIDI channels for each note.
Then you could have a loud E on channel 1, and a quieter E, with after
touch, on channel 2. But this solution is inelegant and awkward, and it soon
leads to running out of MIDI channels.

In ZIPI, the notions of address and pitch are separate. ZIPI note number 64
doesn't have to be the E above middle C; it is simply a number. When you
want a note to sound, you pick an address, give it a pitch, loudness, etc.,
and tell it to start. Then whenever you want to make changes to this note,
you send the address of this note and the note descriptors that change it.


Distinguishing Between Controller and Synthesizer Messages
==========================================================

When a musician controls a synthesizer, there are four steps: (1) the
musician performs some action, like blowing into a mouthpiece or pressing
keys; (2) these gestures are somehow measured, producing parameters such as
"how fast the key was going" and "which fret was fingered"; (3) these
measurements are translated into parameters to control a synthesizer. For
example, key velocity might map to amplitude and brightness, and fret
position would map to pitch; and (4) a synthesizer takes these control
parameters and produces sound. Figure 1 illustrates these steps. Note that
there are two streams of information. One is a stream of measurements about
the musician's gestures; the other is a stream of control parameters for a
synthesizer.

[Figure 1 would go here if this weren't the ASCII version]

In MIDI, these two streams are confused. There is no way to directly set the
pitch of a note in MIDI. You can say which key was pressed, and what the
position of the pitch bend wheel is, but those are both descriptions of what
the musician's hands are doing, not measurements of pitch. In other words,
MIDI's notion of pitch only goes as far as describing the gestures produced
by a keyboard player, not explicitly controlling a synthesizer.

Obviously, failing to make a distinction between these two ideas does not
prevent music from being made with MIDI. For example, MIDI users understand
that the way to send pitch via MIDI is to pretend that a keyboard player is
pressing a certain key and holding the pitch bend wheel in a certain
position, even if they would rather control pitch directly. (Non-keyboard
MIDI controllers start by knowing the desired pitch; then they have to go
through extra steps to translate the desired pitch into a MIDI key number
plus a pitch bend amount.) Likewise, people use the term "velocity," which
is a measure of how fast a key is pressed, to mean loudness or amplitude.

ZIPI has a distinction between these two kinds of information. Standard
messages, which ZIPI synthesizers expect to see, are descriptions of sounds
that should be produced, not descriptions of gestures that the musician is
producing. So instead of having "key number" and "velocity," ZIPI has
"pitch" and "loudness." But ZIPI also has a second set of parameters
explicitly for describing musicians' gestures. These include keyboard
measurements like key number and velocity, but also parameters that come
from other controllers, e.g., bow position, wind pressure, and striking
position on a drum head.


Controlling Drum Machines
=========================

Many MIDI drum machines and drum timbre modules allow the user to
pitch-shift and pan drum samples.  This can be useful to create what seems
like a large number of instruments out of one single sample.  But since
MIDI's pitch is the same as its address, it is common for each key number to
be assigned to a different sound altogether, as in ``middle C is ride
cymbal, C# above that is closed hi-hat...'' With this scheme, it's
impossible to use MIDI's pitch mechanism to specify the pitch of a drum
sound.  Some MIDI drum machines get around this by letting the user assign
the same sample, with different pitches and pan locations, to multiple MIDI
note numbers (Kawai 1986, Smith 1990), but that easily results in running
out of note numbers.

Furthermore, this mapping from MIDI note numbers to various drum sounds
isn't standard, and can't be set via MIDI.  This makes it difficult for two
drum machines to communicate via MIDI, because MIDI note number 37 might
mean snare drum to one instrument and crash cymbal to another.  Using
different pitch and pan values for the same sound on different MIDI key
numbers just makes this worse, because even if MIDI note 68 is a crash
cymbal on both drum machines, it might be pitch shifted up on one of them
and down on the other.

This can even be a nuisance when sequencing drum tracks from the same drum
machine that will play them back.  For example, suppose your drum machine
lets you specify the pitch and pan of each note as you add it to a drum
pattern.  Once your pattern is complete you want to load it into your
sequencer along with the keyboard parts.  But on many drum machines, the
MIDI note numbers chosen for outgoing MIDI data are determined only by the
instrument being played, not by the pitch of that instrument.  So
translating a drum sequence to MIDI loses the work spent specifying the
pitches.

Drums under ZIPI would be much easier, because pitch and address are
separate concepts, and because each note can have its own pitch, program
change, and pan.  A typical configuration would be to think of a drum kit as
a family, with instruments like snare drum, timpani, cowbell, etc.  Each of
these instruments could be sent a program change message selecting the
appropriate percussion timbre, so there is no ambiguity about the mapping of
instrument numbers to drum sounds.  A percussion sound could be selected by
choosing an instrument, and pitch or pan could be changed by sending a pitch
or pan message to a note in that instrument.

This means that a ZIPI drum machine wouldn't have to provide so much
structure for assigning sounds, pitches, and pans to each key number.
Instead, all of the setup can be done over ZIPI.  To get a new set of
sounds, your controller or sequencer can just send program change, pan, and
pitch messages to each instrument of the drum kit.

ZIPI's MPDL also has note descriptors reserved for drum-specific control
parameters like position on the drum head, and velocity and acceleration.
Continuous hi-hat pedal position, varying from fully depressed to fully
open, would be encoded in ``continuous pedal'' messages.  Hopefully, the
next generation of drum pads and drum machines will take advantage of these
parameters to give electronic drums a level of expressivity closer to that
of acoustic drums.


Data Resolution
===============

Each MIDI byte begins with a status bit that tells whether it is a data byte
or a control byte, so each byte really only has seven user-settable bits.
Seven bits is not enough resolution for a variety of applications, and it is
awkward to send larger amounts of information. It is possible to partition a
14-bit quantity into two separate MIDI controllers, but this is messy and
rarely done. Also, even 14 bits is not enough for many applications; it
would take 3 MIDI bytes (30 bits transmitted) to send a 16-bit word. ZIPI
parameters can have any number of 8-bit data bytes; there is no per-byte
overhead in ZIPI.

MIDI uses only four bits to encode a channel, giving 16 channels. This major
weakness has given rise to kludges like multiple MIDI outputs on a computer,
each with an associated letter. This would give, e.g., 32 MIDI channels,
which could be referred to by special software as A1-A16 and B1-B16 (Roberts
1992). ZIPI addresses are 20 bits, giving over a million possible addresses.


High-Level Parameter Control
============================

Suppose you are playing something on a multi-timbral synthesizer via MIDI,
and that you want to turn down the entire output of the synthesizer via
MIDI. The only way to do it is to send continuous controller 7, volume, to
all 16 MIDI channels. In ZIPI, messages can be sent to any level of the
address space hierarchy, so it would be possible to turn down a group of
instruments all at once (and with only one network message) by sending a
loudness message to the family that contains those instruments. It is even
possible to send a message to all families at once. This should make it
unnecessary to duplicate the same ZIPI message many times to control
different notes.

MIDI also requires a large number of messages to apply a simple function to
a parameter. For example, suppose you would like to exponentially decrease
the volume of a MIDI channel. The only way to do this is to send a stream of
volume controller messages. In ZIPI, it is possible to request that a
certain function modulate a parameter. You could say, for example, "begin an
exponential decay of loudness that takes 2.3 seconds to go to silence" in a
single message, and the decrescendo would then happen without any further
messages. There are some useful pre-defined functions in ZIPI, and a way for
you to send your own tables over the network if you would like to make up
your own functions "on the fly."


Support for Pitch Trackers
==========================

The theoretical lower bound to find the pitch of an arbitrary signal is one
period. The lowest note of a 5-string bass guitar, the B three octaves and a
half step below middle C, is 30.9 Hz. One period at 30.9 Hz is 32 msec. A
MIDI bass guitar can know that the musician is playing a note well before
one msec, just from looking at the amplitude of the signal coming from the
pickup. But it can't know the pitch for at least 32 msec, probably more.

In MIDI, it is impossible to start a note without a commitment to the note's
pitch, since pitch (i.e., key number) is part of a note-on message. The
synthesized note cannot start for quite a long time after the musician plays
it on the bass. A 30 msec delay here is very easily detected by the ear;
that is why most MIDI bass and guitar controllers feel "spongy" or
unresponsive to many musicians.

What can the synthesizer do for the 30 msec between when the note starts and
the pitch tracker knows the pitch? The ear is very forgiving about exactly
what it hears for those 30 msec. Many non-electronic timbres begin with lots
of noise-like sound for at least 30 msec, for example, the hammer noise on a
piano or the wind turbulence on a flute. The pitch can sometimes vary a
great deal during the onset of a note. An examination of brass tones, for
example, shows that there is often an extensive glissando during the attack,
yet we hear the note as having a definite, fixed pitch (Risset and Wessel
1994). It is not that the glissando is imperceptible; it is just that the
glissando is heard as part of the attack characteristic of the tone rather
than as part of the pitch.

The solution therefore would be for the bass guitar controller to send a
note-on message as soon as it knows there is a note. The synthesizer can
play mostly noise, or the wrong pitch, for 30 msec or so, while the pitch
tracker is waiting to find the pitch. When the pitch is determined, the
controller can update the synthesizer, and from then on the synthesizer will
play the right pitch. 

This is easy in ZIPI, since it is possible to articulate a note and then
later correct the pitch of that note. ZIPI also has a way to set the balance
of a sound's pitched and noise portions.


References
==========

International MIDI Association (IMA). 1988. *MIDI 1.0 Detailed
Specification, Document Version 4.0*. Los Angeles, California, IMA.

Kawai. 1986. *R-100 Digital Drum Machine Owner's Manual*. Tokyo, Japan:
Kawai Corp..

Loy, D. G. 1985. "Musicians Make a Standard: The MIDI Phenomenon." *Computer
Music Journal* 9(4): 8-26.

Moore, F. R. 1988. "The Dysfunctions of MIDI." *Computer Music Journal*
12(1): 19-28.

Risset, J. C., and D. Wessel. 1994. "Analysis-Synthesis Methods for Sound
Synthesis and the Study of Timbre." In D. Deutsch, ed. 1994. *The Psychology
of Music*, 2nd Edition. London: Academic Press.

Roberts, A. 1992. "Devices for Increasing the Number of MIDI Channels."
*Computer Music Journal* 16(4): 101-104.

Smith, R. 1990. *PROCUSSION 16 bit Percussion Sound Module Operation
Manual.* Scotts Valley, California: E-Mu Systems.

Tanenbaum, A. S. 1989. *Computer Networks*. Englewood Cliffs, New Jersey:
Prentice Hall.
