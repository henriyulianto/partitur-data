% TMK_01_ly_main.ly
% -*- master: BK_03.ly;
#(set-global-staff-size (* 260/210 20))
% SETTINGS
SolmisasiStaffSize = #(* 260/210 20)
MIDIExtension = "midi"
ExportMIDI = ##t

\include "../BK_video.ily"

Global = {
  \BK_Global
  % \omit SolmisasiKeyChangeMark
  \override Score.SolmisasiKeyChangeMark.extra-offset = #'(-2.35 . -2.5)
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
  s1*5
}

SopranoInstrumentName = \markup\bold "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  s2. r8-\tweak extra-offset #'(-2.2 . -2.5)^\markup\italic\bold "cf" a8 \spanBarOff % 0
  \time 4/4
  d'4. fis'8 a'4. d''8 | % 5
  cis''8 a'8 a'8 fis'8 a'4 r8 fis'8 | % 6
  b'4. g'8 e'8 e'4 a'16 b'16 | % 7
  a'2. r4 \spanBarOn | % 8
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  s2. r8 a8 \spanBarOff % 39
  \time 4/4
  d'4. cis'8 d'4.   d'8 | % 40
  e'8 fis'8 fis'8 fis'8
  fis'4 r8 fis'8 | % 41
  g'4. d'8 cis'8 cis'4. | % 42
  fis'4 e'4 dis'4 r4 \spanBarOn | % 43
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  s2. r4
  \time 4/4
  r8 fis8 fis8 a8 a4 d'4 \spanBarOff | % 40
  cis'8 cis'8 cis'8   cis'8 cis'4 r8 a8 | % 41
  d'4. b8 a8 a4 cis'16 d'16 | % 42
  cis'4( a4 b4) r4 \spanBarOn | % 43
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major

  s2. r4
  \time 4/4
  r8 d8 d8 d8 d4
  fis4 | % 40
  a8 fis8 fis8   fis8 fis4 r8 fis8 | % 41
  g4. g8 a8 a4. | % 42
  fis4 fis4 b,4 r4 | % 43
}

SopranoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  Ba -- \syairDiKiri pa ka -- mi \tweak X-offset #-3 yang a -- da di sur -- ga,
  di -- \syairDiKiri mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" \syairDiKiri lah na -- \tweak X-offset #-1 ma -- Mu.
}

AltoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  Ba -- \syairDiKiri pa ka -- mi \tweak X-offset #-3 yang a -- da di sur -- ga,
  di -- \syairDiKiri mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" \syairDiKiri lah na -- ma -- Mu.
}

TenorLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  Ba -- pa \tweak X-offset #-0.7 ka -- mi yang a -- da di sur -- ga,
  di -- mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" \syairDiKiri lah na -- ma -- \syairDiKiri Mu.
}

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  Ba -- pa \tweak X-offset #-0.7 ka -- mi yang a -- da di sur -- ga,
  di -- mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" \syairDiKiri lah na -- ma -- Mu.
}

SoloLyrics = \lyricmode {
  Ba -- pa \tweak X-offset #-0.7 ka -- mi \tweak X-offset #-3 yang a -- da di sur -- ga,
  di -- mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" lah \tweak X-offset #-0.5 na- \tweak X-offset #-0.6 ma- Mu.
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
}

Chords = \chordmode {
  s1

  d1
  fis1:m
  g2 a2
  d4:maj7 \tweak X-offset #-2 fis4:m7/cis b2:7
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