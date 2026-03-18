% TMK_01_ly_main.ly
% -*- master: TMK_02.ly;
\include "../TMK_video.ily"

Global = {
  \TMK_Global
  %\disallowPageBreak

  \set Score.rehearsalMark = 3
  % Blok C
  \override Score.RehearsalMark.X-offset = #-3.7
  \override Score.RehearsalMark.extra-offset = #'(0 . 4)
  \mark\default
  s1*5 |
  \tag#'solmisasi { s4 }
  % s1*5 \bar "||" \break
}

SopranoInstrumentName = "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C
  b''4-\tweak Y-offset #-1.5 -\tweak self-alignment-X #-0.6 -\dynamicWithText "mf" \markup\larger"a tempo" fis''4 cis'''4. ( dis'''8 ) \spanBarOff | % 28
  dis'''1*5/8 r8 b''8 \( cis'''8 \) | % 29
  dis'''2 gis''4 ( b''4 ) | % 30
  cis'''1*5/8 r8 b''8 ais''8 | % 31
  gis''4. gis''8 gis''8 ais''8 b''8 gis''8 \spanBarOn | % 32
  % fis''1*5/8 r8 dis''8 -\mp fis''8 | % 33
  %   fis''8 e''8 e''2 cis''8 gis''8 | % 34
  %   gis''8 ( fis''8 ) fis''4. r8 dis''8\< fis''8 | % 35
  %   fis''8 ( e''8 ) gis''4.\! ais''8 b''8 cis'''8 | % 36
  %   cis'''8 b''8 b''2. \spanBarOn |
}

AltoInstrumentName = "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C
  dis''4 ( cis''8 b'8 ) cis''4 ( e''4 ) \spanBarOff | % 28
  dis''8 dis''8 fis''8 \( e''8 \) dis''4. r8 | % 29
  dis''4. ( fis''8 ) gis''2 | % 30
  cis''8 cis''8 dis''8 \( eis''8 \) fis''4 b''8 ais''8 | % 31
  gis''4. gis''8 gis''8 ais''8 b''8 gis''8 \spanBarOn | % 32
  % fis''1*5/8 r8 bis'8 dis''8 \spanBarOff | % 33
  %   dis''8 cis''8 cis''2 cis''8 e''8 | % 34
  %   e''8 ( dis''8 ) dis''4. r8 bis'8 dis''8 | % 35
  %   dis''8 ( cis''8 ) e''4. e''8 fis''8 gis''8 | % 36
  %   gis''8 fis''8 fis''2. \spanBarOn | % 37
}

TenorInstrumentName = "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C
  b'2 ais'8 ( b'8 cis''8 ) ais'8 \spanBarOff | % 28
  b'1*5/8 r8 b'8 \( ais'8 \) | % 29
  b'2 b'8 ( cis''8 dis''8 b'8 ) | % 30
  cis''1*5/8 r8 b'8 ais'8 | % 31
  gis'4. gis'8 gis'8 ais'8 b'8 gis'8 \spanBarOn | % 32
  % fis'1*5/8 r8 r4 | % 33
  %   r4 gis'8 b'8 b'8 ais'8 ais'4 | % 34
  %   r8 dis''8 dis''8 cis''8 bis'4 gis'8 gis'8 | % 35
  %   gis'4. ( b'!8 ) cis''8 cis''8 dis''8  e''8 | % 36
  %   e''8 dis''8 dis''2. | % 37
}

BassInstrumentName = "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C
  b'4 ( ais'8 gis'8 ) fis'2 | % 28
  b'4 ais'8 gis'8 fis'4. r8 | % 29
  gis'4. ( fis'8 ) eis'2 | % 30
  fis'8 eis'8 fis'8 \( gis'8 \) ais'4 b'8 ais'8 | % 31
  gis'4. gis'8 gis'8 ais'8 b'8 gis'8 | % 32
  % fis'1*5/8 r8 r4 | % 33
  %   r4 e'8 gis'8 gis'8 fis'8 fis'4 | % 34
  %   r8 b'8 b'8 ais'8 gis'8 ( fis'8 ) e'8 dis'8 | % 35
  %   cis'4 ( dis'8 e'8 ) fis'8 fis'8 fis'8 fis'8 | % 36
  %   b8 b8 b2. | % 37
}

SopranoLyrics = \lyricmode {
  \tweak X-offset #0 Pu -- ji Tu -- han \tweak X-offset #0 Ma -- \skip1 ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- \tweak X-offset #0 li-
}

AltoLyrics = \lyricmode {
  Pu -- ji, pu -- ji \tweak X-offset #0 Tu -- \skip1 han
  Al -- lah Ma -- ha \tweak X-offset #0 Ka -- \skip1 sih,
  na -- ma -- Mu ku -- dus dan mu -- \tweak X-offset #0 li- % a,
  %   \markup\undertie "Kau" yang se -- ti -- a se -- la -- ma -- nya,
  %   ka -- mi sem -- bah de -- ngan su -- ka -- ci -- ta.
}

TenorLyrics = \lyricmode {
  Pu -- ji Tu -- han \tweak X-offset #0 Ma -- \skip1 ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- \tweak X-offset #0 li-
}

BassLyrics = \lyricmode {
  Pu -- ji, pu -- ji Tu -- han
  Al -- lah Ma -- ha \tweak X-offset #0 Ka -- \skip1 sih,
  na -- ma -- Mu ku -- dus dan mu -- \tweak X-offset #0 li- % a,
  % \markup\undertie "Kau" yang se -- ti -- a se -- la -- ma -- nya,
  %   ka -- mi sem -- bah de -- ngan su -- ka -- ci -- ta.
}

% Chords
Chords = \chordmode {
  \set chordChanges = ##f

  \omit BarLine

  % Blok C
  b2 fis2 |
  b1 |
  gis2:m cis2 |
  fis2. b4/dis |
  e1 |
  % dis2:m gis2:7 |
  %   cis2:m fis2:7 |
  %   b2 gis2:7 |
  %   cis2:m fis2:7 |
  %   b1 |
}