% TMK_01_ly_main.ly
% -*- master: TMK_04.ly;
\include "../TMK_video.ily"

Global = {
  \TMK_Global
  \disallowPageBreak

  \set Score.rehearsalMark = 5
  % Blok E
  \temporary \override Score.RehearsalMark.X-offset = #-2.0
  \mark \default
  s1*4 |
  \after 1*2 \set Score.proportionalNotationDuration = #1/3
  \after 1*3 \set Score.proportionalNotationDuration = #1/2
  \after 1*4 \unset Score.proportionalNotationDuration
  s1*4 \bar "||"  |

  % Blok F
  \revert Score.RehearsalMark.X-offset
  \temporary \override Score.RehearsalMark.X-offset = #1.2
  \temporary \override Score.RehearsalMark.Y-offset = #-0.0
  \mark \default
  \after 1 \set Score.proportionalNotationDuration = #1/3
  \after 1*2 \unset Score.proportionalNotationDuration
  \after 1*3 \set Score.proportionalNotationDuration = #1/2
  \after 1*15/4 {
    \unset Score.proportionalNotationDuration
    \break
  }
  s1*4 |
  \after 1*3 \set Score.proportionalNotationDuration = #1/2
  \after 1*4 \unset Score.proportionalNotationDuration
  s1*4 \bar "||" \break|
}

SoloInstrumentName = "A."
SoloShortInstrumentName = \SoloInstrumentName
SoloMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major
  %   \partial 2 s2 | % 1
  %   s1*10 |

  % Blok A
  cis''4 ( -\tweak extra-offset #'(0 . -1)-\mp b'8 ) dis''2 dis''8 | % 12
  dis''4 e''8 cis''1*5/8 | % 13
  r4 ais'8 b'8 cis''4. fis''8 | % 14
  fis''8 dis''1*5/8 r8 dis''16 e''16 | % 15
  fis''2\< fis''4. fis''8 \!| % 16
  fis''8\> \( e''8 \) \after 4. \! gis'2 r8 gis''8 | % 17
  fis''4. cis''8 fis''4. e''8 | % 18
  %\override TextSpanner.extra-offset = #'(0 . -0.3)
  \override TextSpanner.to-barline = ##t
  \override TextSpanner.bound-details.left.text = "rit. "
  dis''2.\startTextSpan r4 s1*0\stopTextSpan | % 19

  % Blok B: Bass
  \once\override Staff.TimeSignature.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup\normalsize\bold\lower #1.0 "B. " #}))
  \time 4/4
  cis''4 -\tweak extra-offset #'(0 . -0.5)-\tweak self-alignment-X #-0.6 -\dynamicWithText "mp" \markup\larger"a tempo" b'8 dis''2 dis''8 | % 20
  cis''4 fis''8 fis''1*5/8 | % 21
  r4 e''8\( dis''8\) cis''8 dis''16 e''1*3/16 ais''8 | % 22
  fis''2.
}

TenorInstrumentName = "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \time 4/4
  \key b \major
  %   \partial 2 s2 | % 1
  %   s1*10 |

  % Blok A
  s1*8 |

  % Blok B
  s1*3 r2.. dis'16\( \< e'16\) \spanBarOff | % 23
  \after 4. \! fis'2 \after 8 \> fisis'4 dis''8 cis''8 | % 24
  \after 32 \! cis''8 b'8 gis'!2 r8 gis'8 | % 25
  fis'4. fis'8 dis''4. cis''8 | % 26
  \override TextSpanner.extra-offset = #'(0 . -0.3)
  \override TextSpanner.to-barline = ##t
  \override TextSpanner.bound-details.left.text = "rit. "
  b'2.\startTextSpan r4 s1*0\stopTextSpan \spanBarOn | % 27
}

BassInstrumentName = "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \time 4/4
  \key b \major
  %   \partial 2 s2 | % 1
  %   s1*10 |

  % Blok A
  s1*8 |

  s1*3 s2. r4 | % 23
  fis'4 fis'4 fisis'4 fisis'4 | % 24
  gis'!4 e'8 dis'8 e'4 r8 e'8 | % 25
  dis'4. e'8 fis'4. fis'8 | % 26
  b2. r4 | % 27
}

AltoLyricsBlokE = \lyricmode {
  Ta -- ngan -- Mu yang ku -- at
  me -- no -- pang yang le -- mah.
  Ka -- sih -- Mu sa -- ngat \tweak X-offset #0 te -- \skip1 guh
  \tweak X-offset #-2.5 meng -- ha -- \tweak X-offset #-2 pus -- kan re -- sah.
}

SoloLyricsOne = \lyricmode {
  \AltoLyricsBlokE
  Ti -- a -- da yang se -- \tweak X-offset #-1.7 ban -- ding
  \tweak X-offset #0 cin -- \skip1 ta -- \tweak X-offset #-0.5 Mu sem -- pur -- na.
}

TenorLyricsOne = \lyricmode {
  Eng -- \skip1 \markup\undertie "kau" Ba -- pa yang se -- ti -- a,
  te -- rang ba -- gi du -- \markup\concat { \undertie "nia" "." }
}

BassLyricsBlokF = \lyricmode {
  Eng -- \markup\undertie "kau" Ba -- pa \tweak X-offset #-0.3 yang se -- ti -- a,
  te -- rang ba -- gi du -- \markup\concat { \undertie "nia" "." }
}

BassLyricsOne = \lyricmode {
  \BassLyricsBlokF
}

% Chords
Chords = \chordmode {
  \set chordChanges = ##f

  \omit BarLine

  % Blok A
  %\temporary \override ChordName.extra-offset = #'(0 . -0.8)
  b1 |
  cis1:m |
  fis1 |
  b1 |
  %\revert ChordName.extra-offset
  q2 b2:7/dis |
  e1 |
  fis1 |
  b2 \tweak X-offset #-0.5 cis4:m fis4 |

  % Blok B
  %\temporary \override ChordName.extra-offset = #'(0 . -0.8)
  b1
  dis1:m |
  e2 fis2 |
  b1 |
  q2 dis2 |
  e2 cis2:m |
  b2:/dis fis2 |
  b2 fis2:7 |
}