[To be published in Computer Music Journal 18:4 (Winter 94)]

ZIPI: Origins and Motivations

Keith McMillen
Zeta Music/Gibson Western Innovation Zone
2560 9th St. Suite 212
Berkeley, California 94710 USA
McMillen@CNMAT.Berkeley.edu

The success of alternate controllers has been less than overwhelming in the
history of electronic music. The predominant controller for electronic music
synthesizers has been the piano or organ keyboard. Beside the widespread
availability of pianos and organs and the people who play them, the very
nature of the keyboard makes it an ideal choice from an implementor's point
of view.

Keyboard-style instruments decouple the player from the sound generating
element. The strike of a finger on a key starts a chain of events that
produces a sound. After a key is struck the greatest creative choice left to
the musician is when to release it. This series of key closures and releases
is the simplest form of information that can be used to control a
synthesizer.

The early commercially available synthesizers (Moog's MiniMoog, the ARP
Odyssey, or the EMS Putney VCS-3) were monophonic and non-dynamic. As the
technology evolved, instruments became polyphonic and capable of wide
dynamic response (e.g., the Yamaha DX-7). The control information fed to the
synthesis engine grew to include how fast the key was struck (the MIDI key
velocity). Joysticks, modulation wheels, after-touch, and foot-pedals added
the continuous element to keyboard control.

Historically, this is not unfamiliar to keyboard players. Pipe organs are
non-dynamic but volume can be controlled by foot pedal. In many ways the
connection of keyboards to synthesizers resulted in very little loss of
familiarity of control with a large gain in timbral choice.

For musicians trained on other instruments, the option of synthesis has not
been attractive. Woodwinds, bowed strings, and brass instruments all place
the player in direct physical contact with the vibrating element---reeds,
strings, or columns of air. Instead of limited control of dozens of notes
these instruments offer subtle and intimate control over one or a few notes.
Whether to "trade in" this control for a wider tonal palette is a difficult
decision.


MIDI and Keyboards
==================

MIDI has been serving our interface needs for over a decade. Although many
have criticized MIDI (Loy 1985; Moore 1988; Scholz 1991), no one has done
much about its obvious problems. Alternate controllers have not been a major
factor in the business of electronic music, and therefore have not been well
accommodated by the industry. They represent a challenging problem both
technically and economically. The persistence of an interface standard that
makes the necessary extensions for nuance and control difficult if not
impossible has not helped.

The connection of keyboards to sample playback sound modules is well served
by MIDI. Even the speed of MIDI (31.25 kBaud) is adequate for transmitting
data using the event-based nature of a keyboard. A ten-note chord can be
sent in 6.7 msec, a delay which is on the borderline of being imperceptible.
The continuous controller information generated from a keyboard usually has
no more than three parameters (pitch bend, modulation, and after-touch),
keeping the bit count low.

Problems occur, however, when trying to connect alternate controllers to
synthesizers (Muir and McMillen 1986). Polyphonic instruments such as guitar
and violin can easily "flood" a MIDI channel with data. For example, simply
updating 7-bit pitch bend and volume 100 times a second for six guitar
strings exceeds MIDI's bandwidth:

6 strings * (3 pitch bytes + 3 volume bytes) * 10 bits / 0.01 sec = 36.0 kBaud

(MIDI takes 10 bits to transmit a 7 bit value).

Independent of bandwidth, MIDI also represents data in a manner that assumes
the controller is a keyboard or at least a percussive device. The MIDI
"note-on" command is an indivisible integration of timing, pitch, and
loudness (velocity) information. This is completely appropriate for a
keyboard; every time a key is struck the information for pitch, velocity,
and the timing of the "note" is known simultaneously and is sent out over
MIDI. Every modification of one of these three values is accompanied by a
change, or at least a reassertion, of the other two.

For an instrument of continuous nature, such as a violin, these parameters
are often decoupled. One hand generally determines timing and loudness and
the other decides pitch. They can and do change independently of each other.
Furthermore, the timing of a note is not as simple as the pressing of a
button. Notes can come into audibility gradually as in a crescendo. MIDI
requires that an on/off decision be made at some volume threshold. When this
threshold is met, the velocity value sent in a MIDI command will usually be
the value of this threshold, making the velocity data useless.

MIDI does provide some facility for continuous volume change (controller
#7), and for pitch change without articulation. Some synthesizers respond to
legato-style commands. Pitch bend can vary pitch up and down up to one
octave but with a resolution of only 5.1 divisions per semitone (19.6 cents).


The Good Old Days
=================

Do you remember the days before MIDI? Most available synthesizers were
analog and used analog voltages to represent musical values. Articulation
was separate from pitch and all controllable parameters were on equal
footing. Bandwidth and resolution were not concerns but good intonation was
a perpetual effort---a lot like playing a violin.

The integration of the 8-bit microprocessor into synthesizers largely solved
the tuning issues. The division of the octave so as to be easily represented
with 8 bits produced a strong bias for equal-tempered semitones. Combine
this with the irresistible desire of CPUs to communicate and you soon get
MIDI.

Connecting violins and guitars to digitally controlled analog synthesizers
was still possible. With some cooperation from the manufacturers (Sequential
Circuits, Oberheim, and Moog), analog controls extracted from the string and
injected into control voltage sum nodes could produce an intimate connection
between the controller and the synthesizer. Pitch bends and dynamic changes
were smooth and responsive. Pitch stability remained a problem as this
method bypassed some of the automatic tuning functions.

The emergence of frequency modulation (FM) and other methods of digital
synthesis made voltage-controlled oscillators (VCOs) and filters seem
quaint, and won great popularity because of the clarity and timbral variety
that these techniques offered. Unfortunately, these forms of sound
generation closed off many of the control points to synthesis. At this time,
alternate controller manufacturers were forced out of the hardware, and the
only practical point of entry was through MIDI. While simplifying the
connection, the loss of control was disappointing. At best, the style of
playing guitar or violin was forced into the language of the keyboard.

This did not preclude processing of the audio signal out of the synthesizer.
Several synthesizers have individual outputs for each voice. These could be
mapped to a specific string from the controller and modulated in the analog
domain based on information extracted from the string.

One of the most satisfying examples of this was the connection of a Zeta
Mirror 6 model fret-scanning guitar controller (Wait 1989) to a Yamaha
TX-802 FM synthesizer operating in legato mode. Each of six outputs from the
TX-802 was routed back to the Mirror 6 where it passed through a
voltage-controlled amplifier (VCA). This VCA was then controlled by an
envelope follower tracking the energy of one of the strings. The six VCA
outputs were summed and fed to an amplifier. Guitarists marveled at how
smoothly responsive the instrument felt and the great intimacy of the
control over synthesis. The simple use of continuous dynamic control
returned much of the musical nuance to the interface.

This did, however, limit the choice of synthesizers for the users of
alternate controllers. The emergence of sampling and its eventual
monopolization of the synthesizer market created new problems for
interfaces. The frequency of FM oscillators and VCOs are continuously
variable over the entire range of pitch. Samples, as the name implies, are
not, and require swapping of files that cover specific pitch ranges in order
to cover a wide range of pitches. Playing a trill across a sample boundary
results in discontinuous spectral envelopes for many sampled sounds.

Articulation for FM and VCOs come from external envelopes that can be varied
based upon input parameters from controllers. With sampling, the attack
character of the sampled instrument is inherent in the wave table. Timbral
changes are restricted to, at best, simple filtering or cross-fading between
fixed sounds. Even something as personal as vibrato is often captured by the
sample and is not under the performer's control.

The "skin-deep" beauty of sampling has left many musicians longing for a
more meaningful conversation with their instruments. Nostalgia has even
created a demand for older voltage-controlled synthesizers. Our group
recently completed the design of the Oberheim OBMx, an analog twelve-voice
subtractive synthesizer. One reviewer said of it, "it has what synthesizers
have been missing---a personality" (Aiken 1994). This willingness to give up
the accurate reproduction of acoustic instruments for control is
understandable but the situation demanding this choice is regrettable.


Breaking the Chain
==================

The loudest complaint about alternate controllers that extract information
from traditional instruments is the time delay between the performer's
gesture and the audible response from the synthesizer. However, the Zeta
Mirror 6 guitar, using a combination of switched frets and pitch analysis,
restricted latencies to less than 6 msec over most of its range. With the
delay issues removed, continuous amplitude control became the next, most
obvious, requirement. The technique previously described of controlling the
audio in the post-MIDI analog domain met this need.

Amplitude control is essential but not sufficient; many instrumentalists can
change the timbre of a note as it evolves over time. The mapping of timbral
information extracted from the instrument onto the synthetic voice or voices
is the next step for returning control to the performer. This too could be
handled in the post-MIDI audio path, but the requirement for greater
flexibility and more elaborate processing of control information is best
solved in the digital domain. The need for a new music description language,
and the means to transport this information in a high speed deterministic
network, became clear to us.

The first concepts for what was to become the ZIPI musical data language
started in the fall of 1989, coinciding with the start of intense
collaboration of Zeta Music and the Center for New Music and Audio
Technology (CNMAT) at the University of California, Berkeley. In order to
successfully improve the keyboard-MIDI-sampler path, replacements were
needed for all three of the elements in the chain. Since that date, research
has focused on the Infinity Box (a gesture-guided pitch and timbre to ZIPI
converter), the ZIPI network and its specification, and Frisco (an additive
resynthesis engine with a control structure that will respond to ZIPI MPDL
commands).


The Status of ZIPI and Related Projects
=======================================

As of this writing (June 1994) the physical layer of ZIPI has been
implemented using a ring of Intel 80386-based personal computers with Zilog
8530 cards with ZIPI PALs and current loop hardware installed. Software for
the monitor and nodes has been written for interrupt, polled, and DMA access
methods. Data link and basic network services are functioning. The polled
approach is the only viable method for an Intel 80386-based machine since
the MS-DOS operating system's interrupt latencies are too great to allow
even 250 kBaud operation. DMA requires the capture of an entire packet by
the monitor before it can be parsed, thus slowing the ring. All code
development for ZIPI is written in the C programming language with an
emphasis on portability to other processors.

By the time this article is published (December 1994), we will post some
ZIPI-related software to the Computer Music Journal's ftp site,
mitpress.mit.edu, in the directory /pub/Computer-Music-Journal/Code/ZIPI.

A stand-alone ZIPI hub is in development. This will use a Motorola MC68302
MPU as the ring monitor with four ZIPI connections, 2 MIDI ports (in and
out), and an interface to a computer bus. Additional ZIPI ports can be added
with "dumb" hubs up to the 253 device limit.

The "Infinity Box" (described in the "ZIPI Examples" article) will be the
first ZIPI controller. Planned release time for this is early 1995. Several
prototypes are already in operation, yielding FFT updates for 6 guitar
strings every 8 msec. (Infinity can be driven with one to six audio inputs
allowing it to work with most instruments, i.e., violin, saxophone, cello,
flute, etc.) This spectral data is passed from a signal processor (Motorola
DSP56002) to a general-purpose processor (Motorola MC68332) where it
generates ZIPI-formatted data for use by its internal sound engine and for
transmission out the ZIPI port. Additionally, a subset of the ZIPI data is
extracted and sent out a MIDI port.

The "Frisco" software is at this point running on Silicon Graphics, Inc.
Indigo workstations. Polyphonic "sample quality" sounds are being generated
in real time under a ZIPI-like control structure. Since this technique uses
hundreds of oscillators to resynthesize analyzed sounds, intelligent
high-level control over these oscillators yields a powerful synthesis
technique that is capable of great realism as well as subtle, intuitive
musical control. Presently a Macintosh computer running the Max software
communicates MPDL control information using IP/UDP packets over Ethernet. A
planned self-contained rack-mount version should be available in 1995. This
device will have ZIPI, MIDI and Ethernet inputs.

Just as the RS-232 serial connection standard continues to exist along with
Ethernet, we have no illusions that ZIPI will replace MIDI. Likewise, just
as MIDI has been pressed into service in areas never intended by its
designers (machine control, mixer automation, lighting), we can't fully
anticipate other manufacturers' networking needs.

ZIPI was presented to the industry at the winter NAMM shows in January 1993
and 1994. Participation and suggestions of many companies have added much to
the scope and practicality of what is presented here. We encourage readers
to suggest details for additional application layers, such as machine
control, studio automation, and sample dump and audio standards.

We hope this series of articles provides an understanding of the basics of
ZIPI, and, even moreso, a stimulus for comments, additions, and discussion
of user concerns. A more detailed specification of the ZIPI network is
available upon request. Please direct comments to the following address:

ZIPI Group
G-WIZ
2560 9th St., Suite 212
Berkeley, California 94710, USA
electronic mail: zipi@CNMAT.Berkeley.edu


Acknowledgments
===============

This work was supported in part by Grant C92-048 from the California State
Department of Commerce Competitive Technologies Program to CNMAT and Zeta
Music Systems, Inc. We would also like to thank the following individuals
for their valued comments, sometimes very critical, regarding the ZIPI and
MPDL specification: Jim Aiken, David Anderson, Marie-Dominique Baudot,
Richard Bugg, Tim Canning, Chuck Carlson, Lynx Crowe, Rob Currie, Steve
Curtin, Peter Desain, Kim Flint, Adrian Freed, Guy Garnett, Mark Goldstein,
Henkjan Honing, Dean Jacobs, Henry Juszkiewicz, Michael Land, Carl Malone,
Dana Massie, Bill Mauchly, Peter McConnell, F. Richard Moore, Chris Muir,
David Oppenheim, Stephen Travis Pope, Rob Poor, Miller Puckette, John
Senior, Warren Sirota, John Snell, Michael Stewart, Tovar, and David
Zicarelli.


References
==========

Aiken, J. 1994. "Oberheim OBMX Keyboard Report." *Keyboard* 20(8).

Loy, D. G. 1985. "Musicians Make a Standard: The MIDI Phenomenon." *Computer
Music Journal *9(4): 8-26.

Moore, F. R. 1988. "The Dysfunctions of MIDI." *Computer Music Journal
*12(1): 19-28.

Muir, C., and K. McMillen. 1986. "What's Missing in MIDI?" *Guitar Player*
June 1986.

Scholz, C. 1991. "A proposed extension to the MIDI specification concerning
tuning." *Computer Music Journal* 15(1): 49-54.

Wait, B. 1989. *Mirror-6 MIDI Guitar Controller Owner's Manual* Oakland,
California: Zeta Music Systems, Inc.
