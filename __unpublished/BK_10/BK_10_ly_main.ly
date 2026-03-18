% TMK_01_ly_main.ly
% -*- master: BK_10.ly;
#(set-global-staff-size (* 260/210 20))
% SETTINGS
SolmisasiStaffSize = #(* 260/210 20)
MIDIExtension = "midi"
ExportMIDI = ##t

\include "../BK_video.ily"

Global = {
  \BK_Global
  \omit Score.SolmisasiKeyChangeMark
  \key d \major
  %\disallowPageBreak
  \disallowLineBreak

  s1*5 \bar "|."
}

WomenInstrumentName = \markup\bold "So."
WomenShortInstrumentName = \WomenInstrumentName
WomenMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  b'4 b'8\( a'8\) g'2 \spanBarOff |
  d''4 c''4 ais'8\( a'8\) g'4 |
  a'1( |
  a'1) \spanBarOn |
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  a'4 r2.
}

SopranoInstrumentName = \markup\bold "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major \override Staff.StaffSymbol.line-count = #7

  e'4 g'8 \( b'8 \)
  \omit Staff.DivisiVoiceFollower
  <a' d''>4 <a' cis''>4 | % 68
  <g' d''>2 <eis' d''>4 ( <g' e''>4 | % 69
  <a' fis''>1 | % 70
  \undo \omit Staff.DivisiVoiceFollower
  <a' fis''>1 ) | % 71
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  fis''4 r2.
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  b4 e'8 \( fis'8 \) g'4 e'4 \spanBarOff | % 68
  d'2 d'2 ( | % 69
  d'1 | % 70
  d'1 ) \spanBarOn | % 71
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  d'4 r2.
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  g4 b4 d'4  e'4 | % 68
  d'2 d'2 ( | % 69
  d'1 | % 70
  d'1 ) | % 71
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  d'4 r2.
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major \override Staff.StaffSymbol.line-count = #7

  e4 e4 a,4 a,4 | % 68
  \after 1 \omit Staff.DivisiVoiceFollower {
    d2
    \shapeII #'((0.05 1.5)(0 0.3)(0 0.3)(-0.05 0.25)) Slur
    d2 ( | % 69
  }
  <d a>1 | % 70
  \undo \omit Staff.DivisiVoiceFollower
  <d a>1 ) | % 71
  \once\override SolmisasiNoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{ \markup "0" #}))
  d4 r2.
}

WomenLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  da -- \syairDiKiri ri \syairDiKiri \markup\transparent "mn" \syairDiKiri yang
  da -- ri \syairDiKiri yang \skip1 \syairDiKiri ja -- \syairDiKiri hat. __ \skip1
}

% SopranoLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   ni -- \syairDiKiri lah ke -- sa -- la -- \syairDiKiri han ka -- \syairDiKiri mi
%   s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
% }

AltoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  da -- \syairDiKiri ri \skip1 yang ja -- \syairDiKiri hat.
  \syairDiKiri Aa __ \skip1 \skip1
}

% TenorLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   Dan \syairDiKiri am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
%   s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
% }

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  da -- ri yang ja -- \syairDiKiri hat.
  \syairDiKiri Aa __ \skip1 \skip1
}

Chords = \chordmode {
  e2:m a4:sus4.7 a4
  c2:sus4.7.9 g2:m7
  d1
}
