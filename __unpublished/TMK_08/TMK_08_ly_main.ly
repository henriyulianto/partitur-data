% TMK_01_ly_main.ly
% -*- master: TMK_08.ly;
\include "../TMK_video.ily"

\defineBarLine ".|:" #'(#f #t #f)

Global = {
  \TMK_Global
  \disallowPageBreak

  % Blok G2
  \disallowLineBreak
  \set Score.proportionalNotationDuration = #3/2
  s2
  \unset Score.proportionalNotationDuration
  s2 |
  \after 1*0 \set Score.proportionalNotationDuration = #1/2
  \after 1*3/4 \unset Score.proportionalNotationDuration
  \after 1*5/4 \set Score.proportionalNotationDuration = #2/5
  \after 1*2 \set Score.proportionalNotationDuration = #1/3
  \after 1*5/2 \unset Score.proportionalNotationDuration
  \after 1*3 \set Score.proportionalNotationDuration = #3/5
  \after 1*4 \set Score.proportionalNotationDuration = #3/7
  \after 1*5 \set Score.proportionalNotationDuration = #1/2
  s1*7 \bar "|."
}

SopranoInstrumentName = "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  s2 r8 gis''8 gis''8 ais''8 |
  % Blok I
  b''2. b''8 \( gis''8 \) | % 83
  dis'''8 \( cis'''2 \) ais''8 ais''8 b''8 | % 84
  cis'''2 \tuplet 3/2 {
    dis'''4 cis'''4 b''4
  }
  | % 85
  b''1 | % 86
  r4 b''4 cis'''4 e'''4 | % 87
  <dis''' fis'''>1 | % 88
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  dis'''4 r2.
}

AltoInstrumentName = "T."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  s2 r8 gis''8 gis''8 ais''8 \spanBarOff |
  % Blok I
  b''2. b''8 \( gis''8 \) | % 83
  dis'''8 \( cis'''2 \) cis'''8 cis'''8 dis'''8 | % 84
  e'''2 \tuplet 3/2 {
    dis'''4 cis'''4 e'''4
  }
  | % 85
  dis'''1 \spanBarOn | % 86
  r4 e'''4 e'''4 e'''4 \spanBarOff | % 87
  <cis''' dis'''>1 \spanBarOn | % 88
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  cis'''4 r2.
}

TenorInstrumentName = "A."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \time 4/4
  \key b \major

  s2 r8 gis'8 gis'8 ais'8  % 82
  b'2. b'8 \( gis'8 \) | % 83
  dis''8 \( cis''2 \) ais'8 ais'8 fis'8 | % 84
  gis'2 \tuplet 3/2 {
    b'4 ais'4 gis'4
  }
  | % 85
  fis'1 | % 86
  r4 fisis'4 fisis'4 a'4 | % 87
  <fis' b'>1 | % 88
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  fis'4 r2.
}

BassInstrumentName = "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \time 4/4
  \key b \major

  s2 r8 gis'8 gis'8 ais'8 % 82
  b'2. b'8 \( gis'8 \) | % 83
  dis''8 \( cis''2 \) fis'8 cis'8 dis'8 | % 84
  e'2 \tuplet 3/2 {
    fis'4 fis'4 fis'4
  }
  | % 85
  b1 | % 86
  r4 b4 b4 b4 | % 87
  <b b'>1 | % 88
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  b4 r2.
}

AltoLyrics = \lyricmode {
  Tu -- han Ma -- ha \tweak X-offset #0 Ka -- \skip1 \tweak X-offset #0 sih,\skip1
  ka -- mi pu -- ji se -- la -- ma -- nya.
  Al -- le -- lu -- ya!
}

BassLyrics = \lyricmode {
  \AltoLyrics
}

% Chords
Chords = \chordmode {
  \set chordChanges = ##f
  \override ChordName.extra-offset = #'(0 . -1)
  s2 gis2:m
  cis1:m7 fis e2:6 fis2
  b1 e:m b:3.5.9 s1
}