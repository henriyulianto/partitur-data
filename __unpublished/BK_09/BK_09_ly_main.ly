% TMK_01_ly_main.ly
% -*- master: BK_09.ly;
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

  s1*4

  % s1*4 \break | %10
  %
  %   s1*4 \break
  %
  %   s1*3 s2 \bar "!"

  % s1*4 \break
  %
  %   s1*4 \break
  %
  %   s1*4 \break
  %
  %   s1*6 \break

}

WomenInstrumentName = \markup\bold "So."
WomenShortInstrumentName = \WomenInstrumentName
WomenMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  r1
  r8 cis''4( b'16 a'1*5/16 ) r8 d''8 \spanBarOff
  b'4 b'8( a'16 g'16) g'4. b'8 | % 66
  a'4 fis'8( a'16) fis'32( e'32 d'2) \spanBarOn
}

SopranoInstrumentName = \markup\bold "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major \override Staff.StaffSymbol.line-count = #7

  e'8 fis'8 g'8 e'8 cis'4 cis''4 | % 64
  a'2. r8 a'8 % 65
  b'4 e'8 ( fis'8 ) g'4. b'8 | % 66
  a'4
  \omit Staff.DivisiVoiceFollower
  \override Beam.extra-offset = #'(0 . -1.5)
  <fis' b'>8 (
  <e' cis''>8 )
  <d' d''>2 | % 67
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  e'8 fis'8 g'8 e'8 cis'4 e'4 \spanBarOff | % 64
  fis'2. r8 fis'8 % 65
  g'4 e'8 ( d'8 ) cis'4. d'8 | % 66
  cis'4 cis'4 b2 \spanBarOn| % 67
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  e8 fis8 g8 b8 a4 a4 | % 64
  a2. r8 d'8 % 65
  d'4 b8 ( a8 ) a4. b8 | % 66
  cis'4 a4 fis2 | % 67
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major

  e8 fis8 g8   g8 e4 a,4 | % 64
  d2. r8 d8 % 65
  g4 g4 g4.   g8 | % 66
  fis4 fis4 b,2 | % 67
}

WomenLyrics = \lyricmode {
  Haa __
  ta -- pi \syairDiKiri be -- \syairDiKiri bas -- kan -- lah \syairDiKiri ka -- \syairDiKiri mi
}
% SopranoLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   ni -- \syairDiKiri lah ke -- sa -- la -- \syairDiKiri han ka -- \syairDiKiri mi
%   s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
% }

AltoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  ke da -- lam pen -- co -- ba -- \syairDiKiri an,
  ta -- pi \syairDiKiri be -- \skip1 \syairDiKiri bas -- kan -- lah \syairDiKiri ka -- \syairDiKiri mi
}

% TenorLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   Dan \syairDiKiri am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
%   s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
% }

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  ke da -- lam pen -- co -- ba -- \syairDiKiri an,
  ta -- pi \syairDiKiri be -- \syairDiKiri bas -- kan -- lah \syairDiKiri ka -- \syairDiKiri mi
}

Chords = \chordmode {
  e2:m a2
  d2:maj7 d2/fis
  g2 a2:7/g
  fis2:m b2:m
}