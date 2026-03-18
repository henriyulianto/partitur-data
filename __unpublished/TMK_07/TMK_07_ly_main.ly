% TMK_01_ly_main.ly
% -*- master: TMK_07.ly;
\include "../TMK_video.ily"

\defineBarLine ".|:" #'(#f #t #f)

Global = {
  \TMK_Global
  \disallowPageBreak

  % Blok G2
  \disallowLineBreak
  \set Score.rehearsalMark = 8
  % Blok H
  \override Score.RehearsalMark.X-offset = #-3.7
  \override Score.RehearsalMark.padding = #-2
  \mark\default
  \bar ".|:"
  \repeat volta 2 {
    \after 1*4 \break s1*7
    \alternative {
      \volta 1 { s1 \noBreak }
      \volta 2 { s2 }
    }
  }
}

SopranoInstrumentName = "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok H
  \repeat volta 2 {
    gis''1*5/8 \< gis''8 \! b''8 gis''8 | % 74
    dis'''8 ( \after 1*9/16 \! cis'''1*5/8 ) -\> \breathe ais''8 gis''8 | % 75
    fis''2 fis''8 fis''8 cis'''8 ais''8 | % 76
    cis'''8 b''4. r8 b''8 gis''8 fis''8 | % 77
    \after 2 \< e''1*5/8 e''8 gis''8 dis'''8\! | % 78
    dis'''8 ( cis'''4. ) r8 ais''8 ais''8 b''8 | % 79
    cis'''2
    \override TupletBracket.padding = #0.5
    \tuplet 3/2 {
      dis'''4 cis'''4 b''4
    }
    \alternative {
      % volta 1
      \volta 1 {
        b''2 r8 dis'''8 -\tweak Y-offset #-1.0 -\mf cis'''8 b''8 |
      }
      % volta 2
      \volta 2 {
        b''2
      }
    }
  }
}

AltoInstrumentName = "T."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok H
  \spanBarOn
  \repeat volta 2 {
    b''1*5/8 b''8 e'''8 e'''8 \spanBarOff | % 74
    fis'''2. \breathe cis'''8 b''8 | % 75
    ais''2 ais''8 ais''8 ais''8 dis'''8 | % 76
    cis'''8 dis'''4. r8 dis'''8 b''8 ais''8 \spanBarOn | % 77
    gis''1*5/8 gis''8 b''8 dis'''8 \spanBarOff | % 78
    fis'''2 r8 cis'''8 cis'''8 dis'''8 | % 79
    e'''2
    \override TupletBracket.padding = #0.5
    \tuplet 3/2 {
      dis'''4 cis'''4 e'''4
    }
    \alternative {
      % volta 1
      \volta 1 {
        dis'''2 r8 fis'''8 e'''8 dis'''8 \spanBarOn |
      }
      % volta 2
      \volta 2 {
        dis'''2
      }
    }
  }
}

TenorInstrumentName = "A."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok H
  \repeat volta 2 {
    b4 b8 b8 e'2 | % 74
    fis'4 fis'8  gis'8 ais'4 \breathe fis'8 e'8 | % 75
    dis'2 cis'8 dis'8 dis'8 dis'8 | % 76
    e'8 dis'1*5/8 r4 | % 77
    e'4 e'8 fis'8 gis'2 | % 78
    ais'4 ais'8 gis'8 fis'8 ais'8 ais'8 fis'8 | % 79
    gis'2
    \override TupletBracket.padding = #0.5
    \tuplet 3/2 {
      b'4 ais'4 gis'4
    }
    \alternative {
      \volta 1 {
        fis'2. r4
      }
      \volta 2 {
        fis'2
      }
    }
  }
}

BassInstrumentName = "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \time 4/4
  \key b \major

  % Blok H
  \repeat volta 2 {
    e'4 e'8 fis'8 gis'2 | % 74
    ais'4 ais'8  b'8 cis''4 \breathe fis'8 e'8 | % 75
    dis'2 dis'8 dis'8 fis'8 ais'8 | % 76
    gis'8 gis'1*5/8 r4 | % 77
    cis'4 cis'8 dis'8 e'2 | % 78
    fis'4 fis'8 gis'8 fis'8 fis'8 cis'8 dis'8 | % 79
    e'2
    \override TupletBracket.padding = #0.3
    \override TupletBracket.staff-padding = #0
    \tuplet 3/2 {
      fis'4 fis'4 fis'4
    }
    \alternative {
      \volta 1 {
        b2. r4
      }
      \volta 2 {
        b2
      }
    }
  }
}

AltoLyrics = \lyricmode {
  ya, al -- le -- lu -- ya,
  ka -- sih -- Mu tak ber -- ke -- su -- dah -- an.
  Al -- le -- lu -- ya, al -- le -- lu -- ya,
  ke -- mu -- \markup\undertie "lia" -- an ba -- gi Tu -- han.
  Al -- le -- "lu-"

  han.
}

BassLyrics = \lyricmode {
  Al -- le -- lu -- ya, al -- le -- lu -- ya,
  ka -- sih -- Mu tak ber -- ke -- su -- dah -- an.
  Al -- le -- lu -- ya, al -- le -- lu -- ya,
  ke -- mu -- \markup\undertie "lia" -- an ba -- gi Tu -- han.

  han.
}

% Chords
Chords = \chordmode {
  \set chordChanges = ##f
  %\temporary \override ChordName.Y-offset = #-1
  \tweak X-offset #-2 e1 fis dis:m fis:m
  \temporary \override ChordName.Y-offset = #0
  cis1:m fis e2:6 fis2
  % Volta 1
  b1
  % Volta 2
  b2
}