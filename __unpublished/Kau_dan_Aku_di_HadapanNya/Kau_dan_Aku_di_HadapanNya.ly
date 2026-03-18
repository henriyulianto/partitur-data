\version "2.25.26"

\include "solmisasi-ly.ily"
\debugOff

\include "gj-music-template.ily"

\header {
  dedication = ##f
  title = "Kau dan Aku di Hadapan-Nya"
  subtitle = ##f
  footer-title = "Kau dan Aku di Hadapan-Nya"
  composer-pre-text = "Lagu dan syair oleh"
  composer = "GREGO JULIUS"
  arranger-pre-text = "Aransemen vokal dan musik oleh"
  arranger = "HENRI YULIANTO"
  poet-pre-text = ##f
  poet = ##f
  meter = ##f
  meter-post-text = ##f
  instrument-pre-text = ##f
  instrument = ##f
  instrument-id = "SATB"
  nada-dasar = "Do = G, Do = Bes, Do = A"
  sukat-dan-mm = \markup {
    "4/4 &ndash; MM" = \italic c. 66
  }
  copyright = ##f
}

#(set-global-staff-size (* (/ 10 11) 20))

CommonTimeSettings = {
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.beatBase = #1/4
  \set Timing.beatStructure = 1,1,1,1
}

InitialSettings = {
  \override Score.Beam.extra-offset = #'(0 . -0.35)
  \omit Score.BarNumber
  \omit Score.SolmisasiEquivalenceNoteText
  \disallowPageBreak
  \disallowLineBreak
  \once\omit Score.MetronomeMark
  \tempo 4=66
  \numericTimeSignature
  \CommonTimeSettings
  \once\override SolmisasiKeyChangeMark.extra-offset = #'(0.0 . -1)
  \key g \major
}

Global = {
  \InitialSettings
  s1*5
  <> \tweak style #'none
  \tweak bound-details.left.text \markup \bold "poco rit."
  \startTextSpan | % 5
  s1 | % 5
  <> \stopTextSpan | % 6
  <> \tweak style #'none
  \tweak bound-details.left.text \markup \bold "A tempo"
  \startTextSpan
  s1 <> \stopTextSpan
  s1 s2. \break \bar "||" % 9

  \once\override Score.RehearsalMark.extra-offset = #'(2.8 . 2)
  \mark "Bait 1 (Solo Sopran)" \default
  s4
  s1*5 s2. \break
  s4
  s1 s2. \bar "!"

  \once\override Score.RehearsalMark.extra-offset = #'(2.8 . 0)
  \mark "Bait 2 (Solo Tenor)" \default
  s4
  s1*2 s2. \break
  \override Score.Beam.extra-offset = #'(0 . -0.1)
  s4
  s1*4 s2. \bar "||" \break

  \once\override Score.RehearsalMark.extra-offset = #'(2.8 . 0)
  \mark "Refrain" \default
  \override Score.Beam.extra-offset = #'(0 . -0.35)
  s4
  s1*4 \break
  \override Score.Beam.extra-offset = #'(0 . -0.1)
  s1*3
  \set Score.proportionalNotationDuration = #2/3
  s1*2
  \unset Score.proportionalNotationDuration
  \bar "||" \pageBreak

  \key bes \major
  \once\override Score.RehearsalMark.extra-offset = #'(2.8 . 0)
  \mark "Bridge" \default

  s1*4
  \override Score.TimeSignature.break-visibility = #end-of-line-invisible
  \break
  \time 2/4 s2
  \time 4/4
  s1*3 \break
  \undo \omit Score.SolmisasiEquivalenceNoteText
  \override Score.Script.Y-offset = #2.2
  s1*2 s2. \bar "||"

  \omit Score.SolmisasiKeyChangeMark
  \key a \major
  %% spacer
  s4
  \repeat unfold 16 s4
  \key g \major
  s2.
  \break

  \undo \omit Score.SolmisasiKeyChangeMark
  \key a \major
  \once\override Score.RehearsalMark.extra-offset = #'(2.4 . 0)
  \mark "Refrain" \default
  \override Score.Beam.extra-offset = #'(0 . -0.35)
  s4
  s1*4 \pageBreak
  \override Score.Beam.extra-offset = #'(0 . -0.1)
  s1*4 \break

  s1*4 \break
  s1*3 s2. \bar "||" \pageBreak

  \once\override Score.RehearsalMark.extra-offset = #'(2.8 . 0)
  \mark "Penutup" \default
  s4
  s1*5 \break
  s1*3
  <> \tweak style #'none
  \tweak bound-details.left.text \markup \bold "poco rit."
  \startTextSpan | % 5
  s1 | % 5
  <> \stopTextSpan | % 6
  <> \tweak style #'none
  \tweak bound-details.left.text \markup \bold "A tempo"
  \startTextSpan
  s1 <> \stopTextSpan
  s4 \bar "|."
}

InstrumentCueInstrumentName = ""
InstrumentCueShortInstrumentName = \InstrumentCueInstrumentName
InstrumentCueMusic = {
  \clef "treble"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \sectionLabel \markup\bold\caps " Intro :"
  b'2. d''4 |
  d''4 c''2 b'4 |
  a'2. c''4 |
  c''4 b' a' fis' |
  g'2 fis'8 g' b' d'' |
  fis''2 e''4 r8 g''8 |
  g''8 e'' e'' c'' c'' b' a' g' |
  b'2.. c''16 b'16 |
  a' 2.
}

SoloInstrumentName = "Solo"
SoloShortInstrumentName = \markup \concat {
  S \smaller\smaller o .
}
SoloMusic = {
  \clef "treble"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \set Staff.baseOctave = #-1
  s1*8 s2.

  r8 d'8 -\tweak self-alignment-X #0.5 -\mp  % 9
  g'4. g'8 fis'8 g'8 fis'8 d'8 | % 10
  fis'8 ( e'1*5/8 ) r8 e'8 | % 11
  a'4. a'8 a'8 g'8 g'8 e'8 | % 12
  fis'2. r8 fis'8 | % 13
  b'4. -\< b'8 b'8   a'8 a'8 b'8 <> \! | % 14
  a'8 ( -\> \after 2 \! g'1*5/8 ) r8 e'16 fis'16 | % 15
  g'8 g'4 g'8 a'8 g'8 a'8 b'8 | % 16
  a'2.

  \set Staff.baseOctave = #-2
  r8 d8  % 17
  g4. g8 fis8 g8 fis8 d8 | % 18
  fis8 e1*5/8 r8 e8 | % 19
  a4. a8 a8 g8 g8 e8 | % 20
  fis2. r8 fis8 | % 21
  b4. -\< b8 b8 a8
  a8 b8 <> \! | % 22
  a8 ( -\> \after 2 \! g1*5/8 ) r8 e16 fis16 | % 23
  g8 g16 g8. g16 g16 fis8 g8 e8 fis8 | % 24
  g2.
}

SoloSopranoInstrumentName = "Solo Sopran"
SoloSopranoShortInstrumentName = \markup \concat {
  S \smaller\smaller o .S.
}
SoloSopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \set Staff.baseOctave = #-1

  s1*9
  s1*8
  s1*7 s2.

  r8 d'8 -\mf % 25
  g'4 g'8 e'8 fis'4. d'8 | % 26
  e'4 e'8 d'8 e'4 r8 d'8 | % 27
  fis'4. d'8 e'4. d'8 | % 28
  d'8 e'8 d'8 ( c'8 ) b4 r8 d'16 d'16 | % 29
  d'4. -\< d'8 b'4. d''8 <> \! | % 30
  d''8 ( -\f c''8 ) c''8 ( b'8 ) d''8 c''8 r8 d''16 -\mf c''16 | % 31
  c''8 b'16 b'8. d'8
  cis'8 d'8 b'8 a'8 | % 32
  g'2. r4 | % 33
  r1

  \key bes \major
  bes'4 -\mf f'8  bes'8 a'4. f'8 | % 35
  g'4 a'8 ( bes'8 ) g'8 f'4 f'8 | % 36
  g'8 ( a'8 ) bes'8 \( c''8 \) d''8 ( bes'8 ) f'8 d'8 | % 37
  c'8 \( e'8 \) g'8 ( a'8 ) f'2 | % 38
  \time 2/4
  r8. f'16 g'16 a'16 bes'16 c''16 | % 39
  \CommonTimeSettings
  d''4. d''8 c''4. d''8 | % 40
  c''8 ( bes'1*5/8 ) r8 g'16 a'16 | % 41
  bes'8 bes'4. c''8 ( d''8 ) c''8 bes'8 | % 42
  bes'2. r4 | % 43
  a'8 a'8 a'8 ( bes'8 ) a'4 r4 | % 44
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    a'4 -> a'4 -> a'4 ->
  }
  gis'4

  %% spacer
  \stopStaff
  s4
  \repeat unfold 16 s4
  s2.
  \break
  \startStaff

  s4
  s1*4
  r4 r4 r4 r4
  r4 r4 r4 r4
  r4 r4 r4 r4
  r8 a'8 b'8 cis''8   b'8 a'16 gis'1*5/16

  r2 r8 e'8 ( gis'8 e'8 | % 54
  fis'2 ) r8 fis'8 ( e'8   fis'8 | % 55
  gis'2 ) r8 fis'8 ( e'8   d'8 | % 56
  e'2 ) r4 r8 e'16 e'16 | % 57
  e'4. -\< e'8 cis''4. e''8 <> \! | % 58
  e''8 ( -\f d''8 ) d''8 ( cis''8 ) e''8 d''8 r8 e''16 -\mf d''16 | % 59
  d''8 cis''16 cis''8. e'8 dis'8 e'8 cis''8 b'8
  a'2.

  r8 cis''8 -\mp % 61
  cis''4. cis''8 b'4 cis''8 b'8 | % 62
  a'1*5/8 r8 a'8 (   gis'8 ) | % 63
  fis'4 gis'8 a'8 b'4.
  a'8 | % 64
  e'2. r8 cis''8 | % 65
  cis''4. cis''8 b'4 cis''8 b'8 | % 66
  a'1*5/8 r8 a'8 ( -\<   gis'8 ) | % 67
  fis'4 gis'8 a'8 b'4.
  a'8 <> \! | % 68
  a'2. r4 | % 69
  r1 | % 69
  r1 | % 71
  r4
}


SoloTenorInstrumentName = "Solo Tenor"
SoloTenorShortInstrumentName = \markup \concat {
  S \smaller\smaller o .T.
}
SoloTenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \set Staff.baseOctave = #-2

  s1*9
  s1*8
  s1*7 s2.

  \dynamicsOff
  r8 d8 -\mf  % 25
  b4 b8 g8 a4. b8 | % 26
  c'4 c'8 b8 c'4 r8 b8 | % 27
  a4. b8 c'4. b8 | % 28
  b8 c'8 b8 ( a8 ) g4 r8 d16 d16 | % 29
  d4. -\< d8 b4. d'8 <> \! | % 30
  d'8 ( -\f c'8 ) c'8 ( b8 ) d'8 c'8 r8 b16 -\mf a16 | % 31
  a8 g16 g8. b8 a8 b8 d'8 c'8 | % 32
  b2. r4 | % 33
  r1

  \key bes \major
  d'4 -\mf bes8   d'8 c'4. a8 | % 35
  bes4 c'8 \( bes8 \) es'8 d'4 d'8 | % 36
  bes8 \( c'8 \) d'8 ( es'8 ) d'8 ( bes8 ) f8 d8 | % 37
  e8 ( g8 ) bes8 \( c'8 \) a2 | % 38
  \time 2/4
  r8. f16 es!16 f16 g16 a16 | % 39
  \CommonTimeSettings
  bes4. bes8 a4. bes8 | % 40
  a8 ( g1*5/8 ) r8 g16 a16 | % 41
  bes8 bes4. c'8 ( d'8 ) es'8 d'8 | % 42
  d'2. r4 \spanBarOff | % 43
  c'8 c'8 c'8 ( d'8 ) c'4 r4 | % 44
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    d'4 -> d'4 -> d'4 ->
  }
  e'4 \spanBarOn

  %% spacer
  \stopStaff
  s4
  \repeat unfold 16 s4
  s2.
  \break
  \startStaff

  s4
  s1*4
  r4 r4 r4 r4
  r4 r4 r4 r4
  r4 r4 r4 r4
  r8 cis'8 d'8 e'8 d'8 cis'16 b1*5/16

  r2 r8 e8 ( b8 cis'8 \spanBarOff | % 54
  d'2 ) r8 d'8 ( cis'8 a8 | % 55
  b2 ) r8 d'8 ( cis'8 b8 | % 56
  a2 ) r4 r8 e16 e16 \spanBarOn | % 57
  e4. -\< e8 cis'4.   e'8 <> \! \spanBarOff | % 58
  e'8 ( -\f d'8 ) d'8 ( cis'8 ) e'8 d'8 r8   cis'16 -\mf b16 | % 59
  b8 a16 a8. cis'8 b8 cis'8 e'8 d'8
  cis'2. \spanBarOn

  r8 a8 -\mp % 61
  a4. a8 gis4 a8 gis8 | % 62
  fis1*5/8 r8 cis'8 ( b8 ) | % 63
  a4 b8 cis'8 d'4.
  d'8 | % 64
  cis'2. r8 a8 | % 65
  a4. a8 gis4 gis8 gis8 | % 66
  fis1*5/8 r8 cis'8 ( -\< b8 ) \spanBarOff | % 67
  a4 b8 cis'8 d'4.
  cis'8 <> \! | % 68
  cis'2. r4 \spanBarOn | % 69
  r1 r1 r4

}

SopranoTwoInstrumentName = "S."
SopranoTwoShortInstrumentName = \SopranoTwoInstrumentName
SopranoTwoMusic = {
  \clef "treble"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \set Staff.baseOctave = #-1

  s1*9
  s1*8
  s1*7 s2.

  s4  % 25
  s1*9

  \key bes \major
  s1*4
  \time 2/4
  s2
  \CommonTimeSettings
  s1*3
  r2 bes'4 -\mf bes'8 bes'8 | % 43
  a'4. r8
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    a'4 -> a'4 -> a'4 ->
  }
  | % 44
  b'2.

  \key a \major
  %% spacer
  \stopStaff
  s4
  \repeat unfold 16 s4
  s2.
  \break
  \startStaff

  r8 e'8 % 45
  a'4 a'8 fis'8 gis'4. e'8 | % 46
  fis'4 fis'8 e'8 fis'4 r8 e'8 | % 47
  gis'4. e'8 fis'4. e'8 | % 48
  e'8 fis'8 e'8 ( d'8 ) cis'4 r8 e'16 e'16 | % 49
  e'4. -\< e'8 cis''4. e''8 <> \! | % 50
  e''8 ( -\f d''8 ) d''8 ( cis''8 ) e''8 d''8 r8 e''16 -\mf d''16 | % 51
  d''8 cis''16 cis''8. e'8 dis'8 e'8 cis''8 b'8 | % 52
  a'2 r4

  r8 e'8
  a'4 a'8 fis'8 gis'4. e'8 | % 46
  fis'4 fis'8 e'8 fis'4 r8 e'8 | % 47
  gis'4. e'8 fis'4. e'8 | % 48
  e'8 fis'8 e'8 ( d'8 ) cis'4 r8 e'16 e'16 | % 49
  e'4. -\< e'8 cis''4. e''8 <> \! | % 50
  e''8 ( -\f d''8 ) d''8 ( cis''8 ) e''8 d''8 r8 e''16 -\mf d''16 | % 51
  d''8 cis''16 cis''8. e'8 dis'8 e'8 cis''8 b'8 | % 52
  a'2.

  s4
  s1*5
  r4 r4 r4 r4
  r4 r4 r4 r4
  r4 cis'8 -\< -\mf e'8 a'4 e'8 ( a'8 ) <> \! | % 69
  b'4 r4
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    b'4 -> -\tweak X-offset #-2 -\f cis''4 -> d''4 ->
  }
  | % 70
  e''1 | % 71
  r4
}

AltoTwoInstrumentName = "A."
AltoTwoShortInstrumentName = \AltoTwoInstrumentName
AltoTwoMusic = {
  \clef "treble"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \set Staff.baseOctave = #-1

  s1*9
  s1*8
  s1*7 s2.

  s4  % 25
  s1*9

  \key bes \major
  s1*4
  \time 2/4
  s2
  \CommonTimeSettings
  s1*3
  r2 f'4 -\mf f'8 f'8 \spanBarOff  | % 43
  fis'4. r8
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    fis'4 -> fis'4 -> fis'4 ->
  }
  | % 44
  a'2 ( gis'4 ) \spanBarOn

  \key a \major
  \dynamicsOff
  %% spacer
  \stopStaff
  s4
  \repeat unfold 16 s4
  s2.
  \break
  \startStaff

  r8 e'8 \spanBarOff
  a'4 a'8 fis'8 gis'4. e'8 | % 46
  fis'4 fis'8 e'8 fis'4
  r8 e'8 | % 47
  e'4. e'8 d'4. d'8 | % 48
  cis'8 d'8 cis'8 ( b8 )
  a4 r8 cis'16 cis'16 \spanBarOn | % 49
  cis'4. -\< d'8 e'4. a'8 <> \! \spanBarOff | % 50
  a'4 -\f a'4 a'8 a'8 r8
  a'16 -\mf a'16 | % 51
  a'8 e'16 e'8. e'8
  dis'8 e'8 gis'8 e'8 | % 52
  e'2 r4

  r8 e'8 \spanBarOn
  a'4 a'8 fis'8 gis'4. e'8 \spanBarOff | % 46
  fis'4 fis'8 e'8 fis'4
  r8 e'8 | % 47
  e'4. e'8 d'4. d'8 | % 48
  cis'8 d'8 cis'8 ( b8 )
  a4 r8 cis'16 cis'16 \spanBarOn | % 49
  cis'4. -\< d'8 e'4. a'8 \spanBarOff
  <> \! | % 50
  a'4 -\f a'4 a'8 a'8 r8
  a'16 -\mf a'16 | % 51
  a'8 e'16 e'8. e'8
  dis'8 e'8 gis'8 e'8 | % 52
  e'2. \spanBarOn

  \dynamicsOn
  s4
  s1*5
  r4 r4 r4 r4
  r4 r4 r4 r4
  r4 a8 -\< -\mf cis'8 e'4 cis'8 ( e'8 ) <> \! \spanBarOff  | % 69
  f'4 r4
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    f'4 -> -\tweak X-offset #-2  -\f f'4 -> f'4 ->
  }
  | % 70
  e'1 \spanBarOn  | % 71
  r4
}

TenorTwoInstrumentName = "T."
TenorTwoShortInstrumentName = \TenorTwoInstrumentName
TenorTwoMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \set Staff.baseOctave = #-2

  s1*9
  s1*8
  s1*7 s2.

  s4  % 25
  s1*9

  \key bes \major
  s1*4
  \time 2/4
  s2
  \CommonTimeSettings
  s1*3
  r2 d'4 -\mf d'8 d'8 | % 43
  c'4. r8
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    c'4 -> c'4 -> c'4 ->
  }
  | % 44
  d'2.

  \key a \major
  %% spacer
  \stopStaff
  s4
  \repeat unfold 16 s4
  s2.
  \break
  \startStaff

  r8 e8  % 45
  a4 a8 fis8 gis4. e8 | % 46
  fis4 fis8 e8 fis4 r4 | % 47
  b4 b4 a4 a4 | % 48
  a8 a8 a8 ( fis8 )
  e4 r4 | % 49
  a4\< b4 cis'2 | % 50
  d'4^\f d'8 cis'8   b8 b8 r8 b16 -\mf b16 | % 51
  b8 a16 a8. cis'8 b8 cis'8 e'8 d'8 | % 52
  cis'2 r4 r8 e8

  a4 a8 fis8 gis4. e8 | % 46
  fis4 fis8 e8 fis4 r4 | % 47
  b4 b4 a4 a4 | % 48
  a8 a8 a8 ( fis8 )
  e4 r4 | % 49
  a4\< b4 cis'2 | % 50
  d'4^\f d'8 cis'8   b8 b8 r8 b16 -\mf b16 | % 51
  b8 a16 a8. cis'8 b8 cis'8 e'8 d'8 | % 52
  cis'2.

  s4
  s1*5
  r2 r2
  r2 r2
  r4 a8 -\< -\mf a8 a4 a4
  <> \! | % 69
  d'4 r4
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    d'4 -> -\tweak X-offset #-2 -\f cis'4 -> b4 ->
  }
  | % 70
  cis'1 | % 71
  r4
}

BassTwoInstrumentName = "B."
BassTwoShortInstrumentName = \BassTwoInstrumentName
BassTwoMusic = {
  \clef "bass"
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \CommonTimeSettings
  \key g \major
  \set Staff.baseOctave = #-2

  s1*9
  s1*8
  s1*7 s2.

  s4  % 25
  s1*9

  \key bes \major
  s1*4
  \time 2/4
  s2
  \CommonTimeSettings
  s1*3
  r2 bes,4 -\mf bes,8 c8 | % 43
  d4. r8
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    d4 -> d4 -> d4 ->
  }
  | % 44
  e2.

  \key a \major
  \dynamicsOff
  %% spacer
  \stopStaff
  s4
  \repeat unfold 16 s4
  s2.
  \break
  \startStaff

  r8 e8  % 45
  a4 a8 fis8 gis4. e8 | % 46
  fis4 fis8 e8   fis4 r4 | % 47
  e4 e4 e4 e4 | % 48
  cis8 d8 cis8 ( b,8 )
  a,4 r4 | % 49
  a4 gis4 g2 | % 50
  fis4 fis8 fis8   f8 f8 r8 f16 -\mf f16 | % 51
  e8 e16 e8. e8
  dis8 e8 e8 e8
  | % 52
  a,2 r4 r8 e8

  a4 a8 fis8 gis4. e8 | % 46
  fis4 fis8 e8   fis4 r4 | % 47
  e4 e4 e4 e4 | % 48
  cis8 d8 cis8 ( b,8 )
  a,4 r4 | % 49
  a4 gis4 g2 | % 50
  fis4 fis8 fis8   f8 f8 r8 f16 -\mf f16 | % 51
  e8 e16 e8. e8
  dis8 e8 e8 e8
  | % 52
  a,2.

  \dynamicsOn
  s4
  s1*5
  r2 r2
  r2 r2
  r4 a8 -\< -\mf a8 a4 a4 <> \! | % 69
  g4 r4
  \once\override TupletBracket.extra-offset = #'(0 . -1.0)
  \once\override TupletNumber.extra-offset = #'(0 . 0.2)
  \tuplet 3/2 {
    g4 -> -\tweak X-offset #-2 -\f g4 -> g4 ->
  }
  | % 70
  a1 | % 71
  r4
}

Chords = \chordmode {
  g1 | % 1
  c1/+g | % 2
  d1:7/+fis | % 3
  g2. \tweak X-offset #-1.5 g4/fis | % 4
  e2.:m e4:m/+d  | % 5
  a1:7/+cis | % 6
  a1:m7 | % 7
  g1/+d | % 8
  d2.

  s4
  g4. s8 g8/+b s8 s8 s8 | % 10
  c8 s8 s4 s8 s8 s8 s8 | % 11
  a4.:sus4 s8 a8/+cis s8 s8 s8 | % 12
  d2 s8 s8 s8 s8 | % 13
  b4.:sus4 s8 b8/+dis s8 s8 s8 | % 14
  e8:m s8 s4 s4 s8 s16 s16 | % 15
  c8 s4 s8 a8/+cis s8 s8 s8 | % 16
  d2:sus4 d4:7 \tweak transparent ##t c4

  g2 g2/+b  | % 18
  c1 | % 19
  a2:7sus4 a4:7.5- a4:7 | % 20
  d1 | % 21
  b2:7sus4 b4:7.5- b4:7  | % 22
  e2:m a2:7/+cis  | % 23
  a2:m7 d2:7 | % 24
  g2 \tweak X-offset #-1 d4:sus4

  d8 \tweak transparent ##t c8
  g2 b2:m  | % 26
  c2 a2:m  | % 27
  d2 a2:m7/+d | % 28
  g2/+b g2 | % 29
  g2 g2:7/+f | % 30
  c2/+e c2:m6/+es | % 31
  g2/+d d2 | % 32
  g1 | % 33
  c4 \tweak X-offset #-1 d4:7/+c es2/+f

  bes8 s8 s8 s8 d8:m7 s8 s8 s8 | % 35
  es8 s8 s8 s8 bes8 s8 s8 s8 | % 36
  es8 s8 s8 s8 bes8 s8 s8 s8 | % 37
  c4 s4 f8 s8 s8 s8 | % 38
  \time 2/4
  f4:sus4 f4 | % 39
  \time 4/4
  bes8 s8 s8 s8 a8:m7 s8 d8:7 s8 | % 40
  g8:m s8 s8 s8 g8:m7/+f s8 s8 s8 | % 41
  es8 s8 s1*1/12 s1*1/12 s1*1/12 f8:sus4 s8 f8:7 s8
  bes1
  d1:7
  e2:sus4 e4:7

  %% spacer
  \stopStaff
  s4
  \repeat unfold 16 s4
  s2.
  \break
  \startStaff

  s4
  a2 cis'2:m  | % 26
  d2 b2:m  | % 27
  e2 b2:m7/+e | % 28
  a2/+cis' a2 | % 29
  a2 a2:7/+g | % 30
  d2/+fis d2:m6/+f | % 31
  a2/+e e2 | % 32
  a2 e4:sus4 e4 | % 33

  a2 cis'2:m  | % 26
  d2 b2:m  | % 27
  e2 b2:m7/+e | % 28
  a2/+cis' a2 | % 29
  a2 a2:7/+g | % 30
  d2/+fis d2:m6/+f | % 31
  a2/+e e2 | % 32
  a2.

  \tweak transparent ##t e4
  a8 s8 s8 s8 e8/+gis s8 s8 s8 | % 62
  fis8:m s8 s16 s16 s16 s16 fis4:m/+e s8 s8 | % 63
  d8 s8 s8 s8 e8:7/+d s8 s8 s8 | % 64
  \tweak X-offset #-2 a8/+cis s8 s8 s8 b8:m s8 e16 s16 s16 s16 | % 65
  a8 s8 s8 s8 \tweak X-offset #-3 gis8:m7.5- s8 cis8:7 s8 | % 66
  fis8:m s8 s16 s16 s16 s16 fis4:m/+e s8 s8 | % 67
  d8 s8 s8 s8 e4:7 s4 | % 68
  a4 s4 s4 s4 | % 69

  % 70
  d4:m6/+g s4 s1*1/6 s1*1/6 s1*1/6 | % 70
  a4 s16 s16 s16 s16 s16 s16 s16 s16 s8 s8 | % 71
  s4
}

%% LYRICS

SoloLyrics = \lyricmode {
  \tweak X-offset #-0.5 Di ha -- dap -- an -- "Mu," ya Tu -- "han,"
  \tweak X-offset #-0.5 ka -- mi ber -- di -- ri ber -- du -- "a,"
  \tweak X-offset #-3 meng -- \tweak X-offset #0.3 i -- kat jan -- ji ber -- sa -- ma
  da -- lam \tweak X-offset #-0.5 ka -- sih yang Kau a -- nu -- \tweak X-offset #-2.5 "g'rah" -- "kan."

  \tweak X-offset #-0.5 Ta -- ngan ka -- mi ki -- ni ber -- \tweak X-offset #-0.3 sa -- "tu,"
  \tweak X-offset #-1 tin -- ta cin -- ta pun ter -- u -- "kir;"
  \tweak X-offset #-0.5 di ha -- dap -- an al -- tar ku -- "dus,"
  Kau sak -- si a -- gung yang ha -- dir pe -- nuh ka -- "sih."
}

SoloTenorLyrics = \lyricmode {
  \temporary\override LyricText.Y-offset = #1
  \temporary\override LyricHyphen.Y-offset = #1
  \temporary\override LyricExtender.Y-offset = #1
  Bu -- kan se -- ka -- dar gu -- rat -- an pe -- "na,"
  ta -- pi i -- krar ji -- wa dan ra -- "ga;"
  ma -- te-
  rai \tweak X-offset #-0.5 da -- lam ka -- sih i -- la -- hi
  un -- tuk se -- ti -- "a  " \tweak X-offset #-2.5 sam -- pai a -- khir \tweak X-offset #-1.2 nan -- "ti."

  Kau "dan " a -- ku di ha -- \syairDiKiri dap -- \skip1 \tweak X-offset #-0.5 an -- Nya
  meng -- \syairDiKiri u -- \skip1 cap syu -- kur dan ber -- \syairDiKiri se -- \skip1 "rah;"
  Se -- ga -- la -- nya ki -- ni ja -- di sa -- tu
  da -- lam \tweak X-offset #-1 ber -- kat cin -- ta Tu -- "han."
  Da -- lam ber -- kat cin -- ta Tu -- "han."

  Sam -- pai a -- khir nan -- ti.

  Aa __ aa __ aa __
  ma -- te-
  rai \tweak X-offset #-0.5 da -- lam ka -- sih i -- la -- hi
  un -- tuk se -- ti -- "a  " \tweak X-offset #-2.5 sam -- pai a -- khir nan -- ti.

  \tweak X-offset #-0.3 Ki -- ni ka -- mi ber -- sa -- tu
  da -- lam na -- ma -- "Mu," \tweak X-offset #-0.3 Ye -- "sus."
  \tweak X-offset #-0.3 Ki -- ni ka -- mi ber -- sa -- tu
  da -- lam na -- ma -- "Mu," \tweak X-offset #-0.3 Ye -- "sus."
}

AltoTwoLyrics = \lyricmode {
  Da -- lam ber -- kat cin -- ta Tu -- "han." __

  Bu -- kan se -- ka -- dar gu -- rat -- an pe -- "na,"
  ta -- pi i -- krar ji -- wa dan ra -- "ga;"
  ma -- te-
  rai \tweak X-offset #-0.5 da -- lam ka -- sih i -- la -- hi
  un -- tuk se -- ti -- "a  " \tweak X-offset #-2.5 sam -- pai a -- khir \tweak X-offset #-1.2 nan -- "ti."

  \tweak X-offset #-0.6 Bu-
  kan se -- ka -- dar gu -- rat -- an pe -- "na,"
  ta -- pi i -- krar ji -- wa dan ra -- "ga;"
  ma -- te-
  rai \tweak X-offset #-0.5 da -- lam ka -- sih i -- la -- hi
  un -- tuk se -- ti -- "a  " \tweak X-offset #-2.5 sam -- pai a -- khir \tweak X-offset #-1.2 nan -- "ti."

  Ber -- sa -- tu da -- lam Tu -- han ki -- ta. __
}

BassTwoLyrics = \lyricmode {
  Da -- lam ber -- kat cin -- ta Tu -- "han." __

  Bu -- kan se -- ka -- dar gu -- rat -- an pe -- "na,"
  ta -- pi i -- krar ji -- wa ra -- "ga;"
  ma -- te- rai \tweak X-offset #-0.5 ka -- sih i -- la -- hi
  un -- tuk se -- ti -- "a  " \tweak X-offset #-2.5 sam -- pai a -- khir \tweak X-offset #-1.2 nan -- "ti."

  \tweak X-offset #-0.6 Bu-
  kan se -- ka -- dar gu -- rat -- an pe -- "na,"
  ta -- pi i -- krar ji -- wa ra -- "ga;"
  ma -- te- rai \tweak X-offset #-0.5 ka -- sih i -- la -- hi
  un -- tuk se -- ti -- "a  " \tweak X-offset #-2.5 sam -- pai a -- khir \tweak X-offset #-1.2 nan -- "ti."

  Ber -- sa -- tu da -- lam Tu -- han ki -- ta. __

}

\paper {
  indent = 0\mm
  ragged-last = ##f
}

\include "choir.ily"