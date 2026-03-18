% TMK_01_ly_main.ly
% -*- master: BK_08.ly;
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

  b'4 e'8 fis'8 g'4. b'8 | % 60
  a'8 a'4 fis'16 ( e'16 ) d'4 r8 d'8 | % 61
  e'8 fis'8 g'8 e'8 cis'8 cis'4 a8 | % 62
  a'2. r4 | % 63
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  g'4 e'8 e'8 e'4. e'8 \spanBarOff | % 60
  fis'8 fis'4 d'16 ( cis'16 ) b4 r8 b8 | % 61
  e'8 fis'8 g'8 e'8 cis'8 cis'4 a8 | % 62
  cis'2. r4 \spanBarOn | % 63
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  b4 b8 b8 a4. b8 | % 60
  cis'8 cis'4 a8 fis4 r8 fis8 | % 61
  g8 a8 b8 g8 a8 a4 g8 | % 62
  fis2. r4 | % 63
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major

  e4 e8 e8 cis4. e8 | % 60
  fis8 fis4 a,8 b,4 r8 b,8 | % 61
  g8 a8 b8 g8 e8 e4 e8 | % 62
  fis2. r4 | % 63
}

% SopranoLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   ni -- \syairDiKiri lah ke -- sa -- la -- \syairDiKiri han ka -- \syairDiKiri mi
%   s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
% }

AltoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  yang ber -- sa -- \syairDiKiri lah ke -- pa -- \syairDiKiri da \syairDiKiri ka -- \skip1 " mi."
  Dan ja -- ngan -- lah ma -- suk -- \syairDiKiri kan ka -- \syairDiKiri mi
}

% TenorLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   Dan \syairDiKiri am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
%   s'per -- ti ka -- mi pun me -- ngam -- pu -- \syairDiKiri ni
% }

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  yang ber -- sa -- \syairDiKiri lah ke -- pa -- \syairDiKiri da \syairDiKiri ka -- " mi."
  Dan ja -- ngan -- lah ma -- suk -- \syairDiKiri kan ka -- \syairDiKiri mi
}

Chords = \chordmode {
  e4:m e4:m/b a2:7
  fis4:m fis4:m/cis b2:m
  e2:m a2
  fis2:m b2:m
}