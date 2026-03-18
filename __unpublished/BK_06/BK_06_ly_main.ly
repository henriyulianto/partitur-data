% TMK_01_ly_main.ly
% -*- master: BK_06.ly;
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

  s1*4 \break

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
  g'4. a'8 g'4   g'8 a'8 | % 52
  fis'4 e''8( d''16 cis''16) d''2 | % 53
  e''4. d''8 cis''4   d''8 e''8 | % 54
  d''2 r4 r4 % 55
}

SopranoInstrumentName = \markup\bold "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  g'4. a'8 g'4   g'8 a'8 \spanBarOff | % 52
  fis'4 a'4 d''2 | % 53
  e''4. d''8 cis''4   d''8 e''8 | % 54
  d''2 r8 fis'8 fis'8   a'8 \spanBarOn % 55
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  e'4. d'8 cis'4 cis'8 e'8 \spanBarOff | % 52
  d'4 e'4 fis'2 | % 53
  g'4. ( fis'8 ) e'2 | % 54
  r4 \tuplet 3/2 {
    g'8 fis'8 e'8
  }
  fis'4 r4 \spanBarOn % 55
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  b4 a4 a4 a8 a8 \spanBarOff | % 52
  a4 a4 b2 | % 53
  b2 a2 | % 54
  r4 \tuplet 3/2 {
    ais8 a8 g8
  }
  a4 r4 \spanBarOn % 55
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major

  e4 e4 a,4   a,8 a,8 | % 52
  d4 cis4 b,2 | % 53
  e4. e8 a,4   a,8 a,8 | % 54
  d2 r8 a8 a8   a8 % 55
}

SopranoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \syairDiKiri Be -- ri -- lah ka -- mi re -- \syairDiKiri ze -- \syairDiKiri ki \syairDiKiri pa -- da ha -- ri i -- \syairDiKiri ni.
  Dan am -- \tweak self-alignment-X #-0.5 "pu-"
}

AltoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \syairDiKiri Be -- ri -- lah ka -- mi re -- \syairDiKiri ze -- \syairDiKiri ki \syairDiKiri pa -- \skip1 \syairDiKiri da ha -- ri i -- \syairDiKiri ni.
}

TenorLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \syairDiKiri Be -- ri -- lah ka -- mi re -- \syairDiKiri ze -- \syairDiKiri ki \syairDiKiri pa -- \syairDiKiri da ha -- ri i -- \syairDiKiri ni.
}

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \syairDiKiri Be -- ri -- lah ka -- mi re -- \syairDiKiri ze -- \syairDiKiri ki \syairDiKiri pa -- da ha -- ri i -- \syairDiKiri ni.
  Dan am -- \tweak self-alignment-X #-0.5 "pu-"
}

SoloLyrics = \lyricmode {
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
}

Chords = \chordmode {
  e2:m a2:7
  d4 a4/cis b2:m
  e2:m a2
  d4 g4:m/d d4 d4/a
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