\version "2.25.26"

\include "solmisasi-ly.ily"
\debugOff

\include "gj-music-template.ily"
\include "pseudo-indents.ily"

\header {
  dedication = ##f
  title = "Langkah Kasih di Hadapan Tuhan"
  subtitle = ##f
  footer-title = "Langkah Kasih di Hadapan Tuhan"
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
  sukat-dan-mm = \markup {
    "6/8 &ndash; MM"
    \concat {
      \larger (
      \hspace #0.3
      \smaller \smaller \smaller \note {4.} #UP
      \hspace #0.3
      \larger )
    }
    = \italic c. 66
  }
}

#(set-global-staff-size (* (/ 10 11) 20))

InitialSettings = {
  \override Score.Beam.extra-offset = #'(0 . -0.4)
  \omit Score.BarNumber
  \omit Score.SolmisasiEquivalenceNoteText
  \disallowPageBreak
  \disallowLineBreak
}

Global = {
  \InitialSettings
  \once\override SolmisasiKeyChangeMark.X-offset = #-1
  \once\override SolmisasiKeyChangeMark.extra-offset = #'(1 . -0.5)
  \key a \major
  \time 6/8
  s2.*2
  \section
  \sectionLabel "Intro"
  s2.*5 \break
  s2.*6
  s1*5/8 \bar "||" \break

  \once\override Score.RehearsalMark.Y-offset = #3
  \once\override Score.RehearsalMark.extra-offset = #'(2.6 . 0)
  \mark "Bait 1" \default
  s8
  s2.*6 \pageBreak
  s2.*6 \break
  s2.*3
  s1*5/8 \bar "||"

  s8
  \repeat unfold 17 s8
  \break

  \once\override Score.RehearsalMark.Y-offset = #3
  \once\override Score.RehearsalMark.extra-offset = #'(2.0 . 0)
  \mark "Bait 2" \default
  s8
  s2.*6 \break
  s2.*6 \break
  s2.*3
  s1*5/8 \bar "||"

  s8
  \repeat unfold 17 s8
  \break

  %\once\override Score.RehearsalMark.Y-offset = #3
  \once\override Score.RehearsalMark.extra-offset = #'(1.8 . 0.8)
  \mark "Refrain" \default
  s8
  s2.*6 \pageBreak
  s2.*6 \break
  s2.*2 \bar "||"

  %\mark "Interlude" \default
  s2.*6 \repeat unfold 7 { s4 s4 s4 } s1*5/8
  \break

  \once\override Score.RehearsalMark.Y-offset = #3
  \once\override Score.RehearsalMark.extra-offset = #'(2.4 . 0)
  \set Score.rehearsalMark = 5
  \mark "Bait 2" \default
  \key bes \major
  s8
  s2.*6 \break
  s2.*6 \pageBreak
  s2.*5
  s1*5/8 \bar "||" \break

  \once\override Score.RehearsalMark.extra-offset = #'(1.8 . 0.8)
  \mark "Refrain" \default
  s8
  s2.*6 \break
  s2.*6 \break
  s2.
  s1*5/8 \bar "||"

  s8
  s2.
  \repeat unfold 41 s8
  \pageBreak

  \once\override Score.RehearsalMark.extra-offset = #'(1.8 . 0.8)
  \mark "Bagian Akhir (Coda)" \default
  s8
  s2.*6 \break
  \after 2. \tempo "Allargando"
  \after 2.*2 \tempo "Tempo I"
  s2.*5 s8 \bar "|."
}

SopranoOneInstrumentName = "S1."
SopranoOneShortInstrumentName = \SopranoOneInstrumentName
SopranoOneMusic = {
  \key a \major
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \time 6/8
  \set Staff.baseOctave = #-1
  \spanBarOff
  \omit Staff.BarLine
  s2.*2
  s2.*124
  \key bes\major
  \undo \omit Staff.BarLine
  \after 4. \! bes'2-\< r8 d''8 -\f \spanBarOn | % 113
  es''4 d''8 c''4 bes'8 | % 114
  f''2. ( f''4.) r4.
  %  <bes' f''>2.( \( | % 115
  %   <bes' f''>4.) \) r4. | % 116
  r2. r8[]
}

SopranoTwoInstrumentName = "S."
SopranoTwoShortInstrumentName = \SopranoTwoInstrumentName
SopranoTwoMusic = {
  \key a \major
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \time 6/8
  \set Staff.baseOctave = #-1
  R2.*2

  a'2-\tweak extra-offset #'(0.7 . 0)-\mp  b'8 cis''8 \spanBarOff | % 3
  gis'2 a'8 b'8 | % 4
  fis'4 gis'4 a'4 | % 5
  e'4. r8 a'8 ( -\< b'8 <> \! | % 6
  cis''4 b'4 a'4 \spanBarOn | % 7
  fis'4. ) r8 a'8 ( b'8 \spanBarOff | % 8
  cis''2 d''8 cis''8 | % 9
  b'2. ) \spanBarOn | % 10
  \once\override TextSpanner.bound-details.left.text = \markup \bold \italic "dim. poco a poco"
  a'2.( -\tweak extra-offset #'(0 . -0.3) \startTextSpan \spanBarOff | % 11
  a'2. | % 12
  a'2. | % 13
  \after 4 \stopTextSpan a'4.) r4 \spanBarOn

  s8  % 14
  s2.*6
  e'4 fis'4 e'8 d'8 | % 21
  cis'4. r8 r8 e'8 | % 22
  e'1*5/8 -\< e'8 | % 23
  cis''1*5/8 b'8 <> \! | % 24
  b'4 a'4 gis'8 -\> b'8 | % 25
  \after 4 \! a'4. r8  r8 fis'8 | % 26
  e'2 dis'8 e'8 | % 27
  cis''4 cis''4. b'8 | % 28
  a'2. | % 29
  r1*5/8

  \stopStaff
  s8
  \repeat unfold 17 s8

  \startStaff
  s8
  s2.*6
  r2. | % 37
  r4. r8 r8 r8-\tweak X-offset #0 -\mp | % 38
  cis'4. ( -\tweak extra-offset #'(0 . -0.4) ^\markup \italic "(SA atau Duet Solo SA, menyesuaikan suara laki-laki)" e'4. | % 39
  cis''4. b'4. | % 40
  b'4. a'4. | % 41
  a'4. ) r4. | % 42
  s2.*3
  s1*5/8

  s8
  \repeat unfold 17 s8

  e'8[] -\mf % 46
  cis''2 b'8 ( cis''8 ) | % 47
  b'8 a'4 fis'8 ( eis'8 fis'8 ) | % 48
  d''2 fis'8 fisis'8 | % 49
  gis'!4. gis'8 ( fisis'8 ) gis'8 | % 50
  e''4. e''8 d''8 e''8 | % 51
  d''8 cis''4. b'8 cis''8 | % 52
  d''4 fis'4. fis'8 | % 53
  gis'1*5/8 gis'8 | % 54
  a'2. ( -\> <> \! | % 55
  a'4) r8 fis'8 -\mp gis'8 a'8 | % 56
  fis'1*5/8 a'8 | % 57
  b'2 a'8 b'8 | % 58
  a'2. ( | % 59
  a'4.) r4.

  \stopStaff
  s2.*6 -\tweak extra-offset #'(0.2 . -2.0) _\markup \with-dimensions-from \null
  \override #'((box-padding . 0.6) (thickness . 1.3))
  \box {
    \line {
      \hspace #-1
      \override #'(baseline-skip . 1.0)
      \score {
        <<
          \new SolmisasiGlobalStaff {
            \set Score.rehearsalMark = 4
            \once\override Score.RehearsalMark.X-offset = #2.7
            \mark "Interlude" \default
            \override Score.SpacingSpanner.spacing-increment = #0
            \time 6/8
            \once\omit SolmisasiKeyChangeMark
            \key a \major
            s2.*4 \bar "||"
            \key c \major
            s2.*6 \bar "||"
            \once\override SolmisasiKeyChangeMark.X-offset = #2.4
            \key bes \major
            s2.*3 s1*5/8 \bar "||"
          }
          \new ChordNames {
            \chordmode {
              d2.:maj7 | % 61
              e2.:7/+d | % 62
              a2./+cis | % 63
              a2.
              f2.:maj7 | % 61
              g2.:7/+f | % 62
              c2./+e | % 63
              c2.
              d2.:m  | % 69
              s2. % 70
              f2. | % 71
              c2.:m/+f | % 72
              f2.:sus4 | % 73
              f1*5/8:7
            }
          }
          \new SolmisasiStaff {
            \omit Staff.TimeSignature
            \omit Staff.SolmisasiEquivalenceNoteText
            \time 6/8
            \key a \major
            cis'''2 fis''8 cis'''8 | % 61
            b''2 gis''8 a''8 | % 62
            b''4 a''4 gis''4 | % 63
            e''2.
            \key c \major
            e''2 a'8 e''8 | % 65
            d''2 b'8 c''8 | % 66
            d''4 c''4 b'4 | % 67
            g'2. | % 68
            f'2 g'8 a'8 | % 69
            a'2. \bar "||" % 70
            \key bes \major
            a''2 bes''8 c'''8 | % 71
            c'''4 d'''4 es'''4 |
            f'''2. ~ |
            f'''4.  r8 r8
          }
        >>
        \layout {
          #(layout-set-staff-size (* (/ 10 11) 20))
          line-width = 111\mm
          indent = 0\mm
          short-indent = 0\mm
          right-margin = 5\mm
          system-system-spacing.padding = 0
          \omit Score.BarNumber
        }
      }
      \hspace #1
    }
  }
  \repeat unfold 7 { s4 s4 s4 } s1*5/8
  \hide Staff.BarLine
  \startStaff

  \key bes \major
  f'8[] -\mp % 74
  \undo \hide Staff.BarLine
  bes'1*5/8 f'8 | % 75
  a'1*5/8 f'8 | % 76
  g'4 g'4 g'8 fis'8 | % 77
  g'2 r8 r8 | % 78
  r2. | % 79
  r2. | % 80
  r2. | % 81
  r4. r8 r8 f'8 | % 82
  f'1*5/8-\< f'8 | % 83
  d''1*5/8 c''8 <> \! | % 84
  c''4 bes'4 a'8 -\> c''8 | % 85
  \after 4 \! bes'4. r8 r8 g'8 | % 86
  f'8 f'4 f'8 e'8 f'8 | % 87
  d''4 d''4. c''8 | % 88
  c''4 ( bes'8 ) bes'4. ( | % 89
  bes'4.) r4. | % 90
  r2. | % 91
  r4. r8 r8

  \transpose a bes {
    e'8[] -\mf % 46
    cis''2 b'8 ( cis''8 ) | % 47
    b'8 a'4 fis'8 ( eis'8 fis'8 ) | % 48
    d''2 fis'8 fisis'8 | % 49
    gis'!4. gis'8 ( fisis'8 ) gis'8 | % 50
    e''4. e''8 d''8 e''8 | % 51
    d''8 cis''4. b'8 cis''8 | % 52
    d''4 fis'4. fis'8 | % 53
    gis'1*5/8 gis'8 | % 54
    a'2. ( -\> <> \! | % 55
    a'4) r8 fis'8 -\mp gis'8 a'8 | % 56
    fis'1*5/8 a'8 | % 57
    b'2 a'8 b'8 | % 58
    a'2. ( | % 59
    a'4.) r4
  }

  \stopStaff
  s8
  s2.
  \repeat unfold 41 s8
  \startStaff

  f'8[] -\mp
  d''1*5/8 f'8 | % 107
  c''4. a'8 bes'8 c''8 | % 108
  d''2. | % 109
  r4. r8 r8 f'8 -\mf | % 110
  d''1*5/8 f'8 | % 111
  c''4. a'8 bes'8 c''8 | % 112
  \setStaffShortInstrumentName "S2."
  \dynamicsOff
  \after 4. \! bes'2-\< r8 d''8 -\f | % 113
  es''4 d''8 c''4 bes'8 | % 114
  bes'2. ( bes'4.) r4.
  %  <bes' f''>2.( \( | % 115
  %   <bes' f''>4.) \) r4. | % 116
  r2. r8[]
}

AltoTwoInstrumentName = "A."
AltoTwoShortInstrumentName = \AltoTwoInstrumentName
AltoTwoMusic = {
  \key a \major
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \time 6/8
  \set Staff.baseOctave = #-1
  R2.*2

  cis'4 -\tweak extra-offset #'(0.7 . 0) -\mp d'4 e'4 | % 3
  b2. | % 4
  d'4 e'4 d'4 | % 5
  cis'4. r8 fis'8 ( -\< gis'8 <> \! \spanBarOff | % 6
  a'4 gis'4 fis'4 \spanBarOn | % 7
  d'4. ) r8 fis'8 ( gis'8 \spanBarOff | % 8
  a'1*5/8 e'8  | % 9
  eis'2. ) \spanBarOn | % 10
  r8
  \once\omit TextSpanner
  \once\override TextSpanner.bound-details.left.text = \markup \italic "dim. poco a poco"
  e'1*5/8 ( -\tweak extra-offset #'(0 . -0.3) \startTextSpan \spanBarOff | % 11
  e'1*5/8) r8  | % 12
  r8 e'1*5/8 (  | % 13
  \after 4 \stopTextSpan e'4.) r4 \spanBarOn

  \setStaffShortInstrumentName "SA."
  e'8[] -\mp <> -\tweak extra-offset #'(-0.8 . 0) ^\markup \italic "(SA atau Duet Solo SA)" % 14
  a'1*5/8 e'8 | % 15
  gis'1*5/8 e'8 | % 16
  fis'4 fis'4 fis'8 eis'8 | % 17
  fis'2 r8 e'!8 | % 18
  gis'1*5/8 e'8 | % 19
  fis'1*5/8 e'8 | % 20
  \resetStaffShortInstrumentName
  \dynamicsOff
  e'4 fis'4 e'8 d'8 | % 21
  cis'4. r8 r8 cis'8 | % 22
  cis'1*5/8 -\< cis'8 | % 23
  eis'1*5/8 eis'8 <> \! | % 24
  gis'4 fis'4 eis'8 -\> gis'8 | % 25
  fis'4. r8 \! r8 fis'8 | % 26
  e'8 ( d'8 cis'4 ) bis8 cis'8 | % 27
  e'4 e'4. d'8 | % 28
  cis'2. | % 29
  r1*5/8

  \stopStaff
  s8
  \repeat unfold 17 s8

  \startStaff
  s8
  s2.*6
  r2. | % 37
  r2. | % 38
  a4. ( -\mp cis'4. \spanBarOff | % 39
  a'4. g'4. | % 40
  fis'2. | % 41
  fis'4. ) r4. \spanBarOn | % 42
  s2.*3
  s1*5/8

  s8
  \repeat unfold 17 s8

  e'8[] \spanBarOff % 46
  e'2 d'8 ( e'8 ) | % 47
  d'8 cis'4 a8 ( b8 cis'8 ) | % 48
  fis'2 d'8 dis'8 | % 49
  e'4. e'8 ( dis'8 ) e'8 | % 50
  gis'4. gis'8 fis'8 gis'8  | % 51
  fis'8 e'4. d'8 e'8 \spanBarOn | % 52
  fis'4 d'4. d'8 \spanBarOff | % 53
  e'4. ( eis'4 ) eis'8 | % 54
  fis'2. ( -\> <> \! | % 55
  fis'4) r8 a8 -\mp b8 cis'8 | % 56
  d'1*5/8 cis'8  | % 57
  d'2 cis'8 d'8 \spanBarOn  | % 58
  d'2. ( \spanBarOff | % 59
  cis'4. ) r4. \spanBarOn

  \stopStaff
  s2.*6 \repeat unfold 7 { s4 s4 s4 } s1*5/8
  \hide Staff.BarLine
  \startStaff

  \key bes \major
  f'8[] \spanBarOff % 74
  \undo \hide Staff.BarLine
  d'1*5/8 d'8 | % 75
  c'1*5/8 c'8 | % 76
  bes4 bes4 bes8 a8 | % 77
  bes2 r8 r8 \spanBarOn | % 78
  r2. | % 79
  r2. | % 80
  r2. | % 81
  r4. r8 r8 d'8 \spanBarOff | % 82
  d'1*5/8 -\< d'8 | % 83
  f'1*5/8 f'8 <> \! | % 84
  es'4 es'4 es'8 -\> es'8 | % 85
  es'4. r8 \! r8 g'8 \spanBarOn | % 86
  f'8 f'4 f'8 e'8 f'8 \spanBarOff | % 87
  es'4 es'4. f'8 | % 88
  g'4 ( f'8 ) g'4. ( | % 89
  f'4. ) r4. \spanBarOn | % 90
  r2. | % 91
  r4. r8 r8

  \transpose a bes {
    e'8[] \spanBarOff % 46
    e'2 d'8 ( e'8 ) | % 47
    d'8 cis'4 a8 ( b8 cis'8 ) | % 48
    fis'2 d'8 dis'8 | % 49
    e'4. e'8 ( dis'8 ) e'8 | % 50
    gis'4. gis'8 fis'8 gis'8  | % 51
    fis'8 e'4. d'8 e'8 \spanBarOn | % 52
    fis'4 d'4. d'8 \spanBarOff | % 53
    e'4. ( eis'4 ) eis'8 | % 54
    fis'2. ( -\> <> \! | % 55
    fis'4) r8 a8 -\mp b8 cis'8 | % 56
    d'1*5/8 cis'8  | % 57
    d'2 cis'8 d'8 \spanBarOn  | % 58
    d'2. ( \spanBarOff | % 59
    cis'4. ) r4 \spanBarOn
  }

  \stopStaff
  s8
  s2.
  \repeat unfold 41 s8
  \startStaff

  f'8[] -\mp \spanBarOff % 106
  f'1*5/8 f'8 | % 107
  a'4. f'8 g'8 a'8 | % 108
  bes'2. | % 109
  r4. r8 r8 f'8 -\mf | % 110
  f'1*5/8 f'8 | % 111
  a'4. f'8 g'8 a'8 \spanBarOn | % 112
  g'2 -\< r8 \! g'8 -\f \spanBarOff | % 113
  g'4 g'8 fis'4 fis'8 | % 114
  f'2. ( | % 115
  f'4.) r4. \spanBarOn | % 116
  r2. r8[]
}

TenorOneInstrumentName = "T1."
TenorOneShortInstrumentName = \TenorOneInstrumentName
TenorOneMusic = {
  \key a \major
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \time 6/8
  \set Staff.baseOctave = #-2
  R2.*2

  r8 r8 a2-\mp
  r8 r8 gis2 | % 4
  r8 r8 a2 | % 5
  r8 r8 a2 | % 6
  fis2 -\< a8 ( b8 <> \! | % 7
  cis'4 b4 a4 ) | % 8
  fis4. ( e8 fis8 gis8 | % 9
  a2. ) | % 10
  r8 r8
  \once\omit TextSpanner
  \once\override TextSpanner.bound-details.left.text = \markup \italic "dim. poco a poco"
  cis'2 ( -\tweak extra-offset #'(0 . -0.3) \startTextSpan | % 11
  cis'1*5/8 ) r8 | % 12
  r8 r8 cis'2 ( | % 13
  \after 4 \stopTextSpan cis'4.) r4 % 14

  s8
  \spanBarOff
  s2.*112
  \key bes\major
  \after 4. \! d'2 -\< r8 bes8 -\f \spanBarOn | % 113
  bes4 bes8 bes4 c'8 | % 114
  d'2. (
  d'4. ) r4.
  r2. r8[]
}

TenorTwoInstrumentName = "T2."
TenorTwoShortInstrumentName = \TenorTwoInstrumentName
TenorTwoMusic = {
  \key a \major
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \time 6/8
  \set Staff.baseOctave = #-2
  R2.*2

  \dynamicsOff
  r8 r8 e2
  r8 r8 e2 | % 4
  r8 r8 fis2 | % 5
  r8 r8 e2 | % 6
  fis2 -\< a8 ( b8 <> \! | % 7
  cis'4 b4 a4 ) | % 8
  fis4. ( e8 fis8 gis8 \spanBarOff | % 9
  a2. ) \spanBarOn | % 10
  r8 r8 b2 ( \spanBarOff | % 11
  b1*5/8) r8 | % 12
  r8 r8 b2 ( | % 13
  b4.) r4 \spanBarOn % 14

  s8
  s2.*18
  s1*5/8

  \undo\dynamicsOff
  \setStaffShortInstrumentName "T."
  s8
  s2.*6
  e4 fis4 e8 ( d8 ) | % 37
  cis4. r8 r8 e8 | % 38
  e1*5/8 -\< e8 | % 39
  cis'1*5/8 b8 <> \! | % 40
  b4 a4 gis8 -\> b8 | % 41
  \after 4 \! a4. r8 r8 fis8 | % 42
  e8 e4 e8 dis8 e8 | % 43
  cis'4 cis'4. b8 | % 44
  b4 ( a8 ) a4.( | % 45
  a4.) r8 r8 % 46

  \stopStaff
  s8
  \repeat unfold 17 s8

  \startStaff
  r8[]
  cis'4. -\mf b4 b8 | % 47
  a4. a4. | % 48
  d'4 d'8 cis'4 cis'8 | % 49
  b2 r8 r8 | % 50
  e'4 e'8 d'4 d'8 | % 51
  cis'8 cis'8 cis'8 cis'4. | % 52
  d'8 d'8 d'8 d'4
  cis'8 | % 53
  b1*5/8 b8 | % 54
  a4. ( -\> gis4. <> \! | % 55
  a2 ) r8 r8 | % 56
  a4. -\mp a4. | % 57
  gis2 r8 r8 | % 58
  fis4. fis4 fis8 | % 59
  e4. r4.

  \stopStaff
  s2.*6 \repeat unfold 7 { s4 s4 s4 } s1*5/8
  \startStaff

  r8[]
  r2. | % 75
  r2. | % 76
  r2. | % 77
  r4. r8 r8 f8 -\mp | % 78
  a1*5/8 f8 | % 79
  g1*5/8 f8 | % 80
  f4 g4 f8 ( es8 ) | % 81
  d4. r8 r8 f8 | % 82
  f1*5/8 -\< g8 | % 83
  as1*5/8 as8 <> \! | % 84
  g4 g4 g8 -\> g8 | % 85
  \after 4 \! g4. r8 r8 g8 | % 86
  f8 f4 f8 e8 f8 | % 87
  a4 a4. c'8 | % 88
  es'4. es'4. ( | % 89
  d'4. ) r4. | % 90
  r2. | % 91
  r4. r8 r8

  \transpose a bes {
    r8[]
    cis'4. -\mf b4 b8 | % 47
    a4. a4. | % 48
    d'4 d'8 cis'4 cis'8 | % 49
    b2 r8 r8 | % 50
    e'4 e'8 d'4 d'8 | % 51
    cis'8 cis'8 cis'8 cis'4. | % 52
    d'8 d'8 d'8 d'4
    cis'8 | % 53
    b1*5/8 b8 | % 54
    a4. ( -\> gis4. <> \! | % 55
    a2 ) r8 r8 | % 56
    a4. -\mp a4. | % 57
    gis2 r8 r8 | % 58
    fis4. fis4 fis8 | % 59
    e4. r4
  }

  \stopStaff
  s8
  s2.
  \repeat unfold 41 s8
  \startStaff

  r8[]
  r8 r8 f8 -\mp d'4. | % 107
  r8 r8 f8 c'4. | % 108
  bes4 a8 bes4 ( c'8 ) | % 109
  d'2 r8 r8 | % 110
  r8 r8 f8-\mf d'4. | % 111
  r8 r8 f8 c'8 bes8 c'8 | % 112
  \resetStaffShortInstrumentName
  \dynamicsOff
  \after 4. \! d'2 -\< r8 bes8 -\f | % 113
  bes4 bes8 bes4 c'8 | % 114
  bes2. (
  bes4. ) r4.
  r2. r8[]
  % <bes ~ d' ~>2. | % 115
  %   <bes d'>4. r4. | % 116
}

BassOneInstrumentName = "B1."
BassOneShortInstrumentName = \BassOneInstrumentName
BassOneMusic = {
  \key a \major
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \time 6/8
  \set Staff.baseOctave = #-2
  \spanBarOff
  s2.*2
  s2.*124

  \dynamicsOff
  g2 -\< r8 \! f8 -\f \spanBarOn | % 113
  es4 d8 c4 f8 | % 114
  bes2. (
  bes4.) r4.
  r2. r8[]
}

BassTwoInstrumentName = "B."
BassTwoShortInstrumentName = \BassTwoInstrumentName
BassTwoMusic = {
  \key a \major
  \numericTimeSignature
  \once\omit Staff.TimeSignature
  \time 6/8
  \set Staff.baseOctave = #-2
  R2.*2

  a,2. -\tweak extra-offset #'(0.7 . 0) -\mp | % 3
  a,2. | % 4
  a,2. | % 5
  a,2 b,8 ( cis8 | % 6
  d2 ) -\< d8 ( e8 <> \! | % 7
  fis4 e4 d4 ) | % 8
  b,4. ( cis4. | % 9
  d2. ) | % 10
  \once\omit TextSpanner
  \once\override TextSpanner.bound-details.left.text = \markup \italic "dim. poco a poco"
  a,2. ( -\tweak extra-offset #'(0 . -0.3) \startTextSpan | % 11
  a,1*5/8) r8 | % 12
  a,2. ( | % 13
  \after 4 \stopTextSpan a,4.) r4 % 14

  s8
  s2.*18
  s1*5/8

  \undo\dynamicsOff
  \setStaffShortInstrumentName "TB."
  e8[] -\mp <> -\tweak extra-offset #'(-0.8 . 0) ^\markup \italic "(TB atau Duet Solo TB)" % 30
  a1*5/8 e8 | % 31
  gis1*5/8 e8 | % 32
  fis4 fis4 fis8 eis8 | % 33
  fis2 r8 e!8 | % 34
  gis1*5/8 e8 | % 35
  fis1*5/8 e8 | % 36
  \resetStaffShortInstrumentName
  \dynamicsOff
  e4 fis4 e8 ( d8 ) | % 37
  cis4. r8 r8 cis8 | % 38
  cis1*5/8 -\< e8 | % 39
  a4. ( g4 ) g8 <> \! | % 40
  fis4 fis4 e8 -\> e8 | % 41
  d4. r8 \! r8 fis8 | % 42
  e8 e4 e8 dis8 e8 | % 43
  e4 e4. e8 | % 44
  d4. d4. ( | % 45
  cis4. ) r8 r8

  \stopStaff
  s8
  \repeat unfold 17 s8

  \startStaff
  r8[]
  a4. -\mf gis4 gis8 | % 47
  fis4. fis4. | % 48
  b4 b8 a4 a8 | % 49
  gis2 r8 r8 | % 50
  cis'4 cis'8 b4 b8 | % 51
  ais8 ais8 ais8 ais4. | % 52
  b8 b8 b8 a!4 a8 | % 53
  gis1*5/8 gis8 | % 54
  fis4. ( -\> e4. <> \! | % 55
  dis2 ) r8 r8 | % 56
  b,4. -\mp b,4. | % 57
  e2 r8 r8 | % 58
  a,4. a,4 a,8 | % 59
  a,4. r4.

  \stopStaff
  s2.*6 \repeat unfold 7 { s4 s4 s4 } s1*5/8
  \startStaff

  r8[]
  r2. | % 75
  r2. | % 76
  r2. | % 77
  r4. r8 r8 f8 -\mp | % 78
  f1*5/8 f8 | % 79
  es1*5/8 c8 | % 80
  d4 d4 d8 ( c8 ) | % 81
  bes,4. r8 r8 f8 | % 82
  bes,1*5/8 -\< c8 | % 83
  d1*5/8 d8 <> \! | % 84
  es4 es4 bes,8 -\>   bes,8 | % 85
  es4. r8 \! r8 g8 | % 86
  f8 f4 f8 e8 f8 | % 87
  f4 f4. f8 | % 88
  bes,4. bes,4.( | % 89
  bes,4.) r4. | % 90
  r2. | % 91
  r4. r8 r8

  \transpose a bes {
    r8[]
    a4. -\mf gis4 gis8 | % 47
    fis4. fis4. | % 48
    b4 b8 a4 a8 | % 49
    gis2 r8 r8 | % 50
    cis'4 cis'8 b4 b8 | % 51
    ais8 ais8 ais8 ais4. | % 52
    b8 b8 b8 a!4 a8 | % 53
    gis1*5/8 gis8 | % 54
    fis4. ( -\> e4. <> \! | % 55
    dis2 ) r8 r8 | % 56
    b,4. -\mp b,4. | % 57
    e2 r8 r8 | % 58
    a,4. a,4 a,8 | % 59
    a,4. r4
  }

  \stopStaff
  s8
  s2.
  \repeat unfold 41 s8
  \startStaff

  r8[]
  r8 r8 f8 -\mp bes4. | % 107
  r8 r8 f8 a4. | % 108
  g4 d8 g4 ( a8 ) | % 109
  bes2 r8 r8 | % 110
  r8 r8 f8 bes4. | % 111
  r8 r8 f8 a8 g8 a8 | % 112
  \setStaffShortInstrumentName "B2."
  g2 -\< r8 \! f8 -\f | % 113
  es4 d8 c4 f8 | % 114
  bes,2. (
  bes,4.) r4.
  r2. r8[]
  % <bes, ~ bes ~>2. | % 115
  %   <bes, bes>4. r4. | % 116
}

Chords = \chordmode {
  %\set chordChanges = ##f
  s2.*2
  a2. | % 3
  e2./+a | % 4
  d2./+a | % 5
  a2. |
  d2.*2:maj7 | % 8
  b2.:m | % 10
  d2.:m6 |
  <a cis' e' b'>2.*3
  s1*5/8

  \tweak transparent ##t e8
  a2. | % 15
  a2.:maj7 | % 16
  a2.*2:6  | % 17
  e2. | % 19
  e2.:9 | % 20
  a2. s2 \tweak stencil ##f e4 | % 21
  a2.
  a2.:aug/cis
  d2. | % 25
  s4. dis4.:dim | % 26
  a2./+e | % 27
  e2.:7 | % 28
  a2. | % 29
  b4.:m e4:7

  s8
  \repeat unfold 17 s8

  \tweak transparent ##t e8
  a8 s8 s8 s4. | % 31
  a8:maj7/+e s8 s8 s4. | % 32
  a8:6 s8 s8 s4. | % 33
  s8 s8 s8 fis4.:m | % 34
  e8 s8 s8 s4. | % 35
  e8:9 s8 s8 s4. | % 36
  a8 s8 s8 s4.  | % 37
  s8 s8 s8 \tweak stencil ##f e4. | % 38
  a8 s8 s8 s4. | % 39
  a8:7/+cis s8 s8 s4. | % 40
  d4 s4 s8 s8 | % 41
  s4 s8 dis8:dim s8 s8 | % 42
  a8/+e s4 s8 s8 s8 | % 43
  e4:7 s4 s8 s8 | % 44
  d8/+a s8 s8 s8 s8 s8 | % 45
  a1*5/8

  s8
  \repeat unfold 17 s8

  \tweak stencil ##f e8
  a4. e4./gis |
  fis2.:m |
  b8:m s8 s8 b8:m/+a s8 s8 | % 49
  e4./+gis s8 s8 s8 | % 50
  cis8:m s8 s8 cis8:m/+b s8 s8 | % 51
  fis4./+ais s8 s8 s8 | % 52
  b8:m s8 s8 b4.:m/+a | % 53
  e8/+gis s8 s8 cis4.:7/+eis | % 54
  fis8:m s8 s8 fis8:m/+e s8 s8 | % 55
  b2.:7/+dis | % 56
  b8:m7 s8 s8 s4. | % 57
  e8:7 s8 s8 s4. | % 58
  d8/+a s8 s8 s8 s8 s8 | % 59
  a2.

  s2.*8 \repeat unfold 5 { s4 s4 s4 } s1*5/8

  \transpose a bes {
    \tweak stencil ##f e8
    a8 s8 s8 s4. | % 31
    a8:maj7/+e s8 s8 s4. | % 32
    a8:6 s8 s8 s4. | % 33
    s8 s8 s8 fis4.:m | % 34
    e8 s8 s8 s4. | % 35
    e8:9 s8 s8 s4. | % 36
    a8 s8 s8 s4.  | % 37
    s8 s8 s8 \tweak stencil ##f e4. | % 38
    a8 s8 s8 s4. | % 39
    a8:7/+cis s8 s8 s4. | % 40
    d4 s4 s8 s8 | % 41
    s4 s8 dis8:dim s8 s8 | % 42
    a8/+e s4 s8 s8 s8 | % 43
    e4:7 s4 s8 s8 | % 44
    d8/+a s8 s8 s8 s8 s8 | % 45
    a2.
  }
  c2.:m/+f | % 91
  f1*5/8

  \transpose a bes {
    \tweak stencil ##f e8
    a4. e4./gis |
    fis2.:m |
    b8:m s8 s8 b8:m/+a s8 s8 | % 49
    e4./+gis s8 s8 s8 | % 50
    cis8:m s8 s8 cis8:m/+b s8 s8 | % 51
    fis4./+ais s8 s8 s8 | % 52
    b8:m s8 s8 b4.:m/+a | % 53
    e8/+gis s8 s8 cis4.:7/+eis | % 54
    fis8:m s8 s8 fis8:m/+e s8 s8 | % 55
    b2.:7/+dis | % 56
    b8:m7 s8 s8 s4. | % 57
    e8:7 s8 s8 s4. | % 58
    d8/+a s8 s8 s8 s8 s8 | % 59
    a1*5/8
  }

  s8
  s2.
  \repeat unfold 41 s8

  \tweak stencil ##f e8

  bes8 s8 s8 s4. | % 107
  f8/+a s8 s8 s4. | % 108
  g8:m s8 s8 s4. | % 109
  s8 s8 s8 s4. | % 110
  bes8 s8 s8 s8 s8 s8 | % 111
  f8/+a s8 s8 s8 s8 s8 | % 112
  g8:m s8 s8 s16 s16 s16 s16 s16 s16 | % 113
  es4. es4.:m6/+c | % 114
  bes4. \tweak transparent ##t es4.:m6/+c | % 115
  es8:m s8 s8 s8 s8 s8 | % 116
  bes2.*2 | % 117
}

%% LYRICS

SopranoTwoLyrics = \lyricmode {
  Du __ du du du __ du du du du du du __
  aa __ aa __ Hmm __
}

AltoTwoLyrics = \lyricmode {
  Du du du du __ du du du du __
  aa __ aa __ Du __ du __

  \tweak X-offset #-2 Lang -- kah \tweak X-offset #-0.3 de -- mi \tweak X-offset #-1.8 " lang" -- kah \tweak X-offset #-1 'ku ber -- ja -- lan,
  \tweak X-offset #-0.5 de -- ngan \tweak X-offset #-0.5 do -- a \tweak X-offset #-1.6 " dan"
  \temporary\override LyricText.Y-offset = #1
  \temporary\override LyricHyphen.Y-offset = #1
  pe -- nuh ha -- rap -- an;
  \tweak X-offset #-0.5 Me -- nyu -- \tweak X-offset #-0.8 su -- ri ja -- lan cin -- ta \tweak X-offset #-0.5 ka -- sih
  di
  \revert LyricText.Y-offset
  \revert LyricHyphen.Y-offset
  ha -- dap -- an Tu -- han Ye -- "sus" \extendDot

  Aa __

  \tweak X-offset #-0.5 Tu -- "han," ser -- ta -- " i" lang -- kah -- ku " i" -- "ni,"
  te -- \tweak X-offset #-1 guh -- kan i -- kat -- an \tweak X-offset #-0.3 su -- ci
  di \tweak X-offset #-0.5 se- ti -- ap je -- jak ka -- ki __
  a -- da ka -- sih -- \tweak X-offset #-0.8 Mu yang a -- \tweak X-offset #-0.5 ba- "di" \extendDot

  \tweak X-offset #-0.6 Ka -- sih \tweak X-offset #-2 yang Kau ti -- tip -- kan pa -- da -- "ku,"

  \tweak X-offset #-1 Cin -- ta \tweak X-offset #-2 yang Kau \tweak X-offset #-1 sam -- but \tweak X-offset #-0.5 dan res -- tu -- " i"
  ber- ja -- lan me -- nu -- ju jan -- ji a -- ba -- "di" \extendDot

  \tweak X-offset #-0.5 Tu -- "han," ser -- ta -- " i" lang -- kah -- ku " i" -- "ni,"
  te -- \tweak X-offset #-1 guh -- kan i -- kat -- an \tweak X-offset #-0.3 su -- ci
  di \tweak X-offset #-0.5 se- ti -- ap je -- jak ka -- ki __
  a -- da ka -- sih -- \tweak X-offset #-0.8 Mu yang a -- \tweak X-offset #-0.5 ba- "di" \extendDot

  \tweak X-offset #-0.5 Ki -- ni \tweak X-offset #-0.5 du -- a ja -- di sa -- "tu,"
  \tweak X-offset #-0.5 ki -- ni \tweak X-offset #-0.5 du -- a ja -- di \tweak X-offset #-0.5 sa- "tu,"
  Tu -- han \tweak X-offset #-2 mem -- ber -- ka -- "ti" \extendDot
}

TenorTwoLyrics = \lyricmode {
  Du __ du __ du __ du __
  aa __ aa __ aa __
  Du __ du __
}

BassTwoLyrics = \lyricmode {
  Du __ du __ du __ du __
  aa __ aa __ aa __
  Du __ du __
  \tweak X-offset #-0.6 Ka -- sih \tweak X-offset #-2 yang Kau ti -- tip -- kan pa -- da -- "ku,"
  ki -- ni \tweak X-offset #-0.7 me -- nya -- tu di al -- tar -- "Mu;"
  \tweak X-offset #-1 Cin -- ta \tweak X-offset #-2 yang Kau \tweak X-offset #-1 sam -- but \tweak X-offset #-0.5 dan res -- tu -- " i"
  ber-
  \temporary\override LyricText.Y-offset = #0.8
  \temporary\override LyricHyphen.Y-offset = #0.8
  \temporary\override LyricExtender.Y-offset = #0.8
  ja -- lan me -- nu -- ju jan -- ji a -- ba -- "di" \extendDot

  Tu -- "han," ser -- ta -- " i" \tweak X-offset #-1 lang -- \tweak X-offset #-1 kah -- ku " i" -- "ni,"
  te -- \tweak X-offset #-1 guh -- kan " i" -- kat -- an su -- ci di se -- ti -- ap je -- jak ka -- ki __
  ka -- sih -- Mu yang a -- ba -- "di" \extendDot

  ki -- ni \tweak X-offset #-0.7 me -- nya -- tu di al -- tar -- "Mu;"

  \tweak X-offset #-1 Cin -- ta \tweak X-offset #-2 yang Kau \tweak X-offset #-1 sam -- but \tweak X-offset #-0.5 dan res -- tu -- " i"
  ber- ja -- lan me -- nu -- ju jan -- ji a -- ba -- "di" \extendDot

  Tu -- "han," ser -- ta -- " i" \tweak X-offset #-1 lang -- \tweak X-offset #-1 kah -- ku " i" -- "ni,"
  te -- \tweak X-offset #-1 guh -- kan " i" -- kat -- an su -- ci di se -- ti -- ap je -- jak ka -- ki __
  ka -- sih -- Mu yang a -- ba -- "di" \extendDot

  \tweak X-offset #-0.5 Ki -- ni \tweak X-offset #-0.5 du -- a ja -- di sa -- "tu,"
  \tweak X-offset #-0.5 ki -- ni du -- a me -- \tweak X-offset #-1 nya- tu,
  Tu -- han \tweak X-offset #-2 mem -- ber -- ka -- "ti" \extendDot
}

\include "choir.ily"