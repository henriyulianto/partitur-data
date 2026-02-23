\version "2.25.26"

\include "solmisasi-ly.ily"
\debugOff

\include "gj-music-template.ily"

\header {
  dedication = ##f
  title = "Bunda Maria Tersenyum Indah"
  subtitle = ##f
  footer-title = "Bunda Maria Tersenyum Indah"
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
  nada-dasar = "Do = A, Do = Bes"
  sukat-dan-mm = \markup \override #'(baseline-skip . 2.8) \left-column {
    \line {
      "4/4 &ndash; MM" = \italic c. 114-116
    }
    \line {
      Dengan irama cha-cha
    }
  }
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
  \tempo 4=116
  \numericTimeSignature
  \CommonTimeSettings
  \once\override SolmisasiKeyChangeMark.X-offset = #-5.3
  \once\override SolmisasiKeyChangeMark.extra-offset = #'(0 . -3.4)
  \override Score.RehearsalMark.X-offset = #-2.8
}

Global = {
  \InitialSettings
  \key a \major

  \repeat volta 3 {
    \once\override TextSpanner.bound-details.right.text = \markup\bold\upright "  3x"
    s1\startTextSpan
    \after 2... \stopTextSpan s1
  }
  s1*2 \bar "||" \break

  \mark \default
  s1*8 \bar "||" \break

  \mark \default
  s1*8 \break
  s1*8 \break

  \mark \default
  s1*8 \break
  s1*7 s2. \bar "!" \pageBreak

  \mark \default
  s4
  s1*8 \break
  s1*8 \bar "||" \break

  \mark "Interlude" \default
  s1*8 \break
  s1*8 \bar "||" \break

  \mark \default
  s1*8 \break
  s1*7 s2. \bar "!" \break

  \key bes \major
}

InstrumentCueInstrumentName = \markup\bold "Intro:"
InstrumentCueShortInstrumentName = \InstrumentCueInstrumentName
InstrumentCueMusic = {
  \hide Staff.TimeSignature
  \CommonTimeSettings
  \key a \major
  \set Staff.baseOctave = #-1
  \repeat volta 3 {
    e4 b8 a8 r8 d'8 r8 b8 |
    r8 e'8 r8 b8 d'8 d'8 e'4 |
  }
  e4 b8 a8 r8 d'8 r8 dis'8 |
  e'8 r8 e8 e8 e4 r4
}

VoxSkipIntro = {
  \repeat volta 3 {
    s1*2
  }
  s1*2
}

TupletThreeNumberMarkup = \markup \with-dimension #Y #'(-0.0001 . 0.0001)
\override #'(thickness . 1.7) \whiteout
\raise #-1 \italic\smaller "3"

TupletSlur = {
  \once\phrasingSlurUp
  \once \shape #'((-1.5 . -0.2) (-0.75 . -0.2) (0.75 . -0.2) (1.5 . -0.2)) PhrasingSlur
}

SopranoInstrumentName = "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  %\override Staff.InstrumentName.X-offset = #-5.3
  \omit Voice.TupletNumber
  \omit Voice.TupletBracket
  \CommonTimeSettings
  \set Staff.baseOctave = #-1
  \key a \major
  \VoxSkipIntro
  e'4. e'8 fis'4. fis'8 | % 9
  gis'2. r4 | % 10
  fis'4. fis'8 gis'4. gis'8 | % 11
  a'2. r4 | % 12
  gis'4. gis'8 a'4. a'8 | % 13
  b'2
  \tweak TupletNumber.stencil ##f
  \tuplet 3/2 {
    \TupletSlur
    ais'4\(
    b'4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    cis''4\)
  } | % 14
  d''2 fis'2 | % 15
  gis'2.. r8

  s1*48

  \set Score.proportionalNotationDuration = #1/1
  r1
  r1
  \unset Score.proportionalNotationDuration
  r8 fis'8 fis'8 fis'8 r8
  gis'8 gis'8 gis'8 | % 68
  r8 a'8 a'8 a'8 a'2 | % 69
  \set Score.proportionalNotationDuration = #1/1
  r1
  r1
  \unset Score.proportionalNotationDuration
  r8 e'8 e'8 e'8 r8 fis'8 fis'8 fis'8 | % 72
  r8 gis'8 gis'8 gis'8   a'2 | % 73
  \set Score.proportionalNotationDuration = #1/1
  r1
  r1
  \unset Score.proportionalNotationDuration
  r8 a'8 a'8 a'8 r8 a'8 a'8 a'8 | % 76
  r8 fis'8 fis'8 fis'8   fis'2 | % 77
  \set Score.proportionalNotationDuration = #1/1
  r1
  r1
  r1
  r1
  \unset Score.proportionalNotationDuration
}

AltoInstrumentName = "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  %\override Staff.InstrumentName.X-offset = #-5.3
  \omit Voice.TupletNumber
  \omit Voice.TupletBracket
  \CommonTimeSettings
  \set Staff.baseOctave = #-1
  \key a \major
  \VoxSkipIntro
  cis'4. cis'8 cis'4. cis'8 \spanBarOff | % 9
  e'2. r4 | % 10
  d'4. d'8 d'4. d'8 | % 11
  fis'2. r4 | % 12
  e'4. e'8 e'4. e'8 | % 13
  g'2 \tuplet 3/2 {
    \TupletSlur
    cis'4\(
    d'4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    e'4\)
  } | % 14
  fis'2 cis'2 | % 15
  b2 ( bis4. ) r8 \spanBarOn

  s1*48

  r1 \spanBarOff
  r1
  r8 d'8 d'8 d'8 r8 d'8 d'8 d'8 | % 68
  r8 fis'8 fis'8 fis'8 fis'2
  r1
  r1
  r8 cis'8 cis'8 cis'8 r8 cis'8 cis'8 cis'8 | % 72
  r8 e'8 e'8 e'8   fis'2 \spanBarOn
  r1 \spanBarOff
  r1
  r8 d'8 d'8 d'8 r8 cis'8 cis'8 cis'8 | % 76
  r8 dis'8 dis'8 dis'8 dis'2
  r1
  r1
  r1
  r1 \spanBarOn

}

TenorInstrumentName = "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  %\override Staff.InstrumentName.X-offset = #-5.3
  \omit Voice.TupletNumber
  \omit Voice.TupletBracket
  \CommonTimeSettings
  \set Staff.baseOctave = #-2
  \key a \major
  \VoxSkipIntro
  a4. a8 a4. a8 | % 9
  cis'2. r4 | % 10
  b4. b8 b4. b8 | % 11
  d'2. r4 | % 12
  cis'4. cis'8 cis'4.   cis'8 | % 13
  cis'2 \tuplet 3/2 {
    \TupletSlur
    ais4\(
    b4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    cis'4\)
  } | % 14
  d'2 a!2 | % 15
  gis2.. r8

  s1*48

  r1
  r1
  r8 fis8 fis8 fis8 r8 gis8 gis8 gis8 | % 68
  r8 a8 a8 a8 a2 | % 69
  r1
  r1
  r8 e8 e8 e8 r8 fis8 fis8 fis8 | % 72
  r8 gis8 gis8 gis8 a2 | % 73
  r1
  r1
  r8 a8 a8 a8 r8 a8 a8 a8 | % 76
  r8 fis8 fis8 fis8 fis2
  r1
  r1
  r1
  r1
}

BassInstrumentName = "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  %\override Staff.InstrumentName.X-offset = #-5.3
  \omit Voice.TupletNumber
  \omit Voice.TupletBracket
  \CommonTimeSettings
  \set Staff.baseOctave = #-2
  \key a \major
  \VoxSkipIntro
  a,4. a,8 a,4.   a,8 | % 9
  a,2. r4 | % 10
  b,4. b,8 b,4.   b,8 | % 11
  b,2. r4 | % 12
  a,4. a,8 a,4.   a,8 | % 13
  cis2 \tuplet 3/2 {
    \TupletSlur
    fis4\(
    fis4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    cis4\)
  }
  b,2 b,2 | % 15
  e2.. r8

  s1*48

  r1
  r1
  r8 b,8 b,8 b,8 r8 b,8 b,8 b,8 | % 68
  r8 d8 d8 d8 d2
  r1
  r1
  r8 a,8 a,8 a,8 r8 a,8 a,8 a,8 | % 72
  r8 cis8 cis8 d8 e2
  r1
  r1
  r8 d8 d8 d8 r8   d8 d8 d8 | % 76
  r8 b,8 b,8 b,8   b,2
  r1
  r1
  r1
  r1
}

SoloSopranoInstrumentName = "Solo Wanita"
SoloSopranoShortInstrumentName = \markup \concat {
  S \smaller\smaller o .W.
}
SoloSopranoMusic = {
  \override Staff.InstrumentName.X-offset = #-5.3
  \omit Voice.TupletNumber
  \omit Voice.TupletBracket
  \CommonTimeSettings
  \set Staff.baseOctave = #-1
  \key a \major
  \VoxSkipIntro

  s1*8
  e'4. e'8   fis'4. fis'8 | % 17
  gis'4. gis'8 a'8 (   gis'8 ) e'8 fis'8 ( | % 18
  \set Score.proportionalNotationDuration = #1/1
  fis'1) | % 19
  r1 | % 20
  \unset Score.proportionalNotationDuration
  d'4. d'8 e'4. e'8 | % 21
  fis'4. gis'8 \tuplet 3/2 {
    \TupletSlur
    fis'4\(
    gis'4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    fis'4\)
  } | % 22
  e'1 | % 23
  r1 | % 24

  r1 r1
  \set Score.proportionalNotationDuration = #1/1
  r1 | % 27
  r2
  \unset Score.proportionalNotationDuration
  a'4
  -\tweak extra-offset #'(-1.3 . -1.5)
  ^\markup\with-dimensions-from\null \smaller \italic \bold "cf"
  fis'4 | % 28
  gis'4. gis'8 gis'4 e'8
  d'8 \( | % 29
  d'2\)
  \set Score.proportionalNotationDuration = #1/12
  cis'8 b4 a8( | % 30
  \set Score.proportionalNotationDuration = #1/1
  a1) | % 31
  r1
  \unset Score.proportionalNotationDuration

  cis'4. cis'8   cis'4. d'8 | % 33
  e'4. e'8 e'4 cis'8 d'8 ( | % 34
  \set Score.proportionalNotationDuration = #1/1
  d'1 ) | % 35
  r1 | % 36
  \unset Score.proportionalNotationDuration
  b4. b8 b4. cis'8 | % 37
  d'4. d'8 \tuplet 3/2 {
    \TupletSlur
    d'4 \(
    d'4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    d'4 \)
  } | % 38
  \set Score.proportionalNotationDuration = #1/1
  cis'1 | % 39
  r1 | % 40
  \unset Score.proportionalNotationDuration
  a'4. a'8 gis'4. gis'8 | % 41
  g'4. g'8 \tuplet 3/2 {
    \TupletSlur
    g'4 \(
    g'4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    \tweak solmisasi-dot-note ##t g'4\)
  } | % 42
  \set Score.proportionalNotationDuration = #1/1
  fis'1 | % 43
  r2
  \unset Score.proportionalNotationDuration
  a'4-\tweak extra-offset #'(-1.3 . -1.5)
  ^\markup\with-dimensions-from\null \smaller \italic \bold "cf"
  fis'4 | % 44
  gis'2 gis'4 e'8 d'8 ( | % 45
  d'2 ) cis'4 b4 | % 46
  \set Score.proportionalNotationDuration = #1/1
  a1 | % 47
  r2.
  \unset Score.proportionalNotationDuration

  e'4
  e'2. e'8 e'8( | % 50
  e'2.) r8 e'8 | % 51
  fis'4 fis'4 fis'4 e'8 fis'8 ( | % 52
  fis'2) r4 fis'4 | % 53
  fis'4 fis'2 e'8 d'8 \( | % 54
  d'4.\) d'8 \tuplet 3/2 {
    \TupletSlur
    b4 \(
    cis'4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    d'4\)
  } | % 55
  e'1 | % 56
  r2 r4 r8 -\tweak extra-offset #'(-2 . -1.5)
  ^\markup\with-dimensions-from\null \smaller \italic \bold "cf" e'8 | % 57
  fis'4 fis'4. fis'8   gis'8 b'8 ( | % 58
  b'2..) a'8 | % 59
  gis'4 ( a'4 ) gis'8   fis'4 e'8 \( | % 60
  e'2\) r4 e'8 cis'8 | % 61
  d'8 d'2 d'8 d'8 e'8 \( | % 62
  e'2\) cis'4 b4 | % 63
  a1 | % 64
  r1
}

SoloTenorInstrumentName = "Solo Pria"
SoloTenorShortInstrumentName = \markup \concat {
  S \smaller\smaller o .P.
}
SoloTenorMusic = {
  \override Staff.InstrumentName.X-offset = #-5.3
  \omit Voice.TupletNumber
  \omit Voice.TupletBracket
  \CommonTimeSettings
  \set Staff.baseOctave = #-2
  \key a \major
  \VoxSkipIntro

  s1*8
  s1*8

  a4. a8 b4. b8 | % 25
  cis'4. cis'8 \tuplet 3/2 {
    \TupletSlur
    b4\(
    cis'4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    b4\)
  }| % 26
  a1 | % 27
  r2 a4 fis4 | % 28
  gis4. gis8 gis4 e8
  d8 \( | % 29
  d2\) e8 d4 cis8 ( | % 30
  cis1) | % 31
  r1

  e4.-\tweak extra-offset #'(-1.3 . -1.5)
  ^\markup\with-dimensions-from\null \smaller \italic \bold "cf"
  e8 fis4. fis8 | % 33
  gis4. gis8 a8 \( gis8 \) e8 fis8 ( | % 34
  fis1 ) | % 35
  r1 | % 36
  d4. d8 e4. e8 | % 37
  fis4. gis8 \tuplet 3/2 {
    \TupletSlur
    fis4 \(
    gis4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    fis4 \)
  } | % 38
  e1 | % 39
  r1 | % 40
  a4. a8 b4. b8 | % 41
  cis'4. cis'8 \tuplet 3/2 {
    \TupletSlur
    b4 \(
    cis'4 (
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    b4 ) \)
  } | % 42
  a1 | % 43
  r2 a4 fis4 | % 44
  gis2 gis4 e8 d8 ( | % 45
  d2 ) e4 d4 | % 46
  cis1 | % 47
  r2 r4

  e4-\tweak extra-offset #'(-1.3 . -1.5)
  ^\markup\with-dimensions-from\null \smaller \italic \bold "cf"
  cis'2. cis'8 cis'8 ( | % 50
  cis'2.) r8 b8 | % 51
  a4 a4 a4 gis8 a8 \( | % 52
  a2\) r4 fis4 | % 53
  d'4 d'2 cis'8 b8 \( | % 54
  b4.\) b8 \tuplet 3/2 {
    \TupletSlur
    gis4 \(
    a4
    -\tweak X-offset #0.2 -\tweak layer #1000
    ^\markup \TupletThreeNumberMarkup
    b4\)
  } | % 55
  cis'1 | % 56
  r2 r4

  r8 cis'8 | % 57
  d'4 d'4. d'8   d'8 d'8 ( | % 58
  d'2..) cis'8 | % 59
  b4 ( cis'4 ) b8 b4 cis'8 \( | % 60
  cis'2\) r4 cis'8 cis'8 | % 61
  b8 b2 fis8 fis8
  gis8 \( | % 62
  gis2\) e4 d4 | % 63
  cis1 | % 64
  r1
}

Chords = \chordmode {
  \repeat volta 3 {
    <e a b d'>1
    <e gis d'>
  }
  <e a b d'>1
  <e gis cis'>2
  <e gis bis>2

  a2 a2:6 | % 9
  a1:maj7 | % 10
  b2:m b2:m6 | % 11
  b1:m7 | % 12
  a2:maj7 a2 | % 13
  \tweak X-offset #-2 cis2:m7.5- fis2:7 | % 14
  b1:m | % 15
  e2 e2:aug

  a2 a2:6 | % 17
  a1:maj7 | % 18
  \tweak X-offset #-1 b2:m \tweak X-offset #-1 b2:m6 | % 19
  \tweak X-offset #-1 b1:m7 | % 20
  \tweak X-offset #-1.5 b2:m/+e \tweak X-offset #-1.5 b2:m6/+e | % 21
  \tweak X-offset #-1 b1:m7/+e | % 22
  a2 \tweak X-offset #-1 a2:6 | % 23
  \tweak X-offset #-1 a2:maj7 d2/+e | % 24
  a2 a2:maj7 | % 25
  a2:7 a2:aug7 | % 26
  d2 d2:maj7 | % 27
  b2:7/+dis b2:7 | % 28
  e1 | % 29
  e1:7 | % 30
  a1 | % 31
  e2:6 e2:aug

  a2 a2:6 | % 17
  a1:maj7 | % 18
  \tweak X-offset #-1 b2:m \tweak X-offset #-1 b2:m6 | % 19
  \tweak X-offset #-1 b1:m7 | % 20
  \tweak X-offset #-1.5 b2:m/+e \tweak X-offset #-1.5 b2:m6/+e | % 21
  \tweak X-offset #-1 b1:m7/+e | % 22
  a2 \tweak X-offset #-1 a2:6 | % 23
  \tweak X-offset #-1 a2:maj7 d2/+e | % 24
  a2 a2:maj7 | % 25
  a2:7 a2:aug7 | % 26
  d2 d2:maj7 | % 27
  b2:7/+dis b2:7 | % 28
  e1 | % 29
  e1:7 | % 30
  a1 | % 31
  e2:6 e2:7
}

%%%%%%%%%%%%% LYRICS %%%%%%%%%%%%%%

AltoLyrics = \lyricmode {
  La \tweak X-offset #-0.3 la la \tweak X-offset #-0.3 la la
  la \tweak X-offset #-0.3 la la \tweak X-offset #-0.3 la la
  la \tweak X-offset #-0.3 la la \tweak X-offset #-0.3 la la
  la la \tweak X-offset #-0.3 la la la
  la __

  \repeat unfold 3 {
    \tweak self-alignment-X #RIGHT La \tweak X-offset #-0.3 la la
    la \tweak X-offset #-0.3 la la
    la \tweak X-offset #-0.3 la la la
  }
}

BassLyrics = \lyricmode {
  \temporary\override LyricText.Y-offset = #1
  \temporary\override LyricHyphen.Y-offset = #1
  \temporary\override LyricExtender.Y-offset = #1
  \temporary\override LyricSpace.Y-offset = #1
  La \tweak X-offset #-0.3 la la \tweak X-offset #-0.3 la la
  la \tweak X-offset #-0.3 la la \tweak X-offset #-0.3 la la
  la \tweak X-offset #-0.3 la la \tweak X-offset #-0.3 la la
  la la \tweak X-offset #-0.3 la la la
  la __

  \repeat unfold 3 {
    \tweak self-alignment-X #RIGHT La \tweak X-offset #-0.3 la la
    la \tweak X-offset #-0.3 la la
    la \tweak X-offset #-0.3 la la la
  }
}

SoloSopranoLyrics = \lyricmode {
  \temporary\override LyricText.Y-offset = #0.5
  \temporary\override LyricHyphen.Y-offset = #0.5
  \temporary\override LyricExtender.Y-offset = #0.5
  \temporary\override LyricSpace.Y-offset = #0.5
  \set ignoreMelismata = ##t
  Di ta -- man \tweak X-offset #-0.3 ha -- ti pe --
  \tweak self-alignment-X #LEFT nuh \skip1 ce --
  \tweak self-alignment-X #LEFT \markup\with-dimensions-from "m" "rah," \skip1
  \tweak X-offset #-0.7 Bun -- da Ma -- ri -- a ter -- se -- nyum in -- "dah,"
}

SoloTenorLyrics = \lyricmode {
  \temporary\override LyricText.Y-offset = #0.5
  \temporary\override LyricHyphen.Y-offset = #0.5
  \temporary\override LyricExtender.Y-offset = #0.5
  \temporary\override LyricSpace.Y-offset = #0.5
  \set ignoreMelismata = ##t
  de -- ngan ka -- sih nan su -- ci ber -- se -- "ri," ma -- ri me -- na -- ri
  ri -- \tweak self-alignment-X #LEFT \markup\with-dimensions-from "m" "ang" \skip1
  \tweak self-alignment-X #-0.6 "cha-cha-cha." \skip1 \skip1 \skip1

  Bun -- da mem -- \tweak X-offset #-1 \markup\with-dimensions-from "mi" "bawa" \skip1
  ka -- \tweak self-alignment-X #LEFT sih \skip1 Tu --
  \tweak self-alignment-X #LEFT \markup\with-dimensions-from "m" "han" \skip1
  da -- lam ta -- ri -- an hi -- dup ber -- \tweak X-offset #-1 \markup\with-dimensions-from "mn" "limpah," \skip1
  La -- yang -- kan do -- a pe -- nuh \tweak self-alignment-X #LEFT "syu" -- \skip1 "kur,"
  \tweak X-offset #-1 rahmat -- \skip1 \tweak self-alignment-X #LEFT Nya me -- nga --
  \tweak self-alignment-X #LEFT \markup\with-dimensions-from "m" "lir," \skip1 cha -- cha -- "cha."

  Du -- a ti -- \tweak self-alignment-X #LEFT \markup\with-dimensions-from "m" "ga" \skip1
  lang -- kah ber- -- i- -- ra- -- \tweak self-alignment-X #LEFT \markup\with-dimensions-from "m" "ma" \skip1
  gem -- bi -- ra ji -- \tweak self-alignment-X #LEFT \markup\with-dimensions-from "m" "wa" \skip1
  pe -- nuh ba- -- ha -- "gia," di ba -- wah na -- u -- \markup\with-dimensions-from "mm" "ngan" \skip1
  Bun -- \tweak self-alignment-X #LEFT \markup\with-dimensions-from "d" "da" \skip1 mu -- \tweak self-alignment-X #LEFT li -- "a," \skip1
  su -- ka -- ci -- ta me -- ri -- \tweak self-alignment-X #LEFT \markup\with-dimensions-from "n" "ah," \skip1 cha -- cha -- "cha."
}

\paper {
  indent = 10\mm
  ragged-last = ##f
}

\include "choir.ily"