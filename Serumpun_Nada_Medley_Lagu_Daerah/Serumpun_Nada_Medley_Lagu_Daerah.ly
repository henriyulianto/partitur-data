\version "2.25.26"

%#(define USE_OLD_VERSION? #t)
\include "solmisasi.ily"
%\withExtensions #'("simultaneous-divisi")

\include "satb-solmisasi-init.ily"

\header {
  judul = "Serumpun Nada"
  sub-judul = "(Medley Lagu Daerah)"
  judul-header-I = "Serumpun Nada (Medley Lagu Daerah)"
  judul-header-II = "SATB"
  pencipta-lagu = "Aransemen oleh"
  penata-suara = \markup {
    \caps { Henri Yulianto }
  }
  pencipta-syair = ##f
  ekspresi-global = ##f
  hak-cipta = "&copyright; 2017 Aubade2025SMMYogyakarta"
  instrumen = \markup\null
  dedication = ##f
}

CetakWatermark = ##f
PianoMusic = ##f
EngraveNotAngka = ##t
EngraveNotBalok = ##f
%StandardStaffSize = #(* 20 (/ 6.65 7))
%SolmisasiStaffSize = #(* 20 (/ 6.65 7))
TwoVoicesPerStaff = ##f
AlwaysShortInstrumentName = ##t
UnfoldBarNumbers = ##f


Global = {
  \once\omit Score.BarNumber
  \override Score.BarNumber.extra-offset = #'(-1 . 0)
  \set Score.rehearsalMarkFormatter = #format-mark-numbers
  \disallowPageBreak
  \disallowLineBreak
  \once\override Score.MetronomeMark.extra-offset = #'(0 . 0.8)
  \tempo "Allegretto" 4=112
  %\once\omit Score.SolmisasiKeyChangeMark
  %\once\override Score.SolmisasiKeyChangeMark.extra-offset = #'(1 . 0)
  \override SolmisasiTimeAndKeySignature.KeySignature.font-size = #-1
  \key c \major
  \time 4/4
  \partial 4 s4
  s1*2
  \repeat volta 2 {
    s1*2
  }
  s1*2 \bar "||"
  %\once\override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \boxedNumberMark #-0.9 "Bungong Jeumpa"
  %\mark "Bungong Jeumpa" \default
  \after 1*2 \break s1*8 \bar "||" \break
  \after 1*4 \break s1*8 \bar "||" \break
  \boxedNumberMark #LEFT "(Samba style)"
  %\mark \markup\smaller "(Samba style)" \default
  \after 1*6 \pageBreak s1*8
  \after 1*4 \break s1*8 \bar "||"
  \once\override Score.RehearsalMark.self-alignment-X = #CENTER
  \mark \default
  s1*4 s2 \bar "!" \break
  %\once\override Score.SolmisasiKeyChangeMark.extra-offset = #'(1 . 0)
  \once\omit Staff.KeySignature
  \key f \major
  \boxedNumberMark #LEFT "Paris Barantai"
  s2
  \after 1*3 \break R1*6
  r2 \bar "!"
  %\once\omit Score.KeySignature
  \break
  %\once\override Score.SolmisasiKeyChangeMark.extra-offset = #'(1 . -2)
  \key bes \major
  s2
  %\once\override Score.RehearsalMark.extra-offset = #'(0 . -0.3)
  \mark\default
  %\mark \default
  \after 1*4 \break s1*6
  \override TextSpanner.bound-details.left.text = \markup\bold "rit."
  \override TextSpanner.to-barline = ##t
  s1\startTextSpan <>\stopTextSpan \bar "||"
  \mark \default
  \once\override Score.MetronomeMark.extra-offset = #'(0 . -0.5)
  \tempo "Moderato" 4=106
  s1*3 \bar "||" \pageBreak

  \boxedNumberMark #LEFT "Ondel-Ondel"
  %\mark "Ondel-Ondel" \default
  \after 1*4 \break s1*8 \break
  \boxedNumberMark #LEFT ""
  \after 1*2 \break
  \after 1*5 \break s1*8 \bar "||"
  s1*2 \pageBreak

  %\once\omit Score.KeySignature
  %\once\override Score.SolmisasiKeyChangeMark.extra-offset = #'(1 . -2)
  \key f \major
  \boxedNumberMark #LEFT "Manuk Dadali"
  s1
  s1*2\break
  s1*3\break
  s1*3\break \bar "||"
  \boxedNumberMark #LEFT ""
  s1*4 \break
  s1*3
  s1\startTextSpan <>\stopTextSpan \bar "||"
  \mark\default
  \tempo "Andante" 4=76
  s1*2 \pageBreak
  %\once\omit Score.KeySignature
  %\once\override Score.SolmisasiKeyChangeMark.extra-offset = #'(1 . -2)
  \key bes\major
  \boxedNumberMark #LEFT "Anging Mamiri" s1*3 \break
  s1*4 \break \bar "||"
  \boxedNumberMark #LEFT ""
  %\mark\default
  s1*5
  \once\override TextSpanner.bound-details.left.text = \markup\bold "accel."
  s1\startTextSpan <>\stopTextSpan  \break
  \boxedNumberMark #LEFT ""
  \once\override Score.MetronomeMark.extra-offset = #'(0 . -2)
  \tempo "Allegretto" 4=112
  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = 4
  \repeat volta 2 {
    s1*4
  }
  \once \override Score.RehearsalMark.extra-offset = #'(0 . 1.5)
  \boxedNumberMark #LEFT "Yamko Rambe Yamko"
  %\mark "Yamko Rambe Yamko" \default
  \newSpacingSection
  \revert Score.SpacingSpanner.spacing-increment
  \repeat volta 2 {
    s1*4
  }
  \newSpacingSection
  \break
  \boxedNumberMark #LEFT ""
  %\mark\default
  \after 1*4 \pageBreak
  \after 1*7 \break
  s1*8
  \mark\default
  \repeat volta 2 {
    \after 1*2 \break s1*3
    \alternative { { s1  } { s1 } }
  }
  \bar "||" \break
  \boxedNumberMark #LEFT "Ending"
  %\mark "Ending" \default
  \key des \major
  s1*5 \bar "|."
  \label #'lastPage
}

SopranoMusic = {
  \numericTimeSignature
  \time 4/4
  \key c \major
  \partial 4 r4
  R1*2
  \repeat volta 2 {
    R1*2
  }
  R1*2 \bar "||"

  a'4.\mf b'8 a'4 gis'4 | % 7
  a'4. b'8 a'4 gis'4 | % 8
  a'4 b'4 c''4 b'4 | % 9
  c''2. r4 | % 10
  c''4. d''8 c''4 b'4 | % 11
  c''4. d''8 c''4 b'4 | % 12
  c''4 b'4 a'4 gis'4 | % 13
  a'2. r4 \bar "||" % 14

  R1*3
  a'4 b'4 c''4 b'4 | % 18
  c''2 r2 | % 19
  R1| % 20
  c''4 b'4 a'4 gis'4 | % 21
  a'2. r4

  e''2 d''4 c''4 | % 23
  b'2. r4 | % 24
  d''4 e''4 c''4 b'4 | % 25
  a'2. r4 | % 26
  c''4. c''8 b'4 a'4 | % 27
  gis'4. ( a'8 b'2 ) | % 28
  c''4 b'4 c''4 d''4 | % 29
  e''2. r4
  e''4 e''4 d''4 c''4 | % 31
  b'2. r4 | % 32
  d''4 e''4 c''4 b'4 | % 33
  a'2. r4 | % 34
  c''4. c''8 b'4 a'4 | % 35
  gis'4. ( a'8 b'2 ) | % 36
  c''4 b'4 a'4 gis'4 | % 37
  a'2. r4 \bar "||" % 38
  R1*4 r2
  \once\omit Staff.KeySignature
  \key f \major
  s2
  s1*6
  s2
  \key bes \major
  r8 g''8 bes''8 c'''8
  d'''4 bes''8 d'''8  c'''8 ( d'''16 c'''16 ) bes''8 a''8 | % 51
  g''2 r4 bes''8 c'''8 | % 52
  d'''4 f'''8 ( d'''4 ) bes''8 c'''8 d'''8 | % 53
  bes''4 c'''8 ( a''4 ) g''8 g''8 g''8 | % 54
  g''4 a''4. g''8 c'''8 c'''8 | % 55
  bes''4 c'''8 ( a''4 ) g''8 g''8 g''8 | % 56
  g''2 r2 \bar "||"
  R1*3

  s1*4
  R1 | % 65
  r4 bes'8 c''8 d''4 f''4 | % 66
  es''4. f''8 es''8 d''8 f''8 d''8 | % 67
  d''2 r2 \bar "||" % 68

  s1*2
  c''8 c''16 d''16 c''8 bes'8 c''4. bes'8 | % 71
  c''8 d''8 f''8 g''8 f''2 | % 72
  g''8 g''16 ( f''16 ) g''8 bes''8 c'''8 c'''8 c'''8 r8 | % 73
  c'''8 c'''16 ( d'''16 ) c'''8 bes''8 d'''8 d'''8 d'''8 r8 | % 74
  c'''8 c'''16 d'''16 c'''8 bes''8 g''4. f''8 | % 75
  g''8 bes''8 c'''8 bes''8 bes''2 | % 76
  R1*2

  \tweak stencil ##f \key f \major
  r4 r8 c''8  a'8 bes'8 c''8 e''8
  f''4  e''8 f''8 a'8 bes'8 c''8 c''8 | % 80
  c''4 r8 c''8 a'8 bes'8 c''8 e''8 | % 81
  f''4 e''8 f''8 a'8 c''8 bes'8 bes'8 | % 82
  bes'4 r8 c''8 bes'8 a'8 f'8 e'8 | % 83
  f'8 a'8 bes'8 c''8 f'8 a'8 bes'8 bes'8 | % 84
  bes'4 r8 c''8 bes'8 a'8 f'8 e'8 | % 85
  f'8 a'8 bes'8 c''8 f'8 a'8 f'8 f'8 | % 86
  f'2 r8 f'8 bes'8 c''8

  d''4 bes'8 ( c''8 ) r8 d''8 bes'8 c''8 | % 88
  d''8 d''8 d''4 r8 f''8 e''8 d''8 | % 89
  c''4 a'8 ( c''8 ) r8 d''8 a'8 d''8 | % 90
  c''8 c''8 c''4 r8 f'!8 bes'8 c''8 | % 91
  d''4 bes'8 ( c''8 ) r8 d''8 bes'8 c''8 | % 92
  d''8 d''8 d''4 r8 d''8 e''8 f''8 | % 93
  g''4 e''8 ( c''8 ) r8 d''8 e''8 g''8 | % 94
  f''8 f''8 f''4 r2
  R1*2
  %\set Staff.baseOctave = -1
  \tweak stencil ##f \key bes \major
  r1
  r8 bes''8 bes''8 bes''8 a''8 a''8 g''8 g''8 | % 99
  f''2. r4 | % 100
  r8 es''8 es''8 f''8 g''8 a''8 bes''8 d'''8 | % 101
  c'''2 r8 d'''8 a''8 c'''8 | % 102
  bes''1 | % 103
  r4 bes'4 es''4. f''8
  g''4. ( f''8  es''2) | % 105
  bes''4. bes''8 a''4. g''8 | % 106
  f''1 | % 107
  r4 bes''4 f''4 g''8 ( f''8 ) | % 108
  es''8 f''8 f''8 g''8 a''8 g''8 f''8 es''8 | % 109
  d''2. r4

  \repeat volta 2 {
    R1*4
  }

  \repeat volta 2 {
    s1*4
  }

  bes''8.\f f''16 f''8 f''8 g''4 f''8 g''8 | % 119
  f''8 g''8 bes'8 c''8 d''4 es''8 f''8 | % 120
  es''8 f''8 d''8 es''8 f''4 es''4 | % 121
  d''2 r2 | % 122
  bes''8 ->-\tweak extra-offset #'(0 . 1)-\mf r8 bes''8-> r8 bes''8   -> r8 bes''8 -> r8 | % 123
  bes''8 -> r8 bes''8 -> r8 bes''8-> r8 bes''8   -> r8 | % 124
  bes''8 -> r8 bes''8 -> r8 bes''8-> r8 bes''8   -> r8 | % 125
  bes''8 -> r8 bes''8 -> r8 bes''8-> f''8-\f f''8 f''8 | % 126

  \repeat volta 2 {
    g''2 r8 f''8 f''8 g''8 | % 127
    c''2 r8 d''8 d''8 es''8 | % 128
    f''2 r8 es''8 es''8 f''8
    \alternative {
      {
        d''2 bes''8 -> f''8 f''8 f''8
      }
      {
        d''2. r4 \bar "||" % 131
      }
    }
  }
  \tweak stencil ##F \key des \major
  R1*4
  bes'8. -> -\tweak extra-offset #'(-1 . 0)-\f
  bes'8. -> ^\markup\italic "cresc."
  bes'8. -> as'16 -> \dot as'16  as'16 -> bes'8 -> bes'8 ->
}

AltoMusic = {
  \numericTimeSignature
  \time 4/4
  \key c \major
  \partial 4 r4
  R1*2
  \repeat volta 2 {
    R1*2
  }
  R1*2 \bar "||"

  a'4. b'8 a'4 gis'4 | % 7
  a'4. b'8 a'4 gis'4 | % 8
  a'4 gis'4 a'4 gis'4 | % 9
  a'2. r4 | % 10
  a'4. b'8 a'4 gis'4 | % 11
  a'4. b'8 a'4 gis'4 | % 12
  a'4 gis'4 f'4 d'4
  e'2. r4 \bar "||" % 13

  R1*3
  c'4 d'4 e'4 d'8 ( e'8 ) | % 18
  f'2 r2
  R1 \spanBarOff | % 20
  e'4 d'4 c'4 b4
  a2. r4 \spanBarOn | % 22

  e'4 ( a'4 ) a'4 f'4 | % 23
  e'2. r4 | % 24
  d'4 e'4 e'4 d'4 | % 25
  c'2. r4 | % 26
  es'4. es'8 es'4 es'4 | % 27
  d'4.( e'8 f'2) | % 28
  d'4 d'4 e'4 f'4
  e'2. r4 | % 30
  e'4 a'4 a'4 f'4 | % 31
  e'2. r4 | % 32
  d'4 e'4 e'4 d'4 | % 33
  c'2. r4 \spanBarOn | % 34
  es'4. es'8 es'4 es'4 | % 35
  d'4.( e'8 f'2) | % 36
  e'4 f'4 e'4 d'4
  c'2. r4
  R1*4 r2
  \once\omit Staff.KeySignature
  \key f \major
  s2
  s1*6
  s2
  \key bes \major
  r8 g''8 g''8 d''8 | % 50
  d''4 d''8 d''8 es''4 d''8 c''8 | % 51
  d''2 r4 d''8 d''8 | % 52
  g''4 g''4. f''8 f''8 f''8  | % 53
  es''4 es''4. c''8 c''8 d''8  | % 54
  e''4 e''4. es''8 es''8 es''8  | % 55
  d''4 es''8 \=2( c''4 \=2) g'8 g'8 g'8  % 56
  g'2 r2
  R1*3

  \setStaffShortInstrumentName \markup\smaller "SA"
  d''8.^\markup\italic "SA Unis." d''16 d''8 g''8 f''8 g''8 d''8 c''8 \spanBarOff | % 61
  c''4 r4 r2 | % 62
  c''8. c''16 c''8 d''8 c''8 bes'8 c''8 d''8 | % 63
  d''4 r4 r2 \spanBarOn
  \resetStaffShortInstrumentName
  r1 | % 65
  r4 f'8 g'8 bes'4 d''4 \spanBarOff | % 66
  c''4. d''8 c''8 bes'8 d''8 bes'8
  bes'2 r2 \spanBarOn
  s1*2
  c''8 c''16 d''16 c''8 bes'8 c''4. bes'8 | % 71
  c''8 c''8 bes'8 c''8 d''2 | % 72
  g'8 g'16 \=2( f'16 \=2) g'8 bes'8 c''8 c''8 c''8 r8 | % 73
  c''8 c''16( d''16) c''8 bes'8 d''8 d''8 d''8 r8 | % 74
  es''8 es''16 f''16 es''8 d''8 c''4. bes'8 | % 75
  c''8 d''8 c''8 bes'8 d''2
  R1*2

  \tweak stencil ##f \key f \major
  r4 r8 c'8 a8 bes8 c'8 e'8 \spanBarOff | % 79
  f'4 e'8 f'8 a8 bes8 c'8 c'8 | % 80
  c'4 r8 c'8 a8 bes8 c'8 e'8 \spanBarOn | % 81
  f'4 e'8 f'8 a8 c'8 bes8 bes8 \spanBarOff | % 82
  bes4 r8 e'8 e'8 e'8 c'8 bes8 | % 83
  a8 c'8 e'8 f'8 a8 c'8 e'8 f'8 \spanBarOn  | % 84
  e'4 r8 f'8 e'8 e'8 c'8 bes8 \spanBarOff | % 85
  a8 c'8 e'8 f'8 f'8 e'8 c'8 bes8
  a2 r8 f'8 bes'8 c''8 \spanBarOn | % 87

  d''4 bes'8( c''8) r8 d''8 bes'8 c''8 | % 88
  d''8 d''8 d''4 r8 f'8 f'8 f'8 | % 89
  f'4 fis'8( a'8) r8 bes'8 f'8 bes'8 | % 90
  a'8 a'8 a'4 r8 f'8 bes'8 c''8 | % 91
  d''4 bes'8( c''8) r8 d''8 bes'8 c''8 | % 92
  d''8 d''8 d''4 r8 f'8 g'8 a'8 | % 93
  b'4 b'8( c''8) r8 bes'8 bes'8 bes'8 |
  a'8 a'8 a'4 r2 | % 95
  R1*2
  %\set Staff.baseOctave = -1
  \tweak stencil ##f \key bes \major
  r1
  r8 d''8 d''8 d''8 c''8 c''8 bes'8 bes'8 \spanBarOff | % 99
  bes'2. r4 \spanBarOn | % 100
  r8 c''8 c''8 d''8 es''8 f''8 g''8 bes''8 | % 101
  a''2 r8 g''8 f''8 es''8 | % 102
  d''1
  r4 bes'4 es''4. f''8 | % 104
  g''4. ( f''8  es''2) | % 105
  bes''4. bes''8 a''4.
  g''8 | % 106
  f''1 | % 107
  r4 bes''4 f''4 es''8( d''8) | % 108
  c''8 f'8 a'8 c''8 f''8 es''8 d''8 c''8
  bes'2. r4

  \repeat volta 2 {
    R1*4
  }

  \repeat volta 2 {
    s1*4
  }

  f''8. d''16 d''8 d''8 es''4 d''8 es''8 \spanBarOff | % 119
  d''8 es''8 g'8 a'8 bes'4 c''8 d''8 | % 120
  c''8 d''8 bes'8 c''8 d''4 c''4 | % 121
  bes'2 r2 \spanBarOn | % 122
  f''8 -> r8 f''8 -> r8 f''8 -> r8 f''8 -> r8 \spanBarOff | % 123
  f''8 -> r8 f''8 -> r8 f''8 -> r8 f''8 -> r8 | % 124
  f''8 -> r8 f''8 -> r8 f''8 -> r8 f''8 -> r8 \spanBarOn | % 125
  f''8 -> r8 f''8 -> r8 f''8 -> d''8 d''8 d''8 \spanBarOff | % 126

  \repeat volta 2 {
    es''2 r8 d''8 d''8 es''8 | % 127
    a'2 r8 bes'8 bes'8 c''8 \spanBarOn | % 128
    d''2 r8 c''8 c''8 d''8 \spanBarOff
    \alternative {
      {
        bes'2 f''8 -> d''8 d''8 d''8 \spanBarOn
      }
      {
        bes'2. r4
      }
    }
  }

  \tweak stencil ##F \key des \major
  R1*4
  f'8. -> f'8.-> f'8.-> f'16 -> \dot f'16  f'16 -> f'8-> f'8 ->
}

TenorMusic = {
  \numericTimeSignature
  \time 4/4
  \key c \major
  \partial 4 r4
  R1*2
  \repeat volta 2 {
    R1*2
  }
  R1*2
  R1*8
  a4-\mf a8 b8 a4 gis4 | % 15
  a4 a8 b8 a4 gis4 | % 16
  a4 b4 c'4 b4 | % 17
  c'2. r4 | % 18
  c'4. d'8 c'4 b4 | % 19
  c'4. d'8 c'4 b4 | % 20
  c'4 b4 a4 gis4
  a2. r4

  a4( c'4) b4 a4 | % 23
  gis2. r4 | % 24
  gis4 gis4 gis4 gis4 | % 25
  a2. r4 | % 26
  a4. a8 a4 a4 | % 27
  gis4.( a8 gis2) | % 28
  gis4 gis4 a4 b4  % 30
  c'2. r4 | % 30
  a4 c'4 b4 a4 | % 31
  gis2. r4 | % 32
  gis4 gis4 gis4 gis4 | % 33
  a2. r4 | % 34
  a4. a8 a4 a4 | % 35
  gis4.( a8 gis2) | % 36
  gis4 gis4 a4 gis4  % 38
  a2. r4 | % 38
  R1*4 r2
  \once\omit Staff.KeySignature
  \key f \major
  s2
  s1*6
  s2
  \key bes \major
  r8 g'8 bes'8 c''8 | % 50
  bes'4 g'8 bes'8 a'8( bes'16 c''16)
  d''8 c''8 | % 51
  g'2 r4 g'8 a'8 | % 52
  bes'4 d''8( bes'4) g'8 a'8 bes'8 | % 53
  g'4 a'8( g'4) g'8 g'8 g'8 | % 54
  g'4 a'4. g'8 g'8 g'8 | % 55
  g'4 a'8( fis'4) g'8 g'8 g'8
  g'2 r2 | % 57
  R1*3

  r1 | % 61
  r4 bes'8( g'8) r2 | % 62
  r1
  r4 bes'8( f'8) r2 | % 64
  d'8. d'16 d'8 f'8 g'8 bes'8 a'8 f'8 | % 65
  g'2 r2 | % 66
  es'8. es'16 es'8 f'8 es'8 d'8 f'8 d'8
  d'2 r2 | % 68

  s1*2
  c'8 c'16 d'16 c'8 bes8 c'4. bes8 | % 71
  c'8 d'8 f'8 g'8 f'2 | % 72
  g'8 g'16( f'16) g'8 bes'8 c''8 c''8 c''8 r8 | % 73
  c''8 c''16( d''16) c''8 bes'8 d''8 d''8 d''8 r8 | % 74
  g'8 g'16 bes'16 g'8 f'8 g'4. d'8 | % 75
  es'8 g'8 g'8 f'8 f'2
  R1*2

  \tweak stencil ##f \key f \major
  r2 r4 r8 a8
  f8 a8 c'8 e'8 c'2 | % 80
  r8 a16 c'16 c'8 c'8 c'4 r8
  a8 | % 81
  f8 a8 c'8 e'8 c'2 | % 82
  r8 a16 c'16 bes8 bes8 bes4 r4 | % 83
  f4 a8( bes8 ) c'4 r4 | % 84
  e4 a8( bes8) c'4 r4 | % 85
  r8 a8 bes8 c'8 f8 a8 f8 f8
  f2 r8 f8 bes8 c'8 | % 87

  d'4 bes8( c'8) r8 d'8 bes8 c'8 | % 88
  d'8 d'8 d'4 r8 f'8 e'8 d'8 | % 89
  c'4 a8( c'8) r8 d'8 a8 d'8 | % 90
  c'8 c'8 c'4 r8 f8 bes8 c'8 | % 91
  d'4 bes8( c'8) r8 d'8 bes8 c'8 | % 92
  d'8 d'8 d'4 r8 d'8 e'8 f'8 | % 93
  d'4 e'8( c'8) r8 d'8 e'8 c'8 |
  c'8 c'8 c'4 r2 | % 95
  R1*2
  \tweak stencil ##f \key bes \major
  %\set Staff.baseOctave = -2
  r8 f'8 f'8 f'8 f'8 bes'8 a'8 g'8 | % 98
  f'1 | % 99
  r8 d'8 d'8 d'8 g'8 f'8 f'8 g'8 | % 100
  es'1 | % 101
  r8 a'8 f'8 g'8 es'8 f'8 g'8 a'8 | % 102
  bes'1
  r4 bes4 es'4. f'8 | % 104
  g'4.( f'8 es'2) | % 105
  bes'4. bes'8 a'4.
  g'8 | % 106
  f'1 | % 107
  r4 bes'4 f'4 g'8( f'8) | % 108
  es'8 f'8 f'8 g'8 a'8 g'8 f'8 f'8
  f'2. r4

  \repeat volta 2 {
    R1*4
  }

  \repeat volta 2 {
    s1*4
  }

  bes'8 ->-\tweak extra-offset #'(0 . 1)-\mf r8 bes'8-> r8 bes'8   -> r8 bes'8 -> r8 | % 123
  bes'8 -> r8 bes'8 -> r8 bes'8-> r8 bes'8-> r8 | % 124
  bes'8 -> r8 bes'8 -> r8 bes'8-> r8 bes'8-> r8 | % 125
  bes'8 -> r8 bes'8 -> r8 bes'8-> r8 bes'8-> r8 |

  bes'8.-\f f'16 f'8 f'8 g'4 f'8 g'8 | % 123
  f'8 g'8 bes8 c'8 d'4 es'8 f'8 | % 124
  es'8 f'8 d'8 es'8 f'4 es'4 | % 125
  d'2 f'8 -> r8 r4 | % 126
  \repeat volta 2 {
    r8 f'8 f'8 f'8 g'2 | % 127
    r8 f'8 f'8 g'8 c'2 | % 128
    r8 d'8 d'8 es'8 f'8 a'8 a'8 f'8 \alternative {
      {
        f'2 f'8 -> r8 r4 |
      }
      {
        f'2. r4
      }
    }
  }

  \tweak stencil ##F \key des \major
  R1*4
  des'8. -> des'8. -> des'8. -> c'16 -> \dot  c'16  c'16 -> des'8 -> des'8 ->
}

BassMusic = {
  \numericTimeSignature
  \time 4/4
  \key c \major
  \partial 4 r4
  R1*2
  \repeat volta 2 {
    R1*2
  }
  R1*2
  R1*8
  a4 a8 b8 a4 gis4 | % 15
  a4 a8 b8 a4 gis4 | % 16
  a4 gis4 a4 gis4 | % 17
  a2. r4 | % 18
  a4. b8 a4 g4 | % 19
  a4. b8 a4 g4 | % 20
  gis4 f4 e4 d4
  c2. r4 | % 22 \bar "||" % 22

  a,2 c4 d4 | % 23
  e2. r4 | % 24
  e4 d4 c4 b,4 | % 25
  a,2. r4 | % 26
  f4. f8 f4 f4 | % 27
  d4.( c8 b,2) | % 28
  e4 e4 fis4 gis4
  a2. r4 | % 30
  a,4 a,4 c4 d4 | % 31
  e2. r4 | % 32
  e4 d4 c4 b,4 | % 33
  a,2. r4 | % 34
  f4. f8 f4 f4 | % 35
  d4.( c8 b,2) | % 36
  e4 d4 c4 b,4
  a,2. r4
  R1*4 r2
  \once\omit Staff.KeySignature
  \key f \major
  \setStaffShortInstrumentName \markup \smaller {
    \override #'(baseline-skip . 2.3)
    \center-column {
      "SA"
      "TB"
    }
  }
  r8^\markup\italic "SATB Unis." d8 f8 g8
  a4 f8 a8 g8 ( a16 g16 ) f8 e8 | % 44
  d2 r4 f8  g8  | % 45
  a4 c'8 ( a4 ) f8 g8 a8 | % 46
  f4 g8 ( e4 ) d8 d8 d8 | % 47
  d4 e4. d8 g8 g8 | % 48
  f4 g8 ( e4 ) d8 d8 d8 | % 49
  d4 \melisma \dot d'4\melismaEnd
  \key bes \major
  \resetStaffShortInstrumentName
  r8 g'8 g'8 fis'8 | % 50
  g'4 g'8 g'8 fis'4 fis'8 fis'8 | % 51
  f'!2 r4 e'8 e'8 | % 52
  es'!4 es'4. d'8 d'8 d'8 | % 53
  c'4 c'4. d'8 d'8 d'8 | % 54
  cis'4 cis'4. c'8 c'8 c'8 | % 55
  bes4 c'8( a4) g8 g8 g8
  g2 r2
  R1*3

  r1
  r4 f'8( es'8) r2 | % 63
  r1
  r4 f'8( d'8) r2 | % 64
  d'8. d'16 d'8 f'8 g'8 bes'8 a'8 f'8 | % 65
  g'2 r2 | % 66
  c'8. c'16 c'8 d'8 c'8 bes8 d'8 bes8
  bes2 r2 | % 68

  \setStaffShortInstrumentName \markup \smaller {
    \override #'(baseline-skip . 2.3)
    \center-column {
      "SA"
      "TB"
    }
  }
  g'8^\markup\italic "SATB Unis." g'16 f'16 d'8 f'8 g'8 g'8 g'8 r8 | % 69
  g'8 bes'8 a'8 f'8 d'8 d'8 d'8 r8 | % 70
  \resetStaffShortInstrumentName
  c'8 c'16 d'16 c'8 bes8 c'4. bes8 | % 71
  c'8 c'8 d'8 c'8 bes2 | % 72
  g8 g16( f16) g8 bes8 c'8 c'8 c'8 r8 | % 73
  c'8 c'16( d'16) c'8 bes8 d'8 d'8 d'8 r8 | % 74
  c'8 c'16 d'16 c'8 bes8 c'4. bes8 | % 75
  c'8 d'8 c'8 bes8 bes2
  R1*2

  \tweak stencil ##f \key f \major
  r2 r4 r8 f8 | % 79
  f8 f8 a8 bes8 a2 | % 80
  r8 f16 a16 a8 a8 a4 r8 f8 | % 81
  f8 f8 a8 bes8 a2 | % 82
  r8 e16 f16 e8 e8 e4 r4 | % 83
  f4 e8( f8) a4 r4 | % 84
  e4 e8( f8) e4 r4 | % 85
  r8 c8 e8 f8 c8 c8 c8 c8
  f2 r8 f8 bes8 c'8 | % 87

  d'4 bes8( c'8) r8 d'8 bes8 c'8 | % 88
  d'8 d'8 d'4 r8 f8 f8 f8 | % 89
  f4 d4 r8 g8 c8 c8 | % 90
  f8 f8 f4 r8 f8 bes8 c'8 | % 91
  d'4 bes8( c'8) r8 d'8 bes8 c'8 | % 92
  d'8 d'8 d'4 r8 f8 g8 a8 | % 93
  g4 g8( e8) r8 c8 d8 e8 |
  f8 f8 f4 r2 | % 95
  R1*2
  \tweak stencil ##f \key bes \major
  %\set Staff.baseOctave = -2
  r8 f8 bes8 d'8 f'8 e'8 f'8 g'8 | % 98
  d'1 | % 99
  r8 f8 bes8 d'8 es'8 f'8 d'8 es'8 | % 100
  c'1 | % 101
  r8 f'8 d'8 es'8 c'8 d'8 a8 c'8 | % 102
  bes1
  r4 bes4 es'4. f'8 | % 104
  g'4.( f'8 es'2) | % 105
  bes'4. bes'8 a'4.
  g'8 | % 106
  f'1 | % 107
  r4 bes'4 f'4 es'8( d'8) | % 108
  c'8 f8 a8 c'8 f'8 es'8 d'8 c'8
  bes2. r4

  \setStaffShortInstrumentName \markup \smaller {
    \override #'(baseline-skip . 2.3)
    \center-column {
      "SA"
      "TB"
    }
  }
  \repeat volta 2 {
    R1*4
  }

  \repeat volta 2 {
    bes'4-\tweak extra-offset #'(0 . -0.8)-> -\tweak extra-offset #'(0 . 0.5)\f r8^\markup\italic "SATB Unis."  f'8 f'8 g'8 d'8 f'8 | % 115
    g'2 r8 f'8 f'8 g'8 | % 116
    c'2 r4 d'4 | % 117
    bes2 r2
  }

  \resetStaffShortInstrumentName

  f'8 -> r8 f'8 -> r8 f'8 -> r8 f'8 -> r8 | % 123
  f'8 -> r8 f'8 -> r8 f'8 -> r8 f'8 -> r8 | % 124
  f'8 -> r8 f'8 -> r8 f'8 -> r8 f'8 -> r8 | % 125
  f'8 -> r8 f'8 -> r8 f'8 -> r8 f'8 -> r8 |

  f'8. d'16 d'8 d'8 es'4 d'8 es'8 | % 123
  d'8 es'8 g8 a8 bes4 c'8 d'8 | % 124
  c'8 d'8 bes8 c'8 d'4 c'4 | % 125
  bes2 bes8 -> r8 r4 | % 126
  \repeat volta 2 {
    r8 d'8 d'8 d'8 es'2 | % 127
    r8 d'8 d'8 es'8 a2 | % 128
    r8 bes8 bes8 c'8 d'8 c'8 c'8 d'8 \alternative {
      {
        bes2 bes8 -> r8 r4 |
      }
      {
        bes2. r4
      }
    }
  }

  \tweak stencil ##F \key des \major
  R1*4
  bes8. -> bes8.-> bes8. -> as16 -> \melisma \dot as16 \melismaEnd  as16 -> bes8 -> bes8 ->
}

%% LYRICS

AltoLyrics = \lyricmode {
  Bu -- ngong jeum -- pa, bu -- ngong jeum -- pa meu -- gah di A -- cèh __
  Bu -- ngong teu -- leu -- \tweak self-alignment-X #LEFT bèh, teu -- leu -- bèh in -- dah la -- goë na. __
  a -- ngèn peu -- a -- \tweak self-alignment-X #LEFT yôn
  nyang ma -- la -- ma -- la. __
  %{ Pu -- téh ku -- nèng meu -- jam -- pu mi -- rah
  Bu -- ngong si -- u -- lah __ ci -- dah that ru -- pa.
  Ma -- ngat that mu -- bèë meu -- nyo ta -- tém côm
  " Leu" -- pah that ha -- rôm __ si bu -- ngong jeum --  pa. __ %}
  "" \repeat unfold 38 \skip1

  % Pi -- sang si -- lat ta -- nam -- \tweak self-alignment-X #LEFT lah ba -- ba -- \tweak self-alignment-X #LEFT ris
  %   Ba -- ba -- ris \tweak self-alignment-X #LEFT ta -- bang pang bam -- ban \tweak self-alignment-X #LEFT ku -- ha -- lang -- a -- " kan,"
  %   ta -- bang pang bam -- ban ku -- ha -- lang -- a -- \tweak self-alignment-X #LEFT kan.

  "" \repeat unfold 32 \skip1
  Nyok, ki -- te non -- ton on -- del- on -- del
  Nyok, ki -- te nga -- rak on -- del- on -- del
  A -- de a -- nak -- \tweak self-alignment-X #LEFT nye ngi -- gel ter -- i -- ter -- \tweak self-alignment-X #LEFT an.

  % " Yang" ngi -- ring -- in nan -- \tweak self-alignment-X #LEFT dak,
  %   pa -- de su -- rak su -- \tweak self-alignment-X #LEFT rak.
  %   Ta -- ngan i -- seng ja -- hil -- in
  %   ke -- pa -- le on -- del on -- del.
  %   Ta -- ro' -- in pun -- tu -- ngan, ram -- but   ke -- ba -- kar -- \tweak self-alignment-X #LEFT an.
  \repeat unfold 38 \skip1

  Me -- sat nga -- pung lu -- hur ja -- uh di a -- wang -- a -- wang
  Me -- ber -- keun jang -- jang -- na ba -- ngun ta -- ya ka -- ring -- rang.
  Ku -- ku -- na rang -- go -- as reu -- jeung pa -- ma -- tuk -- na nge -- luk
  Nge -- pak me -- ga ba -- ri hi -- ber -- na ta -- rik nyu -- ru -- \tweak self-alignment-X #LEFT wuk.
  Ma -- nuk da -- ""
  \repeat unfold 40 \skip1
  A -- nging ma -- mi -- ri ku pa -- sang __
  Pi -- tu -- ju -- i ton -- tong -- an -- na __
  tak -- kan lu -- pa. __
  E a -- u -- ""
  \repeat unfold 17 \skip1

  Tee -- mi no -- ki -- be ku -- ba -- no ko bom -- be ko
  Yu -- ma -- no bu -- ngo a -- we a --  de.
  \tweak self-alignment-X #LEFT Hee! Hee!
  \tweak self-alignment-X #LEFT \markup\italic "(simile)" __
  \repeat unfold 9 \skip1 Hee! Hee! Hee!
  Hong -- ke hong -- ke __ hong -- ke ri -- ro __
  Hong -- ke jom -- be jom -- be ri -- ro __ Hee!  Hong -- ke hong-
  ro. __

}

BassLyrics = \lyricmode {
  Lam si -- nar bu -- leuën, lam si -- nar bu -- leuën a -- ngèn peu -- a -- yôn __
  \tweak self-alignment-X #LEFT Ru -- rôh meu -- su -- \tweak self-alignment-X #LEFT sôn, meu -- su -- sôn, nyang ma -- la -- ma -- la. __
  \tweak self-alignment-X #LEFT Pu -- téh ku -- nèng meu -- jam -- pu mi -- rah __
  Bu -- ngong si -- u -- lah __ ci -- dah that ru -- pa. __
  Ma -- ngat that mu -- bèë __ meu -- nyo ta -- tém côm __
  Leu -- pah that ha -- rôm __ si bu -- ngong jeum -- pa.

  Ko -- ta -- ba -- ru gu -- nung -- nya ba -- me -- \tweak self-alignment-X #LEFT ga
  Ba -- me -- ga um -- bak ma -- nam -- pur di __ sa -- la ka -- rang,
  um -- bak ma -- nam -- pur di __ sa -- la ka -- \tweak self-alignment-X #LEFT rang.
  Pi -- sang si -- lat ta -- nam -- \tweak self-alignment-X #LEFT  lah ba -- ba -- \tweak self-alignment-X #LEFT ris
  Ba -- ba -- ris \tweak self-alignment-X #LEFT ta -- bang pang bam -- ban \tweak self-alignment-X #LEFT ku -- ha -- lang -- a -- " kan,"
  ta -- bang pang bam -- ban ku -- ha -- lang -- a -- \tweak self-alignment-X #LEFT kan.

  Nyok! Nyok!
  On -- del-  on -- del a -- de a -- nak -- \tweak self-alignment-X #LEFT nye
  A -- nak -- nye ngi -- gel ter -- i -- ter -- \tweak self-alignment-X #LEFT an.

  Plak ke -- dum -- blang dum -- blang plak plak,
  gen -- dang nya -- ring di -- te -- pak.
  " Yang" ngi -- ring -- in nan -- \tweak self-alignment-X #LEFT dak,
  pa -- de su -- rak su -- \tweak self-alignment-X #LEFT rak.
  Ta -- ngan i -- seng ja -- hil -- in
  ke -- pa -- le on -- del on -- del.
  Ta -- ro' -- in pun -- tu -- \tweak self-alignment-X #LEFT ngan,
  ram -- but   ke -- ba -- kar -- \tweak self-alignment-X #LEFT an.

  Me -- sat nga -- pung lu -- \tweak self-alignment-X #LEFT hur di a -- wang -- a -- wang
  Me -- ber -- keun jang -- jang -- na ta -- ya ka -- ring -- \tweak self-alignment-X #LEFT rang.
  Ku -- ku -- na pa -- tuk -- na
  hi -- ber -- na ta -- rik nyu -- ru -- \tweak self-alignment-X #LEFT  wuk.

  Ma -- nuk da -- da -- li __ ma -- nuk pang -- ga -- gah -- na
  Per -- lam -- bang sak -- \tweak self-alignment-X #LEFT ti In -- do -- ne -- sia Ja -- ya.
  Ma -- nuk da -- da -- li __ pang -- ka -- kon -- ca -- ra -- na
  Re -- sep nga -- hi -- ji __ ru -- kun sa -- ka -- beh -- na.

  A -- nging ma -- mi -- ri ku pa -- sang __
  Pi -- tu -- ju -- i ton -- tong -- an -- na __
  Tu -- sa -- ro -- a tak -- kan lu -- pa. __
  E a -- u -- le __
  Na ma -- ngu ra -- ngi __
  Tu -- te -- na -- ya tu -- te -- na -- ya pa -- ri -- si -- na. __

  Hee! Yam -- ko ram -- be yam -- \tweak self-alignment-X #LEFT ko a -- ro -- na -- wa kom -- \tweak self-alignment-X #LEFT  be.
  \tweak self-alignment-X #LEFT Hee! Hee!
  \tweak self-alignment-X #LEFT \markup\italic "(simile)" __
  \repeat unfold 13 \skip1
  Tee -- mi no -- ki -- be ku -- ba -- no ko bom -- be ko
  Yu -- ma -- no bu -- ngo a -- we a --  de. Hee!

  Hong -- ke hong -- ke __ hong -- ke ri -- ro __
  Hong -- ke jom -- be jom -- be ri -- ro __ Hee!
  ro. __

  In -- do -- ne -- sia -- ku Ja -- ya!
}

\paper {
  IndentSolmisasi = 9.5
  ShortIndentSolmisasi = 9.5
}

\include "a4-satb.ily"