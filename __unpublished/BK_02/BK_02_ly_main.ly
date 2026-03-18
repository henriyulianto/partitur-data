% TMK_01_ly_main.ly
% -*- master: BK_02.ly;
#(set-global-staff-size (* 260/210 20))
% SETTINGS
SolmisasiStaffSize = #(* 260/210 20)
MIDIExtension = "midi"
ExportMIDI = ##t

\include "../BK_video.ily"

Global = {
  \BK_Global
  \omit SolmisasiKeyChangeMark
  \key des \major
  \disallowPageBreak
  %\disallowLineBreak

  %% SOLO
  \partial 2 s2
  %\set Score.proportionalNotationDuration = #1/8

  s1*4 \break

  s1*4 \break

  s1*4 \break

  s1*2
  \override Score.RehearsalMark.extra-offset = #'(5 . -1.7)
  \mark "(Interlude)" ""
  s1*0
  %
  %   s1*6 \break

}

SoloInstrumentName = \markup "So."
SoloShortInstrumentName = \SoloInstrumentName
SoloMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key des \major

  \partial 2 r8 f'8 f'8 as'8
  f'8 f'4 f'16 es'16 des'8 des'4 as'8 | % 21
  bes'2. r8 bes'8 | % 22
  c''8 bes'8 as'8 g'8
  ges'4 es'8 e'8 | % 23
  f'2. r4 | % 24
  bes'4 es'8 f'8 ges'4.   bes'8 | % 25
  as'8 as'4 f'16 \( es'16 \) des'4 r8 des'8 | % 26
  es'8 f'8 ges'8 es'8   c'8 c'4 as8 | % 27
  as'2. r4 | % 28
  es'8 f'8 ges'8 es'8   c'4 c''4 | % 29
  as'2. r8 as'8 | % 30
  bes'4 es'8 \( f'8 \) ges'4.
  bes'8 | % 31
  as'4 f'8 \( es'8 \) des'2 | % 32
  ges'4\( f'4 \) es'4. es'8 | % 33
  es'4 des'2. % 34
  \bar "||"
}

SoloLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  %   Ba -- pa \tweak X-offset #-0.7 ka -- mi \tweak X-offset #-3 yang a -- da di sur -- ga,
  %   di -- mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" lah \tweak X-offset #-0.5 na- \tweak X-offset #-0.6 ma- Mu.
  %   Da -- \tweak X-offset #-2 tang -- lah \markup{ \undertie "kera" "-" } ja -- an -- Mu,
  %   ja -- di -- \tweak X-offset #-0.5 lah ke -- hen -- \tweak X-offset #-1.2 dak -- Mu
  %   di a -- tas bu -- mi \tweak X-offset #-0.5 se -- per -- ti di \tweak X-offset #-0.5 da -- lam \tweak X-offset #-1.2 sur -- ga.
  %   Be -- ri -- lah ka -- mi re -- ze -- ki pa -- da ha -- ri i -- ni.
  \tweak X-offset #-2.5 Dan am -- pu -- \syairDiKiri ni -- \syairDiKiri lah ke -- sa -- \syairDiKiri lahan \skip1 ka -- mi
  \tweak X-offset #-2.8 s'per- ti ka -- mi pun me -- ngam -- \syairDiKiri puni \skip1
  \syairDiKiri yang ber -- sa -- \syairDiKiri lah ke -- pa -- da \tweak X-offset #0 ka- \skip1 mi.
  \tweak X-offset #-2.0 Dan ja -- ngan -- lah ma -- suk -- \syairDiKiri kan ka -- mi
  \tweak X-offset #0 ke da -- lam \tweak X-offset #-1.2 "pen -" co -- ba -- an,
  ta -- pi \tweak X-offset #0 be -- \skip1 \syairDiKiri bas -- kan -- lah \tweak X-offset #0 ka -- \skip1 \syairDiKiri mi \tweak X-offset #0 da -- \skip1 ri \tweak X-offset #-3.0 "yang " \syairDiKiri ja -- hat.
}

Chords = \chordmode {
  \transpose c des {
    %     s1
    %     c1
    %     e1:m
    %     f2 g2
    %     \tweak X-offset #-0.5 e4:m \tweak X-offset #-1 e4:m/d \tweak X-offset #-2 a4/cis \tweak X-offset #-1.3 a4/a
    %     d2:m g2:7
    %     \tweak X-offset #-1 c4 \tweak X-offset #-1 g4/b a2:m
    %     d2 d2/fis
    %     \tweak X-offset #-0.5 g4 \tweak X-offset #-3 f4:m/g g2
    %
    %     c1
    %     e1:m
    %     f2 g2
    %     \tweak X-offset #-0.5 e4:m \tweak X-offset #-1 e4:m/d \tweak X-offset #-2 a4/cis \tweak X-offset #-1.3 a4/a
    %     d2:m g2:7/b
    %     \tweak X-offset #-1 c4 \tweak X-offset #-1 g4/b a2:m
    %     d2:m g2
    %     \tweak X-offset #-1 c4 \tweak X-offset #-2 c4:sus

    \partial 2 c4 g4
    c2 c2/e
    f4 \tweak X-offset #-1.2 a4/cis d2:m
    g2 g2:7
    c2 c2/e
    f2 g4 g4/f
    e2:m a2:m
    \tweak X-offset #-1 d2:m g2
    e2:m a2:m7
    d2:m g4 g4/f
    e2:m \tweak X-offset #-4 g4:m7/c c4:7
    f2 g2:7/f
    e2:m a2:m
    d2:m g2:m
    \set Score.proportionalNotationDuration = #1/8
    \tweak X-offset #-2 c4:sus2 c2.
  }
}