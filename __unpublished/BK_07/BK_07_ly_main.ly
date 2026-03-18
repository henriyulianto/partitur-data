% TMK_01_ly_main.ly
% -*- master: BK_07.ly;
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

% WomenInstrumentName = \markup\bold "So."
% WomenShortInstrumentName = \WomenInstrumentName
% WomenMusic = {
%   \clef "treble"
%   \numericTimeSignature
%   \key d \major
%   g'4. a'8 g'4   g'8 a'8 | % 52
%   fis'4 e''8( d''16 cis''16) d''2 | % 53
%   e''4. d''8 cis''4   d''8 e''8 | % 54
%   d''2 r4 r4 % 55
% }

SopranoInstrumentName = \markup\bold "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  fis'8 fis'4 fis'16 e'16 d'8 d'4 a'8 \spanBarOff | % 56
  b'2. r8 b'8 | % 57
  cis''8 b'8 a'8 gis'8 g'4 e'8 eis'8 | % 58
  fis'!2. r4 \spanBarOn | % 59
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  d'8 d'4 d'16 d'16 d'8 d'8   d'8 fis'8 | % 56
  g'4 dis'4 e'4 r8 fis'8 | % 57
  g'8 g'8 e'8 e'8 e'4 e'8 eis'8 | % 58
  fis'!2. r4 | % 59
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  a8 a4 a16 a16 a8 a8 a8 a8 \spanBarOff | % 56
  b4 fis4 g4 r8   d'8 | % 57
  e'8 d'8 cis'8   c'8 b4 g8 g8 | % 58
  a2. r4 \spanBarOn | % 59
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major

  d8 d4 d16 d16 fis8 fis4   d8 | % 56
  g4 ( fis4 e4 ) r8 e8 | % 57
  a8 a8 a8 a8 e4 cis8 d8 | % 58
  d2. r4 | % 59
}

SopranoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  ni -- \syairDiKiri lah ke -- sa -- la -- \syairDiKiri han ka -- \syairDiKiri mi
  s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
}

% AltoLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   Dan am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
%   s'per -- ti ka -- mi pun me -- ngam -- pu -- ni
% }

TenorLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  Dan \syairDiKiri am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
  s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
}

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  ni -- \syairDiKiri lah ke -- sa -- la -- \syairDiKiri han ka -- \syairDiKiri mi \skip1 \skip1
  s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
}

% SoloLyrics = \lyricmode {
% Ba -- pa \tweak X-offset #-0.7 ka -- mi \tweak X-offset #-3 yang a -- da di sur -- ga,
% di -- mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" lah \tweak X-offset #-0.5 na- \tweak X-offset #-0.6 ma- Mu.
%   Da -- \tweak X-offset #-2 tang -- lah \markup{ \undertie "kera" "-" } ja -- an -- Mu,
%   ja -- di -- \tweak X-offset #-0.5 lah ke -- hen -- \tweak X-offset #-1.2 dak -- Mu
%   di a -- tas bu -- mi \tweak X-offset #-0.5 se -- per -- ti di \tweak X-offset #-0.5 da -- lam \tweak X-offset #-1.2 sur -- ga.
%   Be -- ri -- lah ka -- mi re -- ze -- ki pa -- da ha -- ri i -- ni.
%   \tweak X-offset #-2.5 Dan am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
%   \tweak X-offset #-2.8 s'per- ti ka -- mi pun me -- ngam -- pu -- ni
%   yang ber -- sa -- lah ke -- pa -- da \tweak X-offset #0 ka- \skip1 mi.
%   \tweak X-offset #-2.8 Dan ja -- ngan -- lah ma -- suk -- kan \tweak X-offset #-0.8 ka- mi
%   ke da -- lam pen -- co -- ba -- an,
%   ta -- pi \tweak X-offset #0 be -- \skip1 bas -- kan -- lah \tweak X-offset #0 ka -- \skip1 mi \tweak X-offset #0 da -- \skip1 ri yang ja -- hat.
% }

Chords = \chordmode {
  d1
  g4 b4/dis e2:m
  a2:7 a2:7/cis
  d2 d2/fis
}