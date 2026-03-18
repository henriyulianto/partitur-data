% TMK_01_ly_main.ly
% -*- master: BK_01.ly;
#(set-global-staff-size (* 260/210 20))
% SETTINGS
SolmisasiStaffSize = #(* 260/210 20)
MIDIExtension = "midi"
ExportMIDI = ##t

\include "../BK_video.ily"

Global = {
  \BK_Global
  \override Score.SolmisasiKeyChangeMark.extra-offset = #'(-4 . -2.2)
  \key des \major
  %\disallowPageBreak
  %\disallowLineBreak

  %% SOLO
  \partial 4 s4
  %\set Score.proportionalNotationDuration = #1/8

  s1*4 \break |
  s1*4 \break |
  s1*4 \break |
  s1*3 s2
}

SoloInstrumentName = \markup "So."
SoloShortInstrumentName = \SoloInstrumentName
SoloMusic = {
  \clef "treble"
  \numericTimeSignature
  \time 4/4
  \key des \major
  \disallowPageBreak
  \disallowLineBreak

  \partial 4 r8 as8 % 0
  des'4. f'8 as'4. des''8 | % 5
  c''8 as'8 as'8 f'8 as'4 r8 f'8 | % 6
  bes'4. ges'8 es'8 es'4 as'16 bes'16 | % 7
  as'2. r4 | % 8
  ges'4. as'8 ges'4. as'8 | % 9
  f'4 as'4 des''2 | % 10
  es''4. des''8 c''4 \tuplet 3/2 {
    c''8 des''8 es''8
  }
  | % 11
  as'2.

  r8 as8 |

  des'8 des'4 f'8   as'4. des''8 | % 13
  c''4. ( bes'8 ) as'2 | % 14
  bes'4. ges'8 es'4. bes'8 | % 15
  as'2. r4 | % 16

  ges'4. as'8 ges'4 ges'8   as'8 | % 17
  f'4 as'4 des''2 | % 18
  es''4. des''8 c''4   des''8 es''8 | % 19
  des''2

  % r8 f'8 f'8 as'8
  %   f'8 f'4 f'16 es'16 des'8 des'4 as'8 | % 21
  %   bes'2. r8 bes'8 | % 22
  %   c''8 bes'8 as'8 g'8
  %   ges'4 es'8 e'8 | % 23
  %   f'2. r4 | % 24
  %   bes'4 es'8 f'8 ges'4.   bes'8 | % 25
  %   as'8 as'4 f'16 \( es'16 \) des'4 r8 des'8 | % 26
  %   es'8 f'8 ges'8 es'8   c'8 c'4 as8 | % 27
  %   as'2. r4 | % 28
  %   es'8 f'8 ges'8 es'8   c'4 c''4 | % 29
  %   as'2. r8 as'8 | % 30
  %   bes'4 es'8 \( f'8 \) ges'4.
  %   bes'8 | % 31
  %   as'4 f'8 \( es'8 \) des'2 | % 32
  %   ges'4\( f'4 \) es'4. es'8 | % 33
  %   es'4 des'2. % 34
  %   \bar "||"
}

SoloLyrics = \lyricmode {
  \set ignoreMelismata = ##t
  Ba -- \syairDiKiri pa \tweak X-offset #-0.7 ka -- mi \tweak X-offset #-3 yang a -- da di sur -- ga,
  di -- \syairDiKiri mu -- \tweak X-offset #-0.5 \markup { \undertie "lia" "-" } \tweak X-offset #-1.0 "kan -" \syairDiKiri lah \tweak X-offset #-0.5 na- \tweak X-offset #-0.6 ma- Mu.
  \syairDiKiri Da -- \tweak X-offset #-2 tang -- \syairDiKiri lah \markup{ \undertie "kera" "-" } ja -- an -- \syairDiKiri Mu,
  \syairDiKiri ja -- di -- \tweak X-offset #-0.5 lah ke -- hen -- \tweak X-offset #-1.2 dak -- Mu
  di a -- \syairDiKiri tas bu -- \syairDiKiri mi \tweak X-offset #-0.5 se -- \syairDiKiri per -- \skip1 ti \syairDiKiri  di da -- \syairDiKiri lam \tweak X-offset #-1.2 sur -- ga.
  \syairDiKiri Be -- ri -- lah ka -- mi re -- ze -- ki \syairDiKiri pa -- da ha -- ri i -- \syairDiKiri ni.
  %   \tweak X-offset #-2.5 Dan am -- pu -- ni -- lah ke -- sa -- la -- han ka -- mi
  %   \tweak X-offset #-2.8 s'per- ti ka -- mi pun me -- ngam -- pu -- ni
  %   yang ber -- sa -- lah ke -- pa -- da \tweak X-offset #0 ka- \skip1 mi.
  %   \tweak X-offset #-2.8 Dan ja -- ngan -- lah ma -- suk -- kan \tweak X-offset #-0.8 ka- mi
  %   ke da -- lam pen -- co -- ba -- an,
  %   ta -- pi \tweak X-offset #0 be -- \skip1 bas -- kan -- lah \tweak X-offset #0 ka -- \skip1 mi \tweak X-offset #0 da -- \skip1 ri yang ja -- hat.
}

Chords = \chordmode {
  \partial 4 s4
  \transpose c des {
    c1
    e1:m
    f2 g2
    \tweak X-offset #-0.5 e4:m \tweak X-offset #-1 e4:m/d \tweak X-offset #-2 a4/cis \tweak X-offset #-1.3 a4/a
    d2:m g2:7
    c4 \tweak X-offset #-1 g4/b a2:m
    d2 d2/fis
    \tweak X-offset #-0.5 g4 \tweak X-offset #-3 f4:m/g g2

    c1
    e1:m
    f2 g2
    \tweak X-offset #-0.5 e4:m \tweak X-offset #-1 e4:m/d \tweak X-offset #-2 a4/cis \tweak X-offset #-1.3 a4/a
    d2:m g2:7/b
    c4 \tweak X-offset #-1 g4/b a2:m
    d2:m g2
    c4 \tweak X-offset #-2 c4:sus

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
}