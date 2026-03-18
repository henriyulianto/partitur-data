% TMK_01_ly_main.ly
% -*- master: TMK_06.ly;
\include "../TMK_video.ily"

Global = {
  \TMK_Global
  %\disallowPageBreak

  % Blok G2
  \disallowLineBreak
  s1*5 |
}

SopranoInstrumentName = "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C2
  fis''1*5/8 r8 dis''8 -\mp fis''8 | % 33
  fis''8 e''8 e''2 cis''8 gis''8 | % 34
  gis''8 \( fis''8 \) fis''4. r8 dis''8\< fis''8 | % 35
  fis''8 \( e''8 \) gis''4.\! ais''8 b''8 cis'''8 | % 36
  cis'''8 b''8 b''4. dis'''8 -\mf cis'''8 b''8 |
}

AltoInstrumentName = "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C2
  fis''1*5/8 r8 bis'8 dis''8 \spanBarOff | % 33
  dis''8 cis''8 cis''2 cis''8 e''8 | % 34
  e''8 \( dis''8 \) dis''4. r8 bis'8 dis''8 | % 35
  dis''8 \( cis''8 \) e''4. e''8 fis''8 gis''8 | % 36
  gis''8 fis''8 fis''2 r4
}

TenorInstrumentName = "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C2
  fis'1*5/8 r8 r4 | % 33
  r4 gis'8 -\mp b'8 b'8 ais'8 ais'4 | % 34
  r8 dis''8 dis''8 cis''8 bis'4 gis'8\<  gis'8 | % 35
  \after 4 \! gis'4. ( b'!8 ) cis''8 cis''8 dis''8  e''8 | % 36
  e''8 dis''8 dis''4. fis''8-\mf e''8 dis''8
}

BassInstrumentName = "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok C2
  fis'1*5/8 r8 r4 | % 33
  r4 e'8 gis'8 gis'8 fis'8 fis'4 | % 34
  r8 b'8 b'8 ais'8 gis'8 ( fis'8 ) e'8 dis'8 | % 35
  cis'4 ( dis'8 e'8 ) fis'8 fis'8 fis'8 fis'8 | % 36
  b8 b8 b2 r4
}

AltoLyrics = \lyricmode {
  a.
  \markup\undertie "Kau" yang se -- ti -- a se -- la -- \tweak X-offset #0 ma -- \skip1 nya,
  ka -- mi \tweak X-offset #0 sem -- \skip1 bah de -- ngan su -- ka -- ci --
  \markup {
    \concat {
      "ta. "
      \with-dimensions-from\null "Al-le-lu-"
    }
  }
}

BassLyrics = \lyricmode {
  a,
  \markup\undertie "Kau" yang se -- ti -- a se -- la -- ma -- nya,
  ka -- mi sem -- bah de -- ngan su -- ka -- ci --
  \markup {
    \concat {
      "ta. "
      \with-dimensions-from\null "Al-le-lu-"
    }
  }
}

% Chords
Chords = \chordmode {
  \set chordChanges = ##f

  \omit BarLine

  % Blok C2
  dis2:m gis2:7 |
  cis2:m fis2:7 |
  b2 gis2:7 |
  cis2:m fis2:7 |
  b1 |
}