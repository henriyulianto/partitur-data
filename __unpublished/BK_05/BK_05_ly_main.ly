% TMK_01_ly_main.ly
% -*- master: BK_05.ly;
#(set-global-staff-size (* 260/210 20))
% SETTINGS
SolmisasiStaffSize = #(* 260/210 20)
MIDIExtension = "midi"
ExportMIDI = ##t

\include "../BK_video.ily"

Global = {
  \BK_Global
  \omit SolmisasiKeyChangeMark
  \key d \major
  %\disallowPageBreak
  \disallowLineBreak

  %% SOLO
  r1

  \time 4/4
  s1*4 \break | %6

}

WomenInstrumentName = \markup\bold "So."
WomenShortInstrumentName = \WomenInstrumentName
WomenMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  s2. r8 a8
  d'8-\tweak extra-offset #'(0 . -0.5)^\markup\italic "a tempo" d'4 fis'8 a'4. d''8 | % 48
  cis''4. ( b'8 ) a'2 | % 49
  b'4. g'8 e'4. a'16\( b'16\) | % 50
  a'16( b'16 a'1*5/8) r4 \spanBarOn | % 51
}

SopranoInstrumentName = \markup\bold "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  s2. r8 a8 \spanBarOff
  d'8 d'4 fis'8 a'4. d''8 | % 48
  cis''4. ( b'8 ) a'2 | % 49
  b'4. g'8 e'4.   b'8 | % 50
  a'2. r4 \spanBarOn | % 51
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  s2. r8 a8 \spanBarOff % 47
  d'8 d'4 cis'8 d'4. fis'8 | % 48
  fis'2 fis'2 | % 49
  g'4. d'8 cis'2 | % 50
  e'4 ( fis'8 e'8 ) dis'4 r4 \spanBarOn | % 51
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  s2. r8 d'8  % 47
  d'4 cis'8 fis8 a2 | % 48
  a4 b4 cis'2 | % 49
  d'4. b8 a2 | % 50
  cis'4( a4) fis4 r4 \spanBarOn | % 51
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major

  s2. r8 g8 % 47
  fis4 a8 e8 fis2 | % 48
  fis4 fis4 fis2 | % 49
  g4. g8 a2 | % 50
  fis8 ( e8 d8 cis8 ) b,4 r4 | % 51
}

SopranoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  di a -- \syairDiKiri tas bu -- \syairDiKiri mi se -- \syairDiKiri per -- \skip1 \syairDiKiri ti
  \syairDiKiri di da -- \syairDiKiri lam \syairDiKiri sur -- \syairDiKiri ga.
}

AltoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  di a -- \syairDiKiri tas bu -- \syairDiKiri mi se -- \syairDiKiri per -- \syairDiKiri ti
  \syairDiKiri di da -- \syairDiKiri lam \syairDiKiri sur -- \skip1 \skip1 ga.
}

TenorLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  % di a -- tas bu -- \syairDiKiri mi se -- per -- \syairDiKiri ti
  %   \syairDiKiri di da -- \syairDiKiri lam \syairDiKiri sur -- \skip1 ga.
}

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  di a -- tas bu -- \syairDiKiri mi se -- per -- \syairDiKiri ti
  \syairDiKiri di da -- \syairDiKiri lam \syairDiKiri sur -- \skip1 \skip1 \skip1 ga.
}

% WomenLyrics = \lyricmode {
%   \set ignoreMelismata = ##t
%   di a -- \syairDiKiri tas bu -- \syairDiKiri mi se -- \syairDiKiri per -- \skip1 \syairDiKiri ti
%   \syairDiKiri di da -- \syairDiKiri lam \syairDiKiri sur -- \skip1 \syairDiKiri ga.
%   %   \tweak X-offset #-2.5 Dan am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
%   %   \tweak X-offset #-2.8 s'per- ti ka -- mi pun me -- ngam -- pu -- ni
%   %   yang ber -- sa -- lah ke -- pa -- da \tweak X-offset #0 ka- \skip1 mi.
%   %   \tweak X-offset #-2.8 Dan ja -- ngan -- lah ma -- suk -- kan \tweak X-offset #-0.8 ka- mi
%   %   ke da -- lam pen -- co -- ba -- an,
%   %   ta -- pi \tweak X-offset #0 be -- \skip1 bas -- kan -- lah \tweak X-offset #0 ka -- \skip1 mi \tweak X-offset #0 da -- \skip1 ri yang ja -- hat.
% }

Chords = \chordmode {
  s1

  d1
  fis1:m
  g2 a2
  <d fis a cis' e'>2 b2:7
  % e2:m a2:7
  %   \tweak X-offset #-1 d4 \tweak X-offset #-1 a4/cis' b2:m
  %   e2 e2/gis
  %   \tweak X-offset #-0.5 a4 \tweak X-offset #-3 g4:m/a a2
  %
  %   d1
  %   fis1:m
  %   g2 a2
  %   \tweak X-offset #-0.5 fis4:m \tweak X-offset #-1 fis4:m/e \tweak X-offset #-2 b4/dis \tweak X-offset #-1.3 b4/b
  %   e2:m a2:7/cis'
  %   \tweak X-offset #-1 d4 \tweak X-offset #-1 a4/cis' b2:m
  %   e2:m a2
  %   \tweak X-offset #-1 d4 \tweak X-offset #-2 d4:sus

  % c4 g4
  %
  %     c2 c2/e
  %     \tweak X-offset #-1 f4 \tweak X-offset #-1.2 a4/cis d2:m
  %     g2 g2:7
  %     c2 c2/e
  %     f2 g4 g4/f
  %     e2:m a2:m
  %     \tweak X-offset #-1 d2:m g2
  %     e2:m a2:m7
  %     d2:m g4 g4/f
}