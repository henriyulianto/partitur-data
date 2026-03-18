% TMK_01_ly_main.ly
% -*- master: BK_04.ly;
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

  \time 4/4
  s1*3 s2. \break

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
  s1*3 s2.
}

SopranoInstrumentName = \markup\bold "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  g'4. a'8 g'4.   a'8 | % 44
  fis'4 a'4 d''2 | % 45
  e''4. d''8 cis''4 \tuplet 3/2
  {
    cis''8 d''8 e''8
  }
  | % 46
  \override TextSpanner.bound-details.left.text = "rit. "
  a'2.\startTextSpan s4\stopTextSpan
}

AltoInstrumentName = \markup\bold "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \clef "treble"
  \numericTimeSignature
  \key d \major

  e'!4. d'8 cis'4. e'8 \spanBarOff | % 44
  d'4 e'4 fis'2 | % 45
  gis'4. gis'8 e'4 \tuplet 3/2 {
    e'8 e'8 e'8
  }
  | % 46
  e'2.
}

TenorInstrumentName = \markup\bold "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \numericTimeSignature
  \key d \major

  b4 b4 cis'2 | % 44
  d'4 cis'8 a8 b2
  | % 45
  b4. b8 b4 \tuplet 3/2 {
    b8 b8 b8
  }
  | % 46
  cis'2.
}

BassInstrumentName = \markup\bold "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \numericTimeSignature
  \key d \major

  e4 e4 a,2 | % 44
  d4 e8 fis8   b,2 | % 45
  e4. e8 gis4 \tuplet 3/2 {
    gis8 gis8 gis8
  }
  | % 46
  a!2.
}

AltoLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \syairDiKiri Da -- \tweak X-offset #-2 tang -- \syairDiKiri lah \markup{ \undertie "kera" "-" } ja -- an -- \syairDiKiri Mu,
  \syairDiKiri ja -- di -- \tweak X-offset #-0.5 lah ke -- hen -- \tweak X-offset #-1.2 dak -- \syairDiKiri Mu
}

BassLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  \syairDiKiri Da -- \tweak X-offset #-1 tang -- \syairDiKiri lah \markup{ \undertie "kera" } -- ja -- an -- \syairDiKiri Mu,
  \syairDiKiri ja -- di -- \tweak X-offset #-0.5 lah ke -- hen -- \tweak X-offset #-1.2 dak -- \syairDiKiri Mu
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
  d2 b2:m
  e2 e2/gis
  a4 \tweak X-offset #-2 g4:m/a a4
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
