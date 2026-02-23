\version "2.25.29"

\include "solmisasi-ly.ily"
\debugOff

\include "hy-music-template.ily"

\header {
  dedication = ##f
  title = "Christmas Is All About Love"
  subtitle = ##f
  footer-title = "Christmas Is All About Love"
  composer-pre-text = ##f
  composer = "Music by ALLEN POTE"
  arranger-pre-text = ##f
  arranger = ##f
  poet-pre-text = ##f
  poet = ##f
  meter = ##f
  meter-post-text = ##f
  instrument-pre-text = ##f
  instrument = "For S.A.B. Voices and Piano Accompaniment"
  instrument-id = "SATB"
  nada-dasar = "Words by TOM LONG"
  sukat-dan-mm = \markup\smaller "(B = Baritone, B2 = smaller group of Baritone)"
  copyright = ##f
  tagline = "&mdash; Translasi Notasi oleh Henri Yulianto &mdash;"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% MUSIC

InitialSettings = {
  \numericTimeSignature
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.beatBase = #1/4
  \set Timing.beatStructure = 1,1,1,1
  \key g \major
}

Global = {
  \InitialSettings
  \set Score.rehearsalMarkFormatter = #format-mark-box-barnumbers
  \override Score.RehearsalMark.font-size = #1
  \override Staff.SolmisasiKeyChangeMark.Y-offset = #1
  \disallowPageBreak
  \disallowLineBreak
  \tempo "A gentle four" 4=80
  s1*4
  \once\override Score.RehearsalMark.extra-offset = #'(0 . -6)
  \mark\default
  s1*4 \break
  s1*3 \break
  s1*2
  \mark\default
  s1*2 \break
  s1*3 \pageBreak

  s1*4 \break
  \mark\default
  \once\omit Score.BarNumber
  s1*5 \break
  s1*4 \break
  \mark\default
  \once\omit Score.BarNumber
  s1*4 \break
  s1*5 \pageBreak

  \once\omit Score.BarNumber
  \mark\default
  s1*5 \break
  s1*2
  s2 s8 \tempo "slowing" s4.
  s1*2 \bar "|."
}

SopranoOneInstrumentName = "S1."
SopranoOneShortInstrumentName = \SopranoOneInstrumentName
SopranoOneMusic = {
  \clef "treble"
  \InitialSettings
  s1*35

  a'8 g'4 a'8\< b' c'' d''4 |
  e''4\f e''2 d''8 c'' |
  d''4. b'8 a'4 4 |
  \after 4 \> g'1 ( |
  2.)\mf r4 |

  b'8 d'1*7/8 (  |
  1) |
  r4 d'4 d'8 e'8 g'4 |
  g'1 ( |
  2.) r4 |
}

SopranoTwoInstrumentName = "S."
SopranoTwoShortInstrumentName = \SopranoTwoInstrumentName
SopranoTwoMusic = {
  \clef "treble"
  \InitialSettings
  R1*4 |
  r4 c''8\mf b' a' g' a' b' |
  d'2 r4 d'8 8 |
  c''4. b'8 g'4 a' |
  b'2. r4 |
  b'8 a'4. b'8 c'' b' a' |
  g'2. a'8 b' |
  d''4. e'8 e'4 g' |
  \after 4 \> a'1 ( |
  2.) \mp r4 |
  b'8\mf d'4 8 e' g' a'4 |
  b'8 d'1*5/8 r4 |
  b'8 d'4 8 e' g' a'4 |
  b'2. r4 |
  a'8 g'4 fis'8 g'8 a'8 b'4 |
  d''4 g'2 a'8 b'8 |
  c''4. b'8 a'4 g' |
  a'1 |
  r1 |

  s1*5 |
  g'2.\< a'8\mf b' |
  d''4. e'8 e'4 g' |
  \after 4 \> a'1 ( |
  2.) \mp r4 |

  b'8\mf d'4 8 e' g' a'4 |
  b'8 d'1*7/8 |
  b'8 d'8 8 e'4 g'8 a'4 |
  b'2. r4 |
  \setStaffShortInstrumentName "S2"
  a'8 g'4 a'8 b' c'' d''4 |
  d''4 c''2 b'8 a' |
  g'4. g'8 a'4 4 |
  g'1 ( |
  2.) r4 |

  b'8 d'1*7/8 ( \spanBarOff |
  1) |
  r4 d'4 d'8 e'8 g'4 |
  g'1 ( |
  e'2.) r4 \spanBarOn |

  \resetStaffShortInstrumentName
  b'8 d'1*7/8 ( \spanBarOff |
  1) |
  r4 d'4 d'8 e'8 g'4 |
  \after 2 \> g'1 ( |
  1)\p \spanBarOn |
}

AltoTwoInstrumentName = "A."
AltoTwoShortInstrumentName = \AltoTwoInstrumentName
AltoTwoMusic = {
  \clef "treble"
  \InitialSettings
  R1*4 |
  r4 c''8 b' a' g' a' b' \spanBarOff |
  d'2 r4 d'8 8 |
  e'4. e'8 e'4 fis' |
  g'2. r4 \spanBarOn |
  b'8 a'4. b'8 c'' b' a' \spanBarOff |
  g'2. a'8 b' |
  d''4. e'8 e'4 e' \spanBarOn |
  e'1 ( \spanBarOff |
  fis'2.) r4  |

  d'8 d'4 8 e' e' e'4 |
  d'8 d'1*5/8 r4 \spanBarOn |
  b8 b4 8 c' c' c'4 \spanBarOff |
  e'4( fis'8 e'8 dis'4) r4 |
  fis'8 e'4 fis'8 g'8 a'8 b'4\spanBarOn  |
  d''4 g'2 e'8 e'8 \spanBarOff  |
  e'4. 8 4 4 |
  c'2( d' ) |
  r1 \spanBarOn |

  \setStaffShortInstrumentName "SA."
  r4 c''8\mp b' a' g' a' b' \spanBarOff |
  d'2 r4 d'8 8 |
  c''4. b'8 g'4 a' |
  b'2. r4 \spanBarOn |
  \resetStaffShortInstrumentName
  b'8 a'8 b'8 c''8 b'4. a'8 \spanBarOff |
  g'2. a'8 b' |
  d''4. e'8 e'4 g'  |
  e'1 (  |
  fis'2.) r4 \spanBarOn |

  d'8 d'4 8 e' e' e'4 \spanBarOff |
  d'8 4.( c'2) |
  b8 8 8 c'4 c'8 c'4 |
  e'4( fis'8 e'8 dis'4) r4 \spanBarOn |
  fis'8 e'4 fis'8 g'8 a'8 g'4 \spanBarOff |
  g'4 2 8 8 |
  e'4. 8 4 dis'4 |
  e'1 ( |
  dis'2.) r4 \spanBarOn |

  r2 c'8 b4.( \spanBarOff |
  1) |
  r4 d'4 d'8 e'8 g'4 |
  e'4( fis' e' d' |
  cis'2.) r4 \spanBarOn |

  r2 c'8 b4.( \spanBarOff |
  1) |
  r4 d'4 d'8 e'8 g'4 |
  g'1 ( |
  1) \spanBarOn |
}

BassOneInstrumentName = "B1."
BassOneShortInstrumentName = \BassOneInstrumentName
BassOneMusic = {
  \clef "bass"
  \InitialSettings
  R1*4 |
  r4 c'8\mf b a g a b |
  b2 r4 b8 8 |
  a4. b8 c'4 d' |
  d'2. r4 |
  s1*3
  \after 4 \> c'1( |
  2.)\mp r4 |

  b8\mf b4 8 c'8 8 4 |
  b8 4 r8 c'8 b a4 |
  s1*3 |
  s1*4 |

  s1*5 |
  r4 b8\mf c' b4 a8 b |
  d'4. c'8 4 a |
  \after 4 \> c'1( |
  2.)\mp r4 |

  b8\mf b4 8 c'8 8 4 |
  b8 4.( a2) |
  g8 8 8 4 8 4 |
  fis2( b4) r4 |
}

BassTwoInstrumentName = "B2."
BassTwoShortInstrumentName = \BassTwoInstrumentName
BassTwoMusic = {
  \clef "bass"
  \InitialSettings
  R1*4 |
  r4 c'8 b a g a b |
  b2 r4 b8 8 |
  a4. b8 c'4 a |
  g2. r4 |
  \setStaffShortInstrumentName "B."
  r1 |
  r4 b8 c' b4 a8 b |
  d'4. c'8 4 a |
  \resetStaffShortInstrumentName
  d1( |
  2.) r4 |

  g8 g4 8 c' b8 a4 |
  g8 4 r8 c'8 b a4 |
  \setStaffShortInstrumentName "B."
  g2 8 8 4 |
  fis2( b4) r4 |
  b8 4 8 d'8 c'8 b4 |
  g4 a( b) c'8 8 |
  a4. b8 c'4 b |
  a4( g fis2) |
  r1

  s1*5 |
  \resetStaffShortInstrumentName
  r4 b8 c' b4 a8 b |
  d'4. c'8 4 a |
  d1( |
  2.) r4 |

  g8 g4 8 c' b8 a4 |
  g8 1*7/8 |
  g8 8 8 4 8 4 |
  fis2( b4) r4 |
  \setStaffShortInstrumentName "B."
  b8 4 8\< d'8 c'8 b4 |
  c'4\f 2 8 8 |
  a4. b8 c'4 b |
  \after 4 \> b1( |
  2.)\mf r4 |

  r1
  a8 g1*7/8 |
  r4 c'4 8 b8 a4 |
  b1( |
  2.) r4 |

  r1
  a8 g1*7/8 |
  r4 c'4 8 b8 a4 |
  \after 2 \> g1( |
  1)\p |
}

Chords = \chordmode {
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LYRICS

SopranoTwoLyrics = \lyricmode {
  \override LyricText.Y-offset = #1
  \override LyricExtender.Y-offset = #1
  \override LyricHyphen.Y-offset = #1
  \override LyricSpace.Y-offset = #1
  \set ignoreMelismata = ##t
  \repeat unfold 99 { \skip1 }
  Christ -- \tweak self-alignment-X #LEFT mas __ \skip1
  is all a -- bout \tweak self-alignment-X #LEFT love. __ \skip1
  Christ -- \tweak self-alignment-X #LEFT mas __ \skip1
  is all a -- bout \tweak self-alignment-X #LEFT love. __ \skip1
}

AltoTwoLyrics = \lyricmode {
  \override LyricText.Y-offset = #1
  \override LyricExtender.Y-offset = #1
  \override LyricHyphen.Y-offset = #1
  \override LyricSpace.Y-offset = #1
  \set ignoreMelismata = ##t
  There are things we can -- not \tweak self-alignment-X #LEFT see,
  things that \tweak self-alignment-X #LEFT live in -- side the heart.
  Price -- \tweak self-alignment-X #LEFT less, ev -- en though they're free, __
  where the \tweak self-alignment-X #-0.5 joys "of " Christ -- mas start. __ \skip1

  Christ -- \tweak self-alignment-X #LEFT mas is not a -- bout hav -- ing. __
  Christ -- \tweak self-alignment-X #LEFT mas is not a -- bout \tweak self-alignment-X #LEFT gain __ \skip1\skip1\skip1
  Christ -- \tweak self-alignment-X #LEFT mas is all a -- bout
  sing -- \tweak self-alignment-X #LEFT ing __ let -- ting
  \tweak self-alignment-X #LEFT love be your re -- \tweak self-alignment-X #LEFT frain. __ \skip1
  %\repeat unfold 10 { \skip1 }

  If you have a gift to \tweak self-alignment-X #LEFT give,
  e -- ven though it's \tweak self-alignment-X #-0.5 ver -- y \tweak self-alignment-X #LEFT small.
  Know that when you \tweak self-alignment-X #-0.5 give " in" love, __
  it's the \tweak self-alignment-X #-0.5 great -- est " gift" of all. __ \skip1

  No one can ev -- er " be" hap -- \tweak self-alignment-X #LEFT py __ \skip1
  chas -- ing the \tweak self-alignment-X #-0.5 world " as" a \tweak self-alignment-X #LEFT goal. __ \skip1 \skip1 \skip1
  No one can ev -- er " be" rich -- \tweak self-alignment-X #LEFT er,
  than a \tweak self-alignment-X #LEFT sin -- gle giv -- ing soul. __ \skip1

  Christ -- \tweak self-alignment-X #LEFT mas __ \skip1
  is all a -- bout \tweak self-alignment-X #LEFT love. __ \skip1\skip1\skip1\skip1
  Christ -- \tweak self-alignment-X #LEFT mas __ \skip1
  is all a -- bout \tweak self-alignment-X #LEFT love. __ \skip1

}

BassTwoLyrics = \lyricmode {
  \override LyricText.Y-offset = #1
  \override LyricExtender.Y-offset = #1
  \override LyricHyphen.Y-offset = #1
  \override LyricSpace.Y-offset = #1
  \set ignoreMelismata = ##t
  There are things we can -- not \tweak self-alignment-X #LEFT see,
  things that \tweak self-alignment-X #LEFT live in -- side the heart.
  \tweak self-alignment-X #0.5 though they're free
  where the \tweak self-alignment-X #-0.5 joys "of " Christ -- mas start. __ \skip1

  Christ -- \tweak self-alignment-X #LEFT mas is not a -- bout hav -- \tweak self-alignment-X #LEFT ing.
  \tweak self-alignment-X #0.5 Christ -- mas is \tweak self-alignment-X #LEFT not, __
  not a -- bout \tweak self-alignment-X #LEFT gain __ \skip1
  Christ -- \tweak self-alignment-X #LEFT mas is all a -- bout sing -- \tweak self-alignment-X #LEFT ing __ \skip1 let -- ting
  \tweak self-alignment-X #LEFT love be your re -- \tweak self-alignment-X #LEFT frain. __ \skip1\skip1

  give in love,
  it's the \tweak self-alignment-X #-0.5 great -- est " gift" of all. __ \skip1

  No one can ev -- er " be" hap -- \tweak self-alignment-X #LEFT py __
  chas -- ing the \tweak self-alignment-X #-0.5 world " as" a \tweak self-alignment-X #LEFT goal. __ \skip1
  No one can ev -- er " be" rich -- \tweak self-alignment-X #LEFT er,
  than a \tweak self-alignment-X #LEFT sin -- gle giv -- ing soul. __ \skip1

  Christ -- \tweak self-alignment-X #LEFT mas __
  is all a -- bout \tweak self-alignment-X #LEFT love. __ \skip1
  Christ -- \tweak self-alignment-X #LEFT mas __
  is all a -- bout \tweak self-alignment-X #LEFT love. __ \skip1

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SETTINGS

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