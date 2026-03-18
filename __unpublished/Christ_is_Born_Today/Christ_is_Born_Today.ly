\version "2.25.29"

\include "solmisasi-ly.ily"
\debugOff

\include "hy-music-template.ily"

\header {
  dedication = ##f
  title = "Christ is Born Today!"
  subtitle = \markup\italic "(Good Christian Friends, Rejoice)"
  footer-title = "Christ is Born Today!"
  composer-pre-text = \markup\italic "IN DULCI JUBILO"
  composer = \markup\normal-text "Traditional German Melody, 14th c."
  arranger-pre-text = ##f
  arranger = \markup\normal-text "Arranged by LLOYD LARSON"
  poet-pre-text = ##f
  poet = ##f
  meter = ##f
  meter-post-text = ##f
  instrument-pre-text = ##f
  instrument = "For S.A.T.B Voices and Piano with opt. 4-Hand Piano*"
  instrument-id = "SATB"
  nada-dasar = "Words: Latin Carol, 14th c.,"
  sukat-dan-mm = "tr. JOHN M. NEALE, alt."
  copyright = ##f
  tagline = "&mdash; Translasi Notasi oleh Henri Yulianto &mdash;"
}

Global = {
  %\omit Score.BarNumber
  \override Score.RehearsalMark.font-size = #1
  \set Score.rehearsalMarkFormatter = #format-mark-box-barnumbers
  \override Staff.SolmisasiKeyChangeMark.Y-offset = #1
  \time 6/8 \key f \major
  \disallowPageBreak
  \disallowLineBreak
  \tempo "Joyously" 4.=63

  s2.*8
  s2.*2
  s8 \tempo "rit." s4 s4.
  s2.
  \tempo "a tempo"
  s2.*2 \break
  s2.*2
  \mark \default
  s2.*4 \break
  s2.*4
  \mark \default
  s2. \break
  s2.*5 \pageBreak
  s2.*3

  %\once\omit Score.SolmisasiEquivalenceNoteText
  \key d \major
  s4. \tempo "poco rit." s4.
  s2.
  \tempo "a tempo" s2. \break
  s2.
  \once\omit Score.BarNumber
  \mark \default
  s2.*4 \break
  s2.*4
  \mark \default
  s2. \break
  s2.*5 \break
  s2.*4
  \tempo "rit."
  s2.*2 \pageBreak

  \key g \major
  \tempo "Slightly broader" 4.=60
  \once\omit Score.BarNumber
  \once\override Score.RehearsalMark.X-offset = #-3
  \once\override Score.RehearsalMark.extra-offset = #'(0 . -0.3)
  \mark \default
  s2.*4 \break
  s2.*4
  \mark \default
  s2. \break
  s2.*5 \break
  s2.*3
  \tempo "poco rit."
  s2.
  \tempo "a tempo"
  s2.*2 \pageBreak
  s2.*2
  \mark \default
  s2.*2
  \tempo "rit."
  s2.\break
  s2.
  \tempo "a tempo"
  s2.*4 \bar "|."
}

SopranoTwoInstrumentName = "S."
SopranoTwoShortInstrumentName = \SopranoTwoInstrumentName
SopranoTwoMusic = {
  \clef "treble" \time 6/8 \key f \major
  R2.*8
  r8 d''8 -\f d''8 e''4 e''8 |
  f''4. ( c''4. ) | % 11
  r4. a'8. a'8. | % 12
  g'4. c''4. | % 13
  c''2. ( | % 14
  c''2.) | % 15
  s2.*6 |
  c''4 d''8 c''4 bes'8 | % 22
  a'4 g'8 f'4 r8 | % 23
  g'4 g'8 a'4 g'8 | % 24
  f'4 g'8 a'4 r8 | % 25
  c''4 d''8 c''4 bes'8 | % 26
  a'4 g'8 f'4 f'8 | % 27
  g'4 g'8 a'4 g'8 | % 28
  f'4 g'8 a'4 r8 | % 29
  d'4 d'8 e'4 e'8 |
  f'4. ( c''4 ) r8 | % 31
  a'4 a'8 g'4 g'8 | % 32
  f'2. ( | % 33
  f'2. )
  \key d \major
  \repeat unfold 3 { r4. r4. }

  s2.*5
  r8 fis'8 -\mp g'8 fis'4 e'8 | % 43
  d'4 cis'8 d'4 r8 | % 44
  g'4 g'8 a'4 g'8 | % 45
  fis'4 a'8 a'4 r8 | % 46
  a'4 -\tweak X-offset #1.5 ^\markup{ \small\italic {mel.} } b'8 a'4 g'8 | % 47
  fis'4 e'8 d'4 d'8 | % 48
  e'4 e'8 fis'4 a'8 | % 49
  b'4 a'8 a'4 r8 |
  b'4 \< b'8 cis''4 cis''8 | % 51
  d''2.\! -\mf | % 52
  r4. a'8. d''8. | % 53
  d''4.\< cis''4. | % 54
  d''2.\! ( -\f | % 55
  d''2.) | % 56
  r2. | % 57
  r4. r4 g'8 -\ff

  \key g \major
  s2.*4
  d''4 e''8 d''4 c''8 | % 63
  b'4 a'8 g'4 r8 | % 64
  a'4 a'8 b'4 a'8 | % 65
  g'4 a'8 b'4 r8 | % 66
  d''4 e''8 d''4 c''8 | % 67
  b'4 a'8 g'4 g'8 | % 68
  a'4 a'8 b'4 a'8 | % 69
  g'4 a'8 b'4 r8 |
  e'4^\mf e'8 fis'4 fis'8  | % 73
  g'1*5/8 r8 |
  g'4^\f 8 a'4 8 |
  bes'4.( c''4.) |
  r4. d''8.^\ff d''8. | % 75
  es''4. c''4. | % 76
  d''2. ( | % 77
  d''2. ) | % 78
  \repeat unfold 2 { r4. r4. }
  r8 e''8 e''8 fis''4 fis''8 | % 81
  g''4. ( d''4. ) | % 82
  r4. b'8. b'8. | % 83
  \setStaffShortInstrumentName "S2."
  a'4. d''4. | % 84
  d''2. ( | % 85
  d''4. ) r8 d''8 d''8 | % 86
  b'2. (
  b'4. ) r4.
}

SopranoOneInstrumentName = "S1."
SopranoOneShortInstrumentName = \SopranoOneInstrumentName
SopranoOneMusic = {
  \clef "treble" \time 6/8 \key f \major
  s2.*33
  \key d \major
  s2.*24
  \key g \major
  s2.*25
  a'4. d''4. | % 84
  d''2. ( | % 85
  d''4. ) r8 d''8 \< d''8 | % 86
  g''2.\! ^\fff (
  g''4. ) r4.
}

AltoTwoInstrumentName = "A."
AltoTwoShortInstrumentName = \AltoTwoInstrumentName
AltoTwoMusic = {
  \clef "treble" \time 6/8 \key f \major
  \spanBarOff
  R2.*8
  r8 d'8 d'8 e'4 e'8 |
  f'4. ( c''4. ) | % 11
  r4. f'8. f'8. | % 12
  f'4. e'4. | % 13
  f'2. (| % 14
  f'2. ) \spanBarOn | % 19
  \setStaffShortInstrumentName \markup {
    \override #'(baseline-skip . 2.5)
    \smaller \left-column {
      "SA"
      "TB"
    }
  }
  r2. |
  r4. r8 r8-\mf f'8  | % 17
  f'4 f'8 a'4 bes'8 | % 18
  c''4 ( d''8 c''4 ) c''8 | % 19
  f'4 f'8 a'4 bes'8 |
  c''4 ( d''8 c''4 ) r8 | % 21
  \resetStaffShortInstrumentName
  a'4 bes'8 a'4 g'8 \spanBarOff | % 22
  f'4 c'8 d'4 r8 | % 23
  g'4 g'8 f'4 c'8 | % 24
  d'4 c'8 f'4 r8 | % 25
  a'4 bes'8 a'4 g'8 \spanBarOn | % 26
  f'4 c'8 d'4 d'8 \spanBarOff | % 27
  d'4 d'8 f'4 e'8 | % 28
  d'4 c'8 f'4 r8 | % 29
  d'4 d'8 e'4 e'8 |
  f'1*5/8 r8 \spanBarOn | % 31
  f'4 f'8 f'4 e'8 \spanBarOff | % 32
  f'2. ( |
  f'2. ) \spanBarOn |

  \key d \major
  \repeat unfold 3 { r4. r4. }

  s2.*5
  r8 fis'8 g'8 fis'4 e'8 \spanBarOff | % 43
  d'4 cis'8 d'4 r8 | % 44
  g'4 g'8 a'4 g'8 | % 45
  fis'4 e'8 d'4 r8
  a'4 b'8 a'4 g'8 \spanBarOn | % 47
  fis'4 e'8 d'4 d'8 \spanBarOff | % 48
  e'4 e'8 fis'4 e'8 | % 49
  g'4 e'8 fis'4 r8 |
  g'4 g'8 a'4 a'8 | % 51
  a'4 a'8 b'4. \spanBarOn | % 52
  r4. fis'8. fis'8. \spanBarOff | % 53
  g'4. a'4.  | % 54
  a'2. ( | % 55
  a'2. ) \spanBarOn | % 56
  r2. | % 57
  r4. r4 g'8 | % 58

  \key g \major
  s2.*4
  g'4 g'8 g'4 a'8 \spanBarOff | % 63
  g'4 fis'8 e'4 r8 | % 64
  e'4 e'8 e'4 e'8 | % 65
  e'4 fis'8 g'4 r8 | % 66
  g'4 g'8 g'4 a'8 \spanBarOn | % 67
  g'4 fis'8 e'4 e'8 \spanBarOff | % 68
  f'4 f'8 g'4 fis'8 | % 69
  e'4 fis'8 g'4 r8 |
  e'4 e'8 d'4 d'8  | % 73
  e'1*5/8 r8 \spanBarOn |
  es'4 8 f'4 8 \spanBarOff |
  g'2. |
  r4. g'8. g'8. | % 75
  g'4. g'4. | % 76
  g'2. ( | % 77
  g'2. ) \spanBarOn | % 78
  \repeat unfold 2 { r4. r4. \spanBarOff }
  r8 e'8 e'8 fis'4 fis'8 | % 81
  g'4. ( d''4. ) | % 82
  r4. g'8. g'8. \spanBarOn | % 83
  g'4. fis'4. \spanBarOff | % 84
  g'2. ( | % 85
  g'4. ) r8 g'8 g'8  | % 86
  g'2. ( |
  g'4. ) r4. \spanBarOn |
}

TenorTwoInstrumentName = "T."
TenorTwoShortInstrumentName = \TenorTwoInstrumentName
TenorTwoMusic = {
  \clef "treble_8" \time 6/8 \key f \major
  R2.*8
  r8 d'8 -\f d'8 e'4 e'8 |
  f'4. ( c'4. ) | % 11
  r4. d'8. d'8. | % 12
  c'4. c'4. | % 13
  c'2. ( | % 14
  c'2.) | % 15
  s2.*6
  c'4 d'8 c'4 bes8 | % 22
  a4 g8 f4 r8 | % 23
  g4 g8 a4 g8 | % 24
  a4 c'8 c'4 r8 | % 25
  c'4 d'8 c'4 bes8 | % 26
  a4 g8 f4 f8 | % 27
  bes4 bes8 c'4 c'8 | % 28
  a4 c'8 c'4 r8 | % 29
  bes4 bes8 c'4 c'8 |
  c'4. ( d'4 ) r8 | % 31
  c'4 c'8 c'4 c'8 | % 32
  c'2. (
  2.)

  \key d \major
  \repeat unfold 3 { r4. r4. }
  s2.*10
  a4 a8 b4 b8 | % 48
  g4 g8 a4 cis'8 | % 49
  d'4 cis'8 d'4 r8 |
  d'4 \< d'8 e'4 e'8 | % 51
  d'4\! ^\mf d'8 d'4. | % 52
  r4. d'8. d'8. | % 53
  b4.\< e'4. | % 54
  d'2.\! -\f ( | % 55
  d'2. ) | % 56
  r2.
  r4. r4 g8-\ff | % 58

  \key g \major
  \setStaffShortInstrumentName "ST."
  g4 g8 b4 c'8 | % 59
  d'4 ( e'8 d'4 ) d'8 |
  g4 g8 b4 c'8 | % 61
  d'4 ( e'8 d'4 ) r8 | % 62
  \resetStaffShortInstrumentName
  g4 g8 b4 e'8 | % 63
  d'4 d'8 b4 r8 | % 64
  c'4 c'8 c'4 c'8 | % 65
  c'4 d'8 d'4 r8 | % 66
  b4 g8 b4 e'8 | % 67
  d'4 d'8 b4 d'8 | % 68
  c'4 e'8 d'4 d'8 | % 69
  b4 d'8 d'4 r8 |
  r8^\mf c'8 b8 c'4 c'8 | % 71
  c'1*5/8 r8 | % 72
  r8 bes8 8 c'4 8 |
  es'4 8 4. |
  r4. d'8.^\ff d'8. | % 75
  c'4. es'4. | % 76
  d'2. ( | % 77
  d'2. ) | % 78
  \repeat unfold 2 { r4. r4. }
  r8 e'8 e'8 fis'4 fis'8 | % 81
  g'4.( d'4.) | % 82
  r4. e'8. e'8. | % 83
  d'4. d'4. | % 84
  d'2. ( | % 85
  d'4. ) r8 c'8 \< c'8 | % 86
  d'2. \! -\fff (
  d'4. ) r4.
}

BassTwoInstrumentName = "B."
BassTwoShortInstrumentName = \BassTwoInstrumentName
BassTwoMusic = {
  \clef "bass" \time 6/8 \key f \major
  R2.*8
  r8 d8 d8 e4 e8 |
  f4.( c'4.) | % 11
  r4. bes8. bes8. | % 12
  c'4. c4. | % 13
  f2. ( | % 14
  f2.)
  s2.*6
  a4 bes8 a4 g8 | % 22
  f4 c8 d4 r8 | % 23
  g4 g8 f4 c8 | % 24
  d4 e8 f4 r8 | % 25
  a4 bes8 a4 g8 | % 26
  f4 c8 d4 d8 | % 27
  g4 g,8 c4 c8 | % 28
  d4 e8 f4 r8 | % 29
  bes4 bes8 bes4 bes8 |
  a4. ( bes4 ) r8 | % 31
  c'4 c'8 c4 c8 | % 32
  f2. (
  f2. ) | % 34

  \key d \major
  \repeat unfold 3 { r4. r4. }
  \setStaffShortInstrumentName "TB."
  r4. r8 r8-\mp d8  | % 38
  d4 d8 fis4 g8 | % 39
  a4( b8 a4) a8 |
  d4 d8 fis4 g8 | % 41
  a4( b8 a4 )r8 | % 42
  a4 ^\markup{ \small\italic {mel.} } b8
  a4 g8 | % 43
  fis4 e8 d4 r8 | % 44
  e4 e8 fis4 e8 | % 45
  d4 e8 fis4 r8 | % 46
  r8 fis8 g8 a4 b8 | % 47
  \resetStaffShortInstrumentName
  a4 a8 b4 b8 | % 48
  g4 g8 a4 a8 | % 49
  g4 a8 d4 r8 |
  g4 g8 g4 g8 | % 51
  fis4 fis8 g4. | % 52
  r4. a8. a8. | % 53
  a4. a4. | % 54
  d2. ( | % 55
  d2. ) | % 56
  r2.
  r4. r4 g8 | % 58

  \key g \major
  \setStaffShortInstrumentName "AB."
  g4 g8 b4 c'8 | % 59
  b4 ( c'8 b4 ) b8 |
  g4 g8 b4 c'8 | % 61
  b4 ( c'8 b4 ) r8 | % 62
  \resetStaffShortInstrumentName
  b,4 c8 d4 d8 | % 63
  g4 d8 e4 r8 | % 64
  a4 a8 g4 g8 | % 65
  d4 d8 g4 r8 | % 66
  r8 b,8 c8 d4 d8 | % 67
  g4 d8 e4 e8 | % 68
  f4 f8 g4 d8 | % 69
  e4 d8 g4 r8 |
  r8 c'8 b8 a4 a8 | % 71
  g1*5/8 r8 | % 72
  r8 es d c4 8 |
  bes,4 bes8 a4. |
  r4. b8. b8. | % 75
  c'8. ( bes8. ) a4. | % 76
  g2. ( | % 77
  g2.) | % 78
  \repeat unfold 2 { r4. r4. }
  r8 e8 e8 fis4 fis8 | % 81
  g4. ( d'4.) | % 82
  r4. c'8. c'8. | % 83
  d'4. d4. | % 84
  g2. ( | % 85
  g4.) r8 a8 a8 | % 86
  g2. (
  g4. ) r4.
}

Chords = \chordmode {
}

%% LYRICS

AltoTwoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \tweak self-alignment-X #0.3 Christ is \tweak self-alignment-X #LEFT born to -- "day! " __ \skip1
  Christ is born to -- "day! " __ \skip1

  \tweak self-alignment-X #0.5 Good \tweak self-alignment-X #-0.4 Chris -- tian \tweak self-alignment-X #-0.5 "friends,"
  re -- \tweak self-alignment-X #LEFT "joice " \skip1 \skip1
  with \tweak self-alignment-X #-0.5 heart and \tweak self-alignment-X #-0.4 soul and \tweak self-alignment-X #LEFT "voice! " \skip1\skip1

  \tweak self-alignment-X #-0.5 Give ye \tweak self-alignment-X #-0.5 heed to \tweak self-alignment-X #-0.5 what we \tweak self-alignment-X #LEFT "say:"
  Je -- sus \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #LEFT "day."
  \tweak self-alignment-X #LEFT Ox and \tweak self-alignment-X #-0.5 lamb be -- \tweak self-alignment-X #-0.5 fore him \tweak self-alignment-X #-0.5 "bow,"
  and \tweak self-alignment-X #LEFT he is in the \tweak self-alignment-X #-0.5 man -- ger \tweak self-alignment-X #LEFT "now."
  \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to -- "day! " __
  \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to -- "day! " __\skip1

  \tweak self-alignment-X #0.5 Now ye \tweak self-alignment-X #-0.5 hear of
  end -- less \tweak self-alignment-X #LEFT "bliss;"
  Je -- sus \tweak self-alignment-X #-0.5 Christ was \tweak self-alignment-X #-0.5 born for \tweak self-alignment-X #LEFT "this."
  \tweak self-alignment-X #LEFT He has o -- \tweak self-alignment-X #0.5 pened \tweak self-alignment-X #-0.5 hea -- \tweak self-alignment-X #0.5 "ven's" \tweak self-alignment-X #-0.5 "door,"
  \tweak self-alignment-X #0.2 and we \tweak self-alignment-X #0.5 are \tweak self-alignment-X #-0.5 blest for -- \tweak self-alignment-X #LEFT ev -- er \tweak self-alignment-X #LEFT "more."
  \tweak self-alignment-X #-0.5 Christ was \tweak self-alignment-X #-0.5 born for \tweak self-alignment-X #-0.5 this! (for \tweak self-alignment-X #LEFT this!)
  \tweak self-alignment-X #0.5 Christ \tweak self-alignment-X #LEFT was \tweak self-alignment-X #LEFT born for \tweak self-alignment-X #LEFT this! __ \skip1

  \tweak self-alignment-X #0.6 Good

  Now ye \tweak self-alignment-X #-0.5 need not fear the \tweak self-alignment-X #LEFT "grave;"
  Je -- sus \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #LEFT "save;"
  \tweak self-alignment-X #-0.5 calls you \tweak self-alignment-X #-0.5 one and \tweak self-alignment-X #-0.5 calls you \tweak self-alignment-X #LEFT all
  to \tweak self-alignment-X #-0.5 gain his \tweak self-alignment-X #LEFT ev -- er -- \tweak self-alignment-X #-0.5 last -- ing \tweak self-alignment-X #LEFT "hall."
  \tweak self-alignment-X #-0.5 Christ was \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #LEFT save! __
  \tweak self-alignment-X #-0.5 Christ was \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #LEFT save! __
  Chrost \tweak self-alignment-X #LEFT was \tweak self-alignment-X #LEFT born \tweak self-alignment-X #LEFT to \tweak self-alignment-X #LEFT save! __ \skip1
  \tweak self-alignment-X #0.5 Christ is \tweak self-alignment-X #-0.5 born to -- \tweak self-alignment-X #LEFT day! __ \skip1
  \tweak self-alignment-X #0.5 Christ \tweak self-alignment-X #LEFT is \tweak self-alignment-X #LEFT born \tweak self-alignment-X #LEFT to -- \tweak self-alignment-X #LEFT day, __ \skip1
  born \tweak self-alignment-X #LEFT to -- \tweak self-alignment-X #LEFT day! __ \skip1
}

BassTwoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \tweak self-alignment-X #0.3 Christ is \tweak self-alignment-X #LEFT born to -- "day! " __ \skip1
  Christ is born to -- "day! " __ \skip1

  \tweak self-alignment-X #-0.5 Give ye \tweak self-alignment-X #-0.5 heed to \tweak self-alignment-X #-0.5 what we \tweak self-alignment-X #LEFT "say:"
  Je -- sus \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #LEFT "day."
  \tweak self-alignment-X #LEFT Ox and \tweak self-alignment-X #-0.5 lamb be -- \tweak self-alignment-X #-0.5 fore him \tweak self-alignment-X #-0.5 "bow,"
  and \tweak self-alignment-X #LEFT he is in the \tweak self-alignment-X #-0.5 man -- ger \tweak self-alignment-X #LEFT "now."
  \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to -- "day! " __\skip1
  \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to -- "day! " __\skip1

  \tweak self-alignment-X #0.5 Good \tweak self-alignment-X #-0.4 Chris -- tian \tweak self-alignment-X #-0.5 "friends,"
  re -- \tweak self-alignment-X #LEFT "joice " __\skip1 \skip1
  with \tweak self-alignment-X #-0.5 heart and \tweak self-alignment-X #-0.4 soul and \tweak self-alignment-X #LEFT "voice! " __\skip1\skip1
  \tweak self-alignment-X #-0.5 Now ye \tweak self-alignment-X #-0.5 hear of
  end -- less \tweak self-alignment-X #LEFT "bliss;"
  Je -- sus \tweak self-alignment-X #-0.5 Christ was \tweak self-alignment-X #-0.5 born for \tweak self-alignment-X #LEFT "this."
  He has o -- \tweak self-alignment-X #0.5 pened \tweak self-alignment-X #-0.5 hea -- \tweak self-alignment-X #0.5 "ven's" \tweak self-alignment-X #-0.5 "door,"
  \tweak self-alignment-X #0.2 and we \tweak self-alignment-X #0.5 are \tweak self-alignment-X #-0.5 blest for -- \tweak self-alignment-X #LEFT ev -- er \tweak self-alignment-X #LEFT "more."
  \tweak self-alignment-X #-0.5 Christ was \tweak self-alignment-X #-0.5 born for \tweak self-alignment-X #-0.5 this, for \tweak self-alignment-X #LEFT this!
  \tweak self-alignment-X #0.5 Christ \tweak self-alignment-X #LEFT was \tweak self-alignment-X #LEFT born for \tweak self-alignment-X #LEFT this! __ \skip1

  \tweak self-alignment-X #0.6 Good
  \tweak self-alignment-X #-0.4 Chris -- tian \tweak self-alignment-X #-0.5 "friends,"
  re -- \tweak self-alignment-X #LEFT "joice " __\skip1 \skip1
  with \tweak self-alignment-X #-0.5 heart and \tweak self-alignment-X #-0.4 soul and \tweak self-alignment-X #LEFT "voice! " __\skip1\skip1

  Now ye \tweak self-alignment-X #-0.5 need not fear the \tweak self-alignment-X #LEFT "grave;"
  Je -- sus \tweak self-alignment-X #-0.5 Christ is \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #LEFT "save;"
  \tweak self-alignment-X #0.5 calls you \tweak self-alignment-X #-0.5 one and \tweak self-alignment-X #-0.5 calls you \tweak self-alignment-X #LEFT all
  to \tweak self-alignment-X #-0.5 gain his \tweak self-alignment-X #LEFT ev -- er -- \tweak self-alignment-X #-0.5 last -- ing \tweak self-alignment-X #LEFT "hall."
  \tweak self-alignment-X #0.5 Christ was \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #LEFT save! __
  \tweak self-alignment-X #0.5 Christ was \tweak self-alignment-X #-0.5 born to \tweak self-alignment-X #-0.5 save, to \tweak self-alignment-X #LEFT save!
  Chrost \tweak self-alignment-X #LEFT was \tweak self-alignment-X #LEFT born \skip1 \tweak self-alignment-X #LEFT to \tweak self-alignment-X #LEFT save! __ \skip1
  \tweak self-alignment-X #0.5 Christ is \tweak self-alignment-X #-0.5 born to -- \tweak self-alignment-X #LEFT day! __ \skip1
  \tweak self-alignment-X #0.5 Christ \tweak self-alignment-X #LEFT is \tweak self-alignment-X #LEFT born \tweak self-alignment-X #LEFT to -- \tweak self-alignment-X #LEFT day, __ \skip1
  born \tweak self-alignment-X #LEFT to -- \tweak self-alignment-X #LEFT day! __ \skip1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  indent = 9\mm
  short-indent = 9\mm
  ragged-last = ##f
  oddFooterMarkup = \markup \with-color #footer-text-color {
    \override #'(baseline-skip . 3.2)
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \if \on-first-page-of-part
        \abs-fontsize #9.5 \fromproperty #'header:copyright
      }
      \fill-line {
        \if \on-last-page-of-part
        \abs-fontsize #9.5 \fromproperty #'header:tagline
      }
      \fill-line {
        \draw-hline
      }
      \abs-fontsize #9 \fill-line {
        \line {
          \hspace #1.3
          \italic \fromproperty #'header:footer-title
        }
        \null
        \line {
          \if \should-print-page-number
          \concat {
            \fromproperty #'page:page-number-string
            "/"
            \page-ref #'lastPage "0" "?"
          }
          \hspace #1.3
        }
      }
    }
  }
}

SolmisasiLayout = \layout {
  \context {
    \Score
    \remove Bar_number_engraver
    \omit SystemStartBar
    \override SystemStartBracket.padding = #5
    \override SystemStartBracket.direction = #LEFT
    %\override BarNumber.X-offset = #-4
    \override SectionLabel.font-size = #0.5
    \override TextSpanner.dash-fraction = #0.4
    \override TextSpanner.dash-period = #1.5

    %rehearsalMarkBackgroundColor = "#DEEBF6"
    rehearsalMarkBackgroundColor = "#ffffff"
  }
  \context {
    \SolmisasiChoirStaff
    \consists Bar_number_engraver
    \override BarNumber.extra-offset = #'(-3.6 . 0.4)
  }
  \context {
    \SolmisasiGlobalStaff
    \override SolmisasiKeyChangeMark.font-size = #0.5
    \override SolmisasiKeyChangeMark.background-color = "#ffffff"
  }
  \context {
    \SolmisasiStaff

    \override InstrumentName.font-size = #0
    \override InstrumentName.X-offset = #-3.8

    \override SolmisasiNoteHead.font-size = #0
    \override SolmisasiNoteHead.font-family = #'solmisasi
    \override SolmisasiRest.font-size = #0
    \override SolmisasiRest.font-family = #'solmisasi

    \override SolmisasiEquivalenceNoteText.background-color = "#ffffff"
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #0.3
  }
  \context {
    \ChordNames
    \consists #Bass_changes_equal_root_engraver

    \override ChordName.fonts.sans = "Roboto"
    \override ChordName.font-family = #'sans
    \override ChordName.font-size = #-0.5

    chordNoteNamer = #JazzChordNames
    chordRootNamer = #JazzChordNames	% update the chord names
    chordNameExceptions = #JazzChords	% update the chord exceptions
    chordChanges = ##t
  }
}

\include "choir.ily"