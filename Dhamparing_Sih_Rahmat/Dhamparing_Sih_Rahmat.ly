\version "2.25.26"

\include "solmisasi-ly.ily"
\debugOff

\header {
  dedication = ##f
  title = \markup \override #'(font-series . extrabold) "Dhamparing Sih Rahmat"
  subtitle = \markup \larger { \normal-text \italic medley \caps "Tuhan, Betapa Banyaknya" }
  header-title = \markup \override #'(baseline-skip . 2.2) \column {
    \normal-text \caps "Dhamparing Sih Rahmat"
    \normal-text \line {
      \italic medley
      \caps "Tuhan, Betapa Banyaknya"
    }
  }
  composer-pre-text = ##f
  composer = "KPKA 103 & KJ 393"
  arranger-pre-text = "Tatasuara:"
  arranger = "Henri Yulianto"
  poet-pre-text = ##f
  poet = ##f
  meter-post-text = ##f
  instrument-pre-text = "Untuk"
  instrument = "PS Campur SATB"
  instrument-id = "SATB"
  copyright = "&copyright; 2025 GKJ Margoyudan"
}

%SolmisasiStaffSize = #(* (/ 11 12) 20)
%StandardStaffSize = 20
%IncludeStandardNotation = ##t
%TwoVoicesPerStaff = ##t
%ExportMIDI = ##f
%MIDIExtension = "midi"
%IncludePianoInSolmisasi = ##f

%% MUSIC

Global = {
  \tag #'solmisasi {
    \disallowPageBreak
    \disallowLineBreak
    \override Score.Beam.extra-offset = #'(0 . -0.5)
  }
  \numericTimeSignature
  \time 6/4
  \once \override SolmisasiKeyChangeMark.X-offset = #-5
  \key c \major
  s1.*3 | % 3
  s2. s2
  \bar "!" \break

  \mark "Dhamparing Sih Rahmat : Bait 1" \default
  s4
  s1.*3 s1 s4
  \tag #'solmisasi \break
  s4
  s1.*3 s2. s2
  \tag #'solmisasi { \bar "!" \break }

  \mark "Dhamparing Sih Rahmat : Refrain" \default
  s4
  s1.*3 s1*5/4
  \tag #'solmisasi \break
  s4
  s1.*4 s1*5/4
  \tag #'solmisasi { \bar "!" \pageBreak }

  \mark "Dhamparing Sih Rahmat : Bait 2" \default
  \once\omit Score.SolmisasiEquivalenceNoteText
  \key d \major
  s4
  s1.*3 s1 s4
  \tag #'solmisasi \break
  s4
  s1.*3 s2. s2
  \tag #'solmisasi { \bar "!" \break }

  \mark "Dhamparing Sih Rahmat : Refrain" \default
  s4
  s1.*3 s1*5/4
  \tag #'solmisasi \break
  s4
  s1.*3
  s2
  s1
  -\tweak outside-staff-priority ##f
  -\tweak Y-offset #-2
  -\tweak to-barline ##t
  -\tweak bound-details.left.text \markup\bold\italic "accel."
  \startTextSpan <>\stopTextSpan
  \bar "||" \break
  \mark \default
  \tempo "Lebih hidup" 4=162
  \once\override SolmisasiKeyChangeMark.outside-staff-priority = ##f
  \once\override SolmisasiKeyChangeMark.Y-offset = #-2
  \once\omit Score.SolmisasiEquivalenceNoteText
  \key g \major
  s1.*4

  \mark "Tuhan, Betapa Banyaknya : Bait 1" \default
  s1.*3 s1*5/4 \tag #'solmisasi \pageBreak
  s4 s1.*4 \break

  \mark "Tuhan, Betapa Banyaknya : Refrain" \default
  s1.*5 \tag#'solmisasi \break
  s1.*5 \tag#'solmisasi \break
}

InstrumentCueInstrumentName = "Intro"
InstrumentCueMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 6/4
  \key c \major
  \tempo "Mengalir" 4=90
  c'''4 b'' a'' g'' f'' e'' |
  f''2. e''4 d'' c'' |
  c''4 b' a' g' f' e' |
  f'2. g'2
}

WomenInstrumentName = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column {
    S A
  }
}

SopranoInstrumentName = "S"
SopranoShortInstrumentName = "S"
SopranoMusic = {
  \clef treble
  \numericTimeSignature
  \time 6/4
  \key c \major
  s1.*3 | % 3
  s2. s2

  s4
  s1.*7 s1 s4

  c''4-\tweak X-offset #0.2 -\tweak Y-offset #-1 -\mf
  c''2 b'4 d'4 ( e'4 ) f'4 | % 14
  a'2 g'4 g'2 c''4 | % 15
  b'2 b'4 c''4 ( b'4 ) a'4 | % 16
  g'1*9/8 r8

  c''4 | % 17
  c''2 b'4 d'4 ( e'4 ) f'4 | % 18
  a'2 g'4 g'2 c''4 | % 19
  b'4 ( a'4 ) g'4 f'4
  (  -\tweak Y-offset #-0.5 -\> e'4 ) d'4 <> \! | % 20
  c'1*5/4 r4 | % 21
  r2. r2

  \key d \major
  d'4 -\tweak Y-offset #-1 -\mp
  d'2 fis'4 a'2 a'4 | % 23
  b'4 ( -\tweak Y-offset #-0.5 -\< cis''4 ) d''4 a'2 \! -\tweak Y-offset #-0.5 -\> a'4 <> \! | % 24
  b'2 a'4 a'2 fis'4 | % 25
  d'4 ( e'4 ) fis'4 e'2
  r4 | % 26
  R1.*3 | % 27
  r1*5/4

  s4
  s1.*3
  s1*5/4
  d''4 | % 34
  d''2 cis''4 e'4 ( fis'4 ) g'4 | % 35
  b'2 a'4 a'2 d''4 | % 36
  cis''4 ( b'4 ) a'4 g'4 ( -\tweak Y-offset #-0.5 -\> fis'4 ) e'4 <> \! | % 37
  d'1*5/4 r4 \bar "||" % 38

  \key g \major
  R1.*4

  g'4-\tweak Y-offset #-1 -\mp fis'4 e'4 g'2 e'4 | % 43
  fis'2 e'4 d'2 d'4 | % 44
  a'2 fis'4 e'2 d'4 | % 45
  g'1*9/8 r8 b'4 | % 46
  a'2 b'4 a'2 g'4 | % 47
  fis'2 g'4 a'2 g'4 | % 48
  fis'2 fis'4 g'2 e'4 | % 49
  a'2. ( -\< \after 2 \! ais'1*5/8 ) r8 | % 50

  b'2-\tweak Y-offset #-1 -\tweak X-offset #0.05 -\mf g'4 d'2 dis'4 | % 51
  e'4 g'4 c''4 b'2. | % 52
  b'2 g'4 d'2 g'4 | % 53
  g'4 a'4 b'4 a'1*5/8 r8 | % 54
  b'2 g'4 d'2 dis'4 | % 55
  e'4 g'4 c''4 b'2. | % 56
  d''4 b'4 g'4 a'4 b'4 c''4 | % 57
  b'2 a'4 g'1*5/8 r8 | % 58

  d''4 b'4 g'4 a'4 b'4 c''4 | % 59
  r1. | % 60
  d''4 -\< b'4 g'4 a'4 b'4 c''4 <> \! | % 61
  b'4 -\f b'4 b'4 <b' d''>2 <a' d''>4 | % 62
  \shape #'((0 . -0.5) (0 . -0.6) (0 . -0.6) (0 . -0.5)) PhrasingSlur
  \phrasingSlurUp <g' g''>1.( \( | % 63
  <g' g''>2.) \) r2. | % 64
  r1. \bar "|."
}

AltoInstrumentName = "A"
AltoShortInstrumentName = "A"
AltoMusic = {
  \setStaffShortInstrumentName \WomenInstrumentName
  \clef treble
  \numericTimeSignature
  \time 6/4
  \key c \major
  s1.*3 | % 3
  s2. s2

  c'4 -\tweak self-alignment-X #-0.65 ^\dynamicWithText "mp" "SA unis." | % 5
  c'2 e'4 g'2 g'4 | % 6
  a'4 ( -\< b'4 ) c''4 g'2 \!  -\> g'4 <> \! | % 7
  a'2 g'4 g'2 e'4 | % 8
  c'4 ( d'4 ) e'4 d'4. r8 c'4 \spanBarOff | % 9
  c'2 e'4 g'2 g'4 | % 10
  a'4 ( -\< b'4 ) c''4 g'2 \! -\> g'4 <> \! | % 11
  a'2 g'4 g'2 c'4 | % 12
  e'2 d'4 c'4. r8 \spanBarOn

  \dynamicsOff
  \resetStaffShortInstrumentName
  e'4-\mf \spanBarOff | % 13
  f'4 ( a'4 ) g'4 b4 ( c'4 ) d'4 | % 14
  f'2 d'4 e'2 fis'4 | % 15
  g'4 ( d'4 ) d'4 e'4 ( g'4 ) fis'4 | % 16
  g'2 ( f'!4 e'4. ) r8 e'4 | % 17
  f'4 ( a'4 ) g'4 b4 ( c'4 ) d'4 | % 18
  f'2 d'4 e'2 e'4 | % 19
  d'4 ( c'4 ) b4 c'4 ( -\> a4 ) b4 <> \! | % 20
  g1*5/4 r4 \spanBarOn | % 21
  r2. r2

  \key d \major
  d'4 -\mp
  d'2 d'4 fis'2 fis'4 | % 23
  g'4 ( -\< a'4 ) g'4   fis'2 \! -\> fis'4 <> \! | % 24
  a'4 ( g'4 ) e'4 g'4 ( fis'4 ) d'4 | % 25
  b4 ( cis'4 ) d'4 cis'2
  r4 | % 26
  R1.*3 | % 27
  r1*5/4

  s4
  s1.*3
  s1*5/4
  fis'4 \spanBarOff | % 34
  g'4 ( b'4 ) a'4 cis'4 ( d'4 ) e'4 | % 35
  g'2 e'4 fis'2 fis'4 | % 36
  e'4 ( d'4 ) cis'4 d'4 ( -\> b4 ) cis'4 <> \! | % 37
  a1*5/4 -\mp r4 \spanBarOn \bar "||" % 38

  \key g \major
  R1.*4 \spanBarOff | % 39

  b4 -\mp b4 b4 b2 b4 | % 43
  c'2 c'4 c'2 c'4 | % 44
  c'2 c'4 c'2 c'4 | % 45
  b2 ( c'4 b4. ) r8 d'4 | % 46
  d'2 d'4 cis'2 cis'4 | % 47
  d'2 cis'4 d'2 e'4 | % 48
  d'2 d'4 cis'2 cis'4 | % 49
  c'!2. ( -\< d'1*5/8 ) r8 \! \spanBarOn | % 50

  d'2 -\mf b4 b2 b4 \spanBarOff | % 51
  c'4 e'4 e'4 d'2. | % 52
  d'2 b4 b2 d'4 | % 53
  cis'4 cis'4 cis'4 c'1*5/8 r8  | % 54
  d'2 b4 b2 b4 \spanBarOn | % 55
  c'4 e'4 dis'4 d'2. \spanBarOff | % 56
  d'4 d'4 dis'4 e'4 e'4 e'4 | % 57
  g'4 ( e'4 ) fis'4 d'1*5/8 r8  | % 58
  b'4 g'4 d'4 c'4 d'4 e'4 \spanBarOn | % 59
  r1.  | % 60
  d'4 -\< d'4 dis'4 e'4 e'4 e'4 <> \! \spanBarOff | % 61
  g'4 -\f g'4 g'4 g'4 ( e'4 ) fis'4 |
  \phrasingSlurUp
  \shape #'((0 . -0.5) (0 . -0.6) (0 . -0.6) (0 . -0.5)) PhrasingSlur
  <d' g' >1.( \( | % 63
  <d' g'>2.) \) r2. \spanBarOn | % 64
  r1. \bar "|."
}


TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \time 6/4
  \key c \major
  s1.*3 | % 3
  s2. s2

  s4
  s1.*3 s1 s4
  c'4 -\tweak Y-offset #-1 -\mp | % 9
  c'4 ( b4 ) a4 g4 ( f4 ) e4 | % 10
  f2 -\tweak Y-offset #-0.5 -\< f4 e4 ( \! -\tweak Y-offset #-0.5 -\>   d4 ) c4 <> \! | % 11
  f4 ( e4 ) d4 e4 ( d4 ) c4 | % 12
  c4 ( g4 ) f4 e4. r8

  g4  -\tweak Y-offset #-1 -\tweak X-offset #0.2 -\mf | % 13
  a4 ( c'4 ) b4 g4 ( a4 ) b4 | % 14
  c'4 ( a4 ) b4 c'2 a4 | % 15
  b4 ( g4 ) gis4 a4 ( b4 ) c'4 | % 16
  b2. ( bes4. ) r8 bes4 | % 17
  a4 ( c'4 ) b!4 g4( a4 ) b4 | % 18
  c'4 ( a4 ) b4 c'2 c'4 | % 19
  b4 ( a4 ) g4 a4 ( -\tweak Y-offset #-0.5 -\> g4 ) f4 <> \! | % 20
  e1*5/4 r4 | % 21
  r1*5/4

  \key d \major
  r4
  R1.*3 r1*5/4
  d4 -\tweak X-offset #0.2 -\tweak Y-offset #-1 -\mp | % 26
  d2 fis4 a2 a4 | % 27
  b4 ( -\tweak Y-offset #-0.5 -\< cis'4 ) d'4 a2 \! -\tweak Y-offset #-0.5 -\> a4 <> \! | % 28
  b2 a4 a2 fis4 | % 29
  a2 g4 fis4. r8

  s4
  s1.*3
  s1*5/4
  ais4 | % 34
  b4 ( d'4 ) cis'4   a!4 ( b4 ) cis'4 | % 35
  d'4 ( b4 ) cis'4 d'2 d'4 | % 36
  cis'4 ( b4 ) a4   b4 ( -\tweak Y-offset #-0.5 -\> a4 ) g4 <> \! | % 37
  fis1*5/4  r4 \bar "||" % 38

  \key g \major
  R1.*4 | % 39

  d4 -\tweak Y-offset #-1 -\mp d4 d4 d2 d4 | % 43
  d2 g4 fis2 fis4 | % 44
  fis2 a4 g2 fis4 | % 45
  g2 ( e4 d4. ) r8 g4 | % 46
  fis2 fis4 e2 e4 | % 47
  fis2 g4 a2 b4 | % 48
  a2 a4 g2 g4 | % 49
  \after 1*5/4 \! fis1*11/8 -\< r8 | % 50

  g2 -\tweak Y-offset #-1 -\tweak X-offset #0.05 -\mf g4 g2 g4 | % 51
  g4 g4 g4 g2. | % 52
  g2 g4 g2 g4 | % 53
  e4 fis4 g4 fis1*5/8 r8 | % 54
  g2 g4 g2 g4 | % 55
  g4 g4 g4 g2. | % 56
  g4 g4 g4 g4 gis4 a4 | % 57
  d'2 c'4 b1*5/8 r8 | % 58

  r1. |
  d'4 b4 g4 a4 b4 c'4 | % 60
  g4 -\< g4 g4 g4 gis4 a4 <> \! | % 61
  d'4 -\f d'4 d'4 d'2 <c' d'>4 | % 62
  \shape #'((0 . -0.5) (0 . -0.6) (0 . -0.6) (0 . -0.5)) PhrasingSlur
  \phrasingSlurUp <b d'>1.( \( | % 63
  <b d'>2.) \) r2. | % 64
  r1. \bar "|."
}

BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \time 6/4
  \key c \major
  s1.*3 | % 3
  s2. s2

  s4
  s1.*3 s1 s4

  \dynamicsOff
  c'4 -\mp | % 9
  c'4 ( b4 ) a4   g4 ( f4 ) e4 | % 10
  f2 -\< f4 e4 ( \! -\> d4 ) c4 <> \! | % 11
  f4 ( e4 ) d4 e4
  ( d4 ) c4 | % 12
  c2 b,4 c4. r8

  c4 -\mf | % 13
  f2 f4 f2 f4 | % 14
  c2 c4 c2 c4 | % 15
  b,2 b,4 a,2 d4 | % 16
  g,2. ( c4. ) r8 c4 | % 17
  f2 f4 f2 f4 | % 18
  c2 c4 c2 a,4 | % 19
  d2 d4 g,2 -\> g,4 <> \! | % 20
  c1*5/4 r4 | % 21
  r1*5/4

  \key d \major
  r4
  R1.*3 r1*5/4
  d4 -\mp | % 26
  d2 d4 fis2 fis4 | % 27
  g2 -\< g4 fis2 \! -\> fis4 <> \! | % 28
  g2 e4 fis2 d4 | % 29
  fis2 e4 d4. r8

  \setStaffShortInstrumentName \markup \override #'(baseline-skip . 2.5) \center-column { SA TB }
  \undo\dynamicsOff d'4 -\tweak self-alignment-X #-0.65 ^\dynamicWithText "mf" "SATB unis." | % 30
  d'2 cis'4 e4 ( fis4 ) g4 | % 31
  b2 a4 a2 d'4 | % 32
  cis'2 cis'4 d'4 ( cis'4 ) b4 | % 33
  a1*9/8 r8
  \resetStaffShortInstrumentName
  \dynamicsOff
  d4 | % 34
  g2 g4 g2 g4 | % 35
  d2 d4 d2 b,4 | % 36
  e2 e4 a,2 -\> a,4 <> \! | % 37
  d1*5/4 -\mp r4 \bar "||" % 38

  \key g \major
  R1.*4 | % 39

  g,4 -\mp g,4 g,4 g,2 g,4 | % 43
  a,2 a,4 a,2 a,4 | % 44
  d2 d4 d2 d4 | % 45
  g,1*9/8 r8 g,4 | % 46
  a,2 a,4 a,2 a,4 | % 47
  d2 e4 fis2 g4 | % 48
  a2 a4 a,2 a,4 | % 49
  d1*11/8 r8 \! | % 50

  g,2 -\mf g,4 g,2 g,4 | % 51
  c4 c4 c4 g,2. | % 52
  g,2 g,4 g,2 b,4 | % 53
  a,4 a,4 a,4 d1*5/8 r8 | % 54
  g,2 g,4 g,2 g,4 | % 55
  c4 c4 c4 g,2. | % 56
  b,4 g,4 b,4 c4 b,4 a,4 | % 57
  d2 d4 g1*5/8 r8 | % 58

  r1. |
  b4 g4 d4 c4
  d4 e4 | % 60
  b,4 -\< g,4 b,4 c4
  b,4 a,4 <> \! | % 61
  d4 -\f d4 d4 d2
  d4 | % 62
  \shape #'((0 . -0.5) (0 . -0.6) (0 . -0.6) (0 . -0.5)) PhrasingSlur
  \phrasingSlurUp <g,  g >1.( \( | % 63
  <g, g>2.) \) r2. | % 64
  r1. \bar "|."
}

%% LYRICS

AltoLyrics = \lyricmode {
  Won -- \syairDiKiri ten sa -- tung -- gal pang --  gen -- \syairDiKiri an
  nggih \syairDiKiri mar -- gi -- \syairDiKiri ning ka -- sam --  pur -- \syairDiKiri nan;
  " ngri" -- \syairDiKiri ku __ ge -- \syairDiKiri sang tan -- sah pa -- \syairDiKiri dhang
  wit \syairDiKiri da -- ya -- \syairDiKiri ning pa -- \syairDiKiri ti __ i -- \syairDiKiri lang.

  " Ye" -- ku dham -- par -- ing \syairDiKiri sih rah -- \syairDiKiri mat
  Sang Kris -- tus mur -- beng rat; __
  " tyang" kang nga -- yom wit \syairDiKiri pra -- ca -- \syairDiKiri ya
  ra -- har -- ja s'la -- mi -- nya. __

  " Tyang" \syairDiKiri do -- sa \syairDiKiri gung kang mra -- to -- \syairDiKiri bat,
  tan i -- ngu -- kum nging ri -- nu -- \syairDiKiri wat;

  " tyang" kang nga -- yom wit \syairDiKiri pra -- ca -- \syairDiKiri ya
  ra -- har -- ja s'la -- mi -- nya. __

  Tu -- "han," be -- \syairDiKiri ta -- pa \syairDiKiri ba -- nyak -- \syairDiKiri nya
  ber -- \syairDiKiri kat yang \syairDiKiri Kau be -- \syairDiKiri "ri," __
  " ter" -- \syairDiKiri is -- ti -- \syairDiKiri me -- wa \syairDiKiri rah -- mat -- \syairDiKiri Mu
  dan \syairDiKiri hi -- dup \syairDiKiri a -- ba -- \syairDiKiri "di." __

  \syairDiKiri "T'ri" -- ma \syairDiKiri ka -- "sih," ya Tu -- han -- ku __
  \syairDiKiri a -- tas \syairDiKiri ke -- se -- la -- mat -- an -- "ku!" __
  \syairDiKiri Pa -- da -- \syairDiKiri ku te -- " lah" Kau be -- ri __
  hi -- dup ba -- ha -- gi -- a a -- ba -- "di." __

  Hi -- dup ba -- ha -- gi -- a
  Hi -- dup ba -- ha -- gi -- a
  a -- ba -- di s'la -- ma -- nya! __
}

BassLyrics = \lyricmode {
  " ngri" -- ku __ ge -- sang tan -- \syairDiKiri sah pa -- dhang
  wit da -- ya -- ning pa -- \syairDiKiri ti __ i -- \syairDiKiri lang.

  " Ye" -- \syairDiKiri ku dham -- \syairDiKiri par -- ing \syairDiKiri sih rah -- \syairDiKiri mat
  Sang \syairDiKiri Kris -- tus \syairDiKiri mur -- beng rat; __
  " tyang" \syairDiKiri kang nga -- \syairDiKiri yom wit \syairDiKiri pra -- ca -- \syairDiKiri ya
  ra -- \syairDiKiri har -- ja \syairDiKiri s'la -- mi -- nya. __

  " ka" -- \syairDiKiri da -- dos -- \syairDiKiri ken pu -- \syairDiKiri treng Al -- \syairDiKiri lah,
  mar -- \syairDiKiri gi su -- \syairDiKiri ci kang \syairDiKiri den am -- \syairDiKiri bah.

  " Ye" -- \syairDiKiri ku dham -- \syairDiKiri par -- ing \syairDiKiri sih rah -- \syairDiKiri mat
  Sang \syairDiKiri Kris -- tus \syairDiKiri mur -- beng rat; __
  " tyang" \syairDiKiri kang nga -- \syairDiKiri yom wit \syairDiKiri pra -- ca -- \syairDiKiri ya
  ra -- \syairDiKiri har -- ja \syairDiKiri s'la -- mi -- nya. __

  Tu -- "han," be -- \syairDiKiri ta -- pa \syairDiKiri ba -- nyak -- \syairDiKiri nya
  ber -- \syairDiKiri kat yang \syairDiKiri Kau be -- \syairDiKiri "ri," __
  " ter" -- \syairDiKiri is -- ti -- \syairDiKiri me -- wa \syairDiKiri rah -- mat -- \syairDiKiri Mu
  dan \syairDiKiri hi -- dup \syairDiKiri a -- ba -- \syairDiKiri "di." __

  \syairDiKiri "T'ri" -- ma \syairDiKiri ka -- "sih," ya Tu -- han -- ku __
  \syairDiKiri a -- tas \syairDiKiri ke -- se -- la -- mat -- an -- "ku!" __
  \syairDiKiri Pa -- da -- \syairDiKiri ku te -- " lah" Kau be -- ri __
  hi -- dup ba -- ha -- gi -- a a -- ba -- "di." __

  Hi -- dup ba -- ha -- gi -- a
  Hi -- dup ba -- ha -- gi -- a
  a -- ba -- di s'la -- ma -- nya! __
}

% SolmisasiLayout = \layout {
%   \context {
%     \SolmisasiVoice
%     \consists Divisi_line_engraver
%     \override DivisiVoiceFollower.bound-details.right.padding = 1.2
%     \override DivisiVoiceFollower.bound-details.left.padding = 1.2
%     \override DivisiVoiceFollower.gap = 0.2
%   }
% }

SolmisasiLayout = \layout {
  \context {
    \Score
    \remove Bar_number_engraver
  }
  \context {
    \SolmisasiChoirStaff
    \consists Bar_number_engraver
  }
}

\paper {
  indent = 25\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
}
\include "choir.ily"