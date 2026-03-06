% Tuhan_Maha_Kasih_ly_main.ly
% -*- master: Tuhan_Maha_Kasih.ly;

% SETTINGS
SolmisasiStaffSize = 22
MIDIExtension = "midi"
ExportMIDI = ##t

% Global

Global = {
  \once\omit SolmisasiKeyChangeMark
  \override Score.Beam.extra-offset = #'(0 . -0.3)
  \disallowPageBreak
  \numericTimeSignature
  \time 4/4
  \set Score.beamExceptions = #'()
  \set Score.beatBase = #1/4
  \set Score.beatStructure = 1,1,1,1
  \key b \major
  \once\omit Score.MetronomeMark
  \tempo 4 = 66

  % Ibtro
  %   \mark "" \markup\bold\smallCaps\smaller "Intro:"
  %   \partial 2
  %   s2 |
  %   s1*4 \break |
  %   s1*4 |
  %   \set Score.proportionalNotationDuration = #1/2
  %   s1*2 \break |
  %   \unset Score.proportionalNotationDuration

  % Blok A
  \temporary \override Score.RehearsalMark.X-offset = #-2.5
  \mark\default
  \after 1*15/4 \break s1*4 |
  \after 1*3 \set Score.proportionalNotationDuration = #1/2
  \after 1*4 \unset Score.proportionalNotationDuration
  s1*4 \bar "||" \break |

  % Blok B
  \mark\default
  \after 1*3 \set Score.proportionalNotationDuration = #1/3
  \after 1*15/4 {
    \unset Score.proportionalNotationDuration
    \break
  }
  s1*4 |
  \after 1*3 \set Score.proportionalNotationDuration = #1/2
  \after 1*4 \unset Score.proportionalNotationDuration
  s1*4 \bar "||" \break |

  % Blok C
  \once\override Score.RehearsalMark.extra-offset = #'(0 . -2)
  \mark\default
  s1*5 \pageBreakPDFOnly |
  s1*5 \bar "||" \break

  % Blok D
  \mark "Interlude" \default
  \disallowLineBreak
  s1*10 \bar "||" \break
  \undo \disallowLineBreak

  % Blok E
  %\override Score.RehearsalMark.X-offset = #-2.5
  \mark\default
  \after 1*15/4 \break s1*4 |
  \after 1*3 \set Score.proportionalNotationDuration = #1/2
  \after 1*4 \unset Score.proportionalNotationDuration
  s1*4 \bar "||" \break |

  % Blok F
  \mark\default
  \after 1*3 \set Score.proportionalNotationDuration = #1/3
  \after 1*15/4 {
    \unset Score.proportionalNotationDuration
    \break
  }
  s1*4 |
  \after 1*3 \set Score.proportionalNotationDuration = #1/2
  \after 1*4 \unset Score.proportionalNotationDuration
  s1*4 \bar "||" \pageBreakPDFOnly

  % Blok G
  \override Score.RehearsalMark.extra-offset = #'(0 . -2)
  \mark\default
  s1*5 \break |
  \after 1*9/2 {
    \break
  }
  s1*5 |

  % Blok H
  \revert Score.RehearsalMark.X-offset
  \mark\default
  \repeat volta 2 {
    \after 1*4 \pageBreakPDFOnly s1*7
    \alternative {
      \volta 1 { s1 \noBreak }
      \volta 2 { s1 \break }
    }
  }
  %   \after 1*3 \set Score.proportionalNotationDuration = #1/2
  %   \after 1*4 \unset Score.proportionalNotationDuration
  %   \after 1*5 \set Score.proportionalNotationDuration = #1/2
  s1*7 \bar "|."
}

InstrumentCueInstrumentName = \markup\null
InstrumentCueShortInstrumentName = \markup\null
InstrumentCueMusic = {
  \numericTimeSignature
  \time 4/4
  \key b \major
  % \partial 2 r8 dis''8 fis''8 b''8 | % 1
  %   dis'''2 cis'''8 dis'''8 cis'''8 b''8 | % 2
  %   cis'''2 r8 dis''8 gis''8 ais''8 | % 3
  %   b''2 ais''8 b''8 ais''8 gis''8 | % 4
  %   ais''2 r8 dis'''8 dis'''8 dis'''8 | % 5
  %   cis'''2 cis'''8 e'''8 dis'''8 cis'''8 | % 6
  %   b''2 r8 gis''8 ais''8 b''8 | % 7
  %   fis'''4 e'''4 r8 gis''8 fisis''8 gis''8 | % 8
  %   dis'''4 r4 dis'''4 r4 | % 9
  %   b''1 ( | % 10
  %   b''2.) r4 | % 11

  % Blok A-C
  s1*8 s1*8 s1*10

  % Blok D
  \repeat unfold 8 {
    \temporary\override SolmisasiNoteHead.style = #'slash
    \temporary\override SolmisasiNoteHead.font-size = #-0.5
    \temporary\override SolmisasiNoteHead.font-family = #'music
    \after 4 {
      \revert SolmisasiNoteHead.font-family
      \revert SolmisasiNoteHead.style
      \revert SolmisasiNoteHead.font-size
    }
    e''1
  }
  \repeat unfold 2 {
    \temporary\override SolmisasiNoteHead.style = #'slash
    \temporary\override SolmisasiNoteHead.font-size = #-0.5
    \temporary\override SolmisasiNoteHead.font-family = #'music
    \after 4 {
      \revert SolmisasiNoteHead.font-family
      \revert SolmisasiNoteHead.style
      \revert SolmisasiNoteHead.font-size
    }
    e''2
    \temporary\override SolmisasiNoteHead.style = #'slash
    \temporary\override SolmisasiNoteHead.font-size = #-0.5
    \temporary\override SolmisasiNoteHead.font-family = #'music
    \after 4 {
      \revert SolmisasiNoteHead.font-family
      \revert SolmisasiNoteHead.style
      \revert SolmisasiNoteHead.font-size
    }
    e''2
  }
}

% Vocals

SopranoInstrumentName = "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key b \major
  %   \partial 2 s2 | % 1
  %   s1*10 |

  % Blok A
  s1*8 |

  % Blok B
  s1*8 |

  % Blok C
  b''4-\tweak self-alignment-X #-0.6 -\dynamicWithText "mf" \markup\larger"a tempo" fis''4 cis'''4. ( dis'''8 ) \spanBarOff | % 28
  dis'''1*5/8 r8 b''8 ( cis'''8 ) | % 29
  dis'''2 gis''4 ( b''4 ) | % 30
  cis'''1*5/8 r8 b''8 ais''8 | % 31
  gis''4. gis''8 gis''8 ais''8 b''8 gis''8 \spanBarOn | % 32
  fis''1*5/8 r8 dis''8 -\mp fis''8 | % 33
  fis''8 e''8 e''2 cis''8 gis''8 | % 34
  gis''8 ( fis''8 ) fis''4. r8 dis''8\< fis''8 | % 35
  fis''8 ( e''8 ) gis''4.\! ais''8 b''8 cis'''8 | % 36
  cis'''8 b''8 b''2. \spanBarOn |

  % Blok D, E, F
  s1*10 s1*8 s1*8 |

  % Blok G
  b''4-\tweak self-alignment-X #-0.6 -\dynamicWithText "mf" \markup\larger"a tempo" fis''4 cis'''4. ( dis'''8 ) \spanBarOff | % 28
  dis'''1*5/8 r8 b''8 ( cis'''8 ) | % 29
  dis'''2 gis''4 ( b''4 ) | % 30
  cis'''1*5/8 r8 b''8 ais''8 | % 31
  gis''4. gis''8 gis''8 ais''8 b''8 gis''8 \spanBarOn | % 32
  fis''1*5/8 r8 dis''8 -\mp fis''8  | % 33
  fis''8 e''8 e''2 cis''8 gis''8 | % 34
  gis''8 ( fis''8 ) fis''4. r8 dis''8\< fis''8 | % 35
  fis''8 ( e''8 ) gis''4.\! ais''8 b''8 cis'''8 | % 36
  cis'''8 b''8 b''4( 8)
  -\tweak extra-offset #'(-6.5 . 7.7)
  -\markup\italic \with-dimensions-from \null "Susunan: ST-AB"
  dis'''8 -\mf cis'''8 b''8 |

  % Blok H
  \repeat volta 2 {
    gis''1*5/8 \< gis''8 \! b''8 gis''8 | % 74
    dis'''8 ( cis'''1*5/8 ) -\> \breathe ais''8 \! gis''8 | % 75
    fis''2 fis''8 fis''8 cis'''8 ais''8 | % 76
    cis'''8 b''4. r8 b''8 gis''8 fis''8 | % 77
    \after 2 \< e''1*5/8 e''8 gis''8 dis'''8\! | % 78
    dis'''8 ( cis'''4. ) r8 ais''8 ais''8 b''8 | % 79
    cis'''2 \tuplet 3/2 {
      dis''4 cis'''4 b''4
    }
    \alternative {
      % volta 1
      \volta 1 {
        b''2 r8 dis'''8 -\mf cis'''8 b''8 |
      }
      % volta 2
      \volta 2 {
        b''2 r8 gis''8 gis''8 ais''8 |
      }
    }
  }

  % Blok I
  b''2. b''8 ( gis''8 ) | % 83
  dis'''8 ( cis'''2 ) ais''8 ais''8 b''8 | % 84
  cis'''2 \tuplet 3/2 {
    dis'''4 cis'''4 b''4
  }
  | % 85
  b''1 | % 86
  r4 b''4-\tweak extra-offset #'(0 . -0.5)\f cis'''4 e'''4 | % 87
  <dis''' fis'''>1 | % 88
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  dis'''4 r2.
}

AltoInstrumentName = "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
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
  fis''8\> ( e''8 ) \after 4. \! gis'2 r8 gis''8 | % 17
  fis''4. cis''8 fis''4. e''8 | % 18
  \override TextSpanner.extra-offset = #'(0 . -0.3)
  \override TextSpanner.to-barline = ##t
  \override TextSpanner.bound-details.left.text = "rit. "
  dis''2.\startTextSpan r4 s1*0\stopTextSpan | % 19

  % Blok B
  s1*8 |

  % Blok C
  dis''4 ( cis''8 b'8 ) cis''4 ( e''4 ) \spanBarOff | % 28
  dis''8 dis''8 fis''8 ( e''8 ) dis''4. r8 | % 29
  dis''4. ( fis''8 ) gis''2 | % 30
  cis''8 cis''8 dis''8 ( eis''8 ) fis''4 b''8 ais''8 | % 31
  gis''4. gis''8 gis''8 ais''8 b''8 gis''8 \spanBarOn | % 32
  fis''1*5/8 r8 bis'8 dis''8 \spanBarOff | % 33
  dis''8 cis''8 cis''2 cis''8 e''8 | % 34
  e''8 ( dis''8 ) dis''4. r8 bis'8 dis''8 | % 35
  dis''8 ( cis''8 ) e''4. e''8 fis''8 gis''8 | % 36
  gis''8 fis''8 fis''2. \spanBarOn | % 37

  % Blok D
  s1*10 |

  % Blok E
  % Blok A
  cis''4 ( -\tweak extra-offset #'(0 . -1)-\mp b'8 ) dis''2 dis''8 | % 12
  dis''4 e''8 cis''1*5/8 | % 13
  r4 ais'8 b'8 cis''4. fis''8 | % 14
  fis''8 dis''1*5/8 r8 dis''16 e''16 | % 15
  fis''2\< fis''4. fis''8 \!| % 16
  fis''8\> ( e''8 ) \after 4. \! gis'2 r8 gis''8 | % 17
  fis''4. cis''8 fis''4. e''8 | % 18
  \override TextSpanner.extra-offset = #'(0 . -0.3)
  \override TextSpanner.to-barline = ##t
  \override TextSpanner.bound-details.left.text = "rit. "
  dis''2.\startTextSpan r4 s1*0\stopTextSpan | % 19

  % Blok F
  s1*8 |

  % Blok G
  dis''4 ( cis''8 b'8 ) cis''4 ( e''4 ) \spanBarOff | % 28
  dis''8 dis''8 fis''8 ( e''8 ) dis''4. r8 | % 29
  dis''4. ( fis''8 ) gis''2 | % 30
  cis''8 cis''8 dis''8 ( eis''8 ) fis''4 b''8 ais''8 | % 31
  gis''4. gis''8 gis''8 ais''8 b''8 gis''8 \spanBarOn | % 32
  fis''1*5/8 r8 bis'8 dis''8 \spanBarOff | % 33
  dis''8 cis''8 cis''2 cis''8 e''8 | % 34
  e''8 ( dis''8 ) dis''4. r8 bis'8 dis''8 | % 35
  dis''8 ( cis''8 ) e''4. e''8 fis''8 gis''8 | % 36
  gis''8 fis''8 fis''4 (
  \set Staff.shortInstrumentName = "T."
  \set Staff.maleVocal = ##t
  dis'''8) fis'''8 e'''8 dis'''8 \spanBarOn | % 37

  % Blok H
  \repeat volta 2 {
    b''1*5/8 b''8 e'''8 e'''8 \spanBarOff | % 74
    fis'''2. \breathe cis'''8 b''8 | % 75
    ais''2 ais''8 ais''8 ais''8 dis'''8 | % 76
    cis'''8 dis'''4. r8 dis'''8 b''8 ais''8 \spanBarOn | % 77
    gis''1*5/8 gis''8 b''8 dis'''8 \spanBarOff | % 78
    fis'''2 r8 cis'''8 cis'''8 dis'''8 | % 79
    e'''2 \tuplet 3/2 {
      dis'''4 cis'''4 e'''4
    }
    \alternative {
      % volta 1
      \volta 1 {
        dis'''2 r8 fis'''8 e'''8 dis'''8 \spanBarOn |
      }
      % volta 2
      \volta 2 {
        dis'''2 r8 gis''8 gis''8 ais''8 |
      }
    }
  }

  % Blok I
  b''2. b''8 ( gis''8 ) \spanBarOff | % 83
  dis'''8 ( cis'''2 ) cis'''8 cis'''8 dis'''8 | % 84
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
  s1*3 r2.. dis'16 \< e'16 \spanBarOff | % 23
  \after 4. \! fis'2 \after 8 \> fisis'4 dis''8 cis''8 | % 24
  \after 32 \! cis''8 ( b'8 ) gis'!2 r8 gis'8 | % 25
  fis'8 fis'4 fis'8 dis''4. cis''8 | % 26
  \override TextSpanner.extra-offset = #'(0 . -0.3)
  \override TextSpanner.to-barline = ##t
  \override TextSpanner.bound-details.left.text = "rit. "
  b'2.\startTextSpan r4 s1*0\stopTextSpan \spanBarOn | % 27

  % Blok C
  b'2 ais'8 ( b'8 cis''8 ) ais'8 \spanBarOff | % 28
  b'1*5/8 r8 b'8 ( ais'8 ) | % 29
  b'2 b'8 ( cis''8 dis''8 b'8 ) | % 30
  cis''1*5/8 r8 b'8 ais'8 | % 31
  gis'4. gis'8 gis'8 ais'8 b'8 gis'8 \spanBarOn | % 32
  fis'1*5/8 r8 r4 | % 33
  r4 gis'8 b'8 b'8 ais'8 ais'4 | % 34
  r8 dis''8 dis''8 cis''8 bis'4 gis'8 gis'8 | % 35
  gis'4. ( b'!8 ) cis''8 cis''8 dis''8  e''8 | % 36
  e''8 dis''8 dis''2. | % 37

  % Blok D dan E
  s1*10 s1*8 |

  % Blok F
  s1*3 r2.. dis'16( \< e'16) \spanBarOff | % 23
  \after 4. \! fis'2 \after 8 \> fisis'4 dis''8 cis''8 | % 24
  \after 32 \! cis''8 b'8 gis'!2 r8 gis'8 | % 25
  fis'4. fis'8 dis''4. cis''8 | % 26
  \override TextSpanner.extra-offset = #'(0 . -0.3)
  \override TextSpanner.to-barline = ##t
  \override TextSpanner.bound-details.left.text = "rit. "
  b'2.\startTextSpan r4 s1*0\stopTextSpan \spanBarOn | % 27

  % Blok G
  b'2 ais'8 ( b'8 cis''8 ) ais'8 \spanBarOff | % 28
  b'1*5/8 r8 b'8 ( ais'8 ) | % 29
  b'2 b'8 ( cis''8 dis''8 b'8 ) | % 30
  cis''1*5/8 r8 b'8 ais'8 | % 31
  gis'4. gis'8 gis'8 ais'8 b'8 gis'8 \spanBarOn | % 32
  fis'1*5/8 r8 r4 | % 33
  r4 gis'8 b'8 b'8 ais'8 ais'4 | % 34
  r8 dis''8 dis''8 cis''8 bis'4 gis'8 gis'8 | % 35
  gis'4. ( b'!8 ) cis''8 cis''8 dis''8  e''8 | % 36
  e''8 dis''8 dis''4(
  \set Staff.shortInstrumentName = "A."
  fis'4) r4 | % 37

  % Blok H
  \repeat volta 2 {
    b4 b8 b8 e'2 | % 74
    fis'4 fis'8  gis'8 ais'4 \breathe fis'8 e'8 | % 75
    dis'2 cis'8 dis'8 dis'8 dis'8 | % 76
    e'8 dis'1*5/8 r4 | % 77
    e'4 e'8 fis'8 gis'2 | % 78
    ais'4 ais'8 gis'8 fis'8 ais'8 ais'8 fis'8 | % 79
    gis'2 \tuplet 3/2 {
      b'4 ais'4 gis'4
    }
    \alternative {
      \volta 1 {
        fis'2. r4
      }
      \volta 2 {
        fis'2 r8 gis'8 gis'8 ais'8  % 82
      }
    }
  }
  b'2. b'8 ( gis'8 ) | % 83
  dis''8 ( cis''2 ) ais'8 ais'8 fis'8 | % 84
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
  %   \partial 2 s2 | % 1
  %   s1*10 |

  % Blok A
  s1*8 |

  % Blok B
  cis'4 -\tweak self-alignment-X #-0.6 -\dynamicWithText "mp" \markup\larger"a tempo" b8 dis'2 dis'8 | % 20
  cis'4 ( fis'8 ) fis'1*5/8 | % 21
  r4 e'8 dis'8 cis'8 ( dis'16 ) e'1*3/16 ais'8 | % 22
  fis'2. r4 | % 23
  fis'4 fis'4 fisis'4 fisis'4 | % 24
  gis'!4 e'8 dis'8 e'4 r8 e'8 | % 25
  dis'8 dis'4 e'8 fis'4. fis'8 | % 26
  b2. r4 | % 27

  % Blok C
  b'4 ( ais'8 gis'8 ) fis'2 | % 28
  b'4 ais'8 gis'8 fis'4. r8 | % 29
  gis'4. ( fis'8 ) eis'2 | % 30
  fis'8 eis'8 fis'8 ( gis'8 ) ais'4 b'8 ais'8 | % 31
  gis'4. gis'8 gis'8 ais'8 b'8 gis'8 | % 32
  fis'1*5/8 r8 r4 | % 33
  r4 e'8 gis'8 gis'8 fis'8 fis'4 | % 34
  r8 b'8 b'8 ais'8 gis'8 ( fis'8 ) e'8 dis'8 | % 35
  cis'4 ( dis'8 e'8 ) fis'8 fis'8 fis'8 fis'8 | % 36
  b8 b8 b2. | % 37

  % Blok D dan E
  s1*10 s1*8 |

  % Blok F
  cis'4 -\tweak self-alignment-X #-0.6 -\dynamicWithText "mp" \markup\larger"a tempo" b8 dis'2 dis'8 | % 20
  cis'4 fis'8 fis'1*5/8 | % 21
  r4 e'8( dis'8) cis'8 dis'16 e'1*3/16 ais'8 | % 22
  fis'2. r4 | % 23
  fis'4 fis'4 fisis'4 fisis'4 | % 24
  gis'!4 e'8 dis'8 e'4 r8 e'8 | % 25
  dis'4. e'8 fis'4. fis'8 | % 26
  b2. r4 | % 27

  % Blok G
  b'4 ( ais'8 gis'8 ) fis'2 | % 28
  b'4 ais'8 gis'8 fis'4. r8 | % 29
  gis'4. ( fis'8 ) eis'2 | % 30
  fis'8 eis'8 fis'8 ( gis'8 ) ais'4 b'8 ais'8 | % 31
  gis'4. gis'8 gis'8 ais'8 b'8 gis'8 | % 32
  fis'1*5/8 r8 r4 | % 33
  r4 e'8 gis'8 gis'8 fis'8 fis'4 | % 34
  r8 b'8 b'8 ais'8 gis'8 ( fis'8 ) e'8 dis'8 | % 35
  cis'4 ( dis'8 e'8 ) fis'8 fis'8 fis'8 fis'8 | % 36
  b8 b8 b4( 4) r4 | % 37

  % Blok H
  \repeat volta 2 {
    e'4 e'8 fis'8 gis'2 | % 74
    ais'4 ais'8  b'8 cis''4 \breathe fis'8 e'8 | % 75
    dis'2 dis'8 dis'8 fis'8 ais'8 | % 76
    gis'8 gis'1*5/8 r4 | % 77
    cis'4 cis'8 dis'8 e'2 | % 78
    fis'4 fis'8 gis'8 fis'8 fis'8 cis'8 dis'8 | % 79
    e'2 \tuplet 3/2 {
      fis'4 fis'4 fis'4
    }
    \alternative {
      \volta 1 {
        b2. r4
      }
      \volta 2 {
        b2 r8 gis'8 gis'8 ais'8 % 82
      }
    }
  }
  b'2. b'8 ( gis'8 ) | % 83
  dis''8 ( cis''2 ) fis'8 cis'8 dis'8 | % 84
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

% Lyrics
SopranoLyricsBlokC = \lyricmode {
  \tweak X-offset #0 Pu -- ji Tu -- han Ma -- ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- "li-"

  \repeat unfold 20 \skip1

  \tweak X-offset #0 Pu -- ji Tu -- han Ma -- ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- "li-"
}

SopranoLyricsOne = \lyricmode {
  \SopranoLyricsBlokC
}

AltoLyricsBlokA = \lyricmode {
  Tu -- han Ma -- ha \tweak X-offset #-0.5 Ka -- sih,
  sum -- "ber " peng -- hi -- bur -- an,
  "Di " \tweak X-offset #-0.5 "da -" lam ha -- dir -- at -- Mu
  \tweak X-offset #-0.5 da -- mai \tweak X-offset #-0.5 "tak " ter -- bi -- lang.
}

AltoLyricsBlokC = \lyricmode {
  Pu -- ji, pu -- ji Tu -- han
  Al -- lah Ma -- ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- "li-" a,
  \markup\undertie "Kau" yang se -- ti -- a se -- la -- ma -- nya,
  ka -- mi sem -- bah de -- ngan su -- ka -- ci -- ta.
}

AltoLyricsBlokE = \lyricmode {
  Ta -- ngan -- Mu yang ku -- at
  me -- no -- pang yang le -- mah.
  Ka -- sih -- Mu sa -- ngat te -- guh
  \tweak X-offset #-2.5 meng -- ha -- \tweak X-offset #-2 pus -- kan re -- sah.
}

AltoLyricsOne = \lyricmode {
  \AltoLyricsBlokA
  \AltoLyricsBlokC
  \AltoLyricsBlokE
  \AltoLyricsBlokC __

  % tenor
  Al -- le -- \tweak X-offset #-0.4 "lu-" ya, al -- le -- lu -- ya,
  ka -- sih -- Mu tak ber -- ke -- su -- dah -- an.
  Al -- le -- lu -- ya, al -- le -- lu -- ya,
  ke -- mu -- \markup\undertie "lia" -- an ba -- gi Tu -- han.
  Al -- le -- "lu-"

  han.
  Tu -- han \tweak X-offset #-0.8 "Ma-" ha Ka -- sih,
  ka -- mi pu -- ji se -- la -- ma -- nya.
  Al -- le -- lu -- ya!
}

AltoLyricsTwo = \lyricmode {
  \transparentSmallLyrics
  \AltoLyricsBlokA
  \repeat unfold 40 \skip1
  \AltoLyricsBlokE
}

TenorLyricsOne = \lyricmode {
  ba -- gi yang ber -- se -- ru -- se -- ru
  \markup\undertie "Kau" ja -- wab de -- ngan cin -- ta.

  Pu -- ji Tu -- han Ma -- ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- "li-"

  \repeat unfold 20 \skip1

  Eng -- kau Ba -- pa yang se -- ti -- a,
  te -- rang ba -- gi du -- \markup\concat { \undertie "nia" "." }

  Pu -- ji Tu -- han Ma -- ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- "li-"
}

BassLyricsBlokB = \lyricmode {
  Ka -- \tweak X-offset #-0.75 sih -- Mu me -- nga -- lir
  me -- nyem -- buh -- kan ji -- wa,
  ba --   gi yang \tweak X-offset #0 ber -- \tweak X-offset #0 se -- ru "- se " -- ru
  \markup\undertie "Kau" ja -- wab de -- ngan cin -- ta.
}

BassLyricsBlokF = \lyricmode {
  Ti -- a -- da yang se -- \tweak X-offset #-1.7 ban -- ding
  cin -- ta -- \tweak X-offset #-0.5 Mu sem -- pur -- na.
  Eng -- kau Ba -- pa yang se -- ti -- a,
  te -- rang ba -- gi du -- \markup\concat { \undertie "nia" "." }
}

BassLyricsBlokC = \lyricmode {
  Pu -- ji, pu -- ji Tu -- han
  Al -- lah Ma -- ha Ka -- sih,
  na -- ma -- Mu ku -- dus dan mu -- "li-" a,
  \markup\undertie "Kau" yang se -- ti -- a se -- la -- ma -- nya,
  ka -- mi sem -- bah de -- ngan su -- ka -- ci -- ta.
}

BassLyricsBlokH = \lyricmode {
  Al -- le -- lu -- ya, al -- le -- lu -- ya,
  ka -- sih -- Mu tak ber -- ke -- su -- dah -- an.
  Al -- le -- lu -- ya, al -- le -- lu -- ya,
  ke -- mu -- \markup\undertie "lia" -- an ba -- gi Tu -- han.

  han.
  Tu -- han \tweak X-offset #-0.8 "Ma-" ha Ka -- sih,
  ka -- mi pu -- ji se -- la -- ma -- nya.
  Al -- le -- lu -- ya!
}

BassLyricsOne = \lyricmode {
  \BassLyricsBlokB
  \BassLyricsBlokC
  \BassLyricsBlokF
  \BassLyricsBlokC __
  \BassLyricsBlokH
}

BassLyricsTwo = \lyricmode {
  \transparentSmallLyrics
  \BassLyricsBlokB
  \BassLyricsBlokC
  \BassLyricsBlokF
  \BassLyricsBlokC
  \BassLyricsBlokH
}

% Chords
Chords = \chordmode {
  \set chordChanges = ##f
  % \partial 2 s2 |
  %   e1:maj7 |
  %   dis2:m7 gis2:m |
  %   cis2:m7 fis2 |
  %   b2:maj7 <b dis' fis' gis'>2|
  %   ais2:dim dis2 |
  %   gis1:m |
  %   cis1:m |
  %   fis1:6 |
  %   b2:3.5.9 b2 |
  %   b2:3.5.9 b2 |

  % Blok A
  \temporary \override ChordName.extra-offset = #'(0 . -0.8)
  b1 |
  cis1:m |
  fis1 |
  b1 |
  \revert ChordName.extra-offset
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

  % Blok C
  b2 fis2 |
  b1 |
  gis2:m cis2 |
  fis2. b4/dis |
  e1 |
  dis2:m gis2:7 |
  cis2:m fis2:7 |
  b2 gis2:7 |
  cis2:m fis2:7 |
  b1 |

  % Blok D
  \temporary \override ChordName.extra-offset = #'(0 . -1.5)
  e1 |
  b1/dis |
  d1 |
  a1/cis |
  c1 |
  g1/b |
  cis1:dim |
  fis1 |
  b2:3.5.9 b2 |
  b2:3.5.9 b2 |
  \revert ChordName.extra-offset

  % Blok E
  \temporary \override ChordName.extra-offset = #'(0 . -0.8)
  b1 |
  cis1:m |
  fis1 |
  b1 |
  \revert ChordName.extra-offset
  q2 b2:7/dis |
  e1 |
  fis1 |
  b2 \tweak X-offset #-0.5 cis4:m fis4 |

  % Blok F
  %\temporary \override ChordName.extra-offset = #'(0 . -0.8)
  b1
  dis1:m |
  e2 fis2 |
  b1 |
  q2 dis2 |
  e2 cis2:m |
  b2:/dis fis2 |
  b2 fis2:7 |

  % Blok G
  b2 fis2 |
  b1 |
  gis2:m cis2 |
  fis2. b4/dis |
  e1 |
  dis2:m gis2:7 |
  cis2:m fis2:7 |
  b2 gis2:7 |
  cis2:m fis2:7 |
  b1 |

  % Blok H
  \revert ChordName.extra-offset
  e1 fis dis:m fis:m
  cis1:m fis e2:6 fis2
  % Volta 1
  b1
  % Volta 2
  b2 gis:m

  cis1:m7 fis e2:6 fis2
  b1 e:m b:3.5.9 s1
}