% Tuhan_Maha_Kasih.ly
\version "2.25.29"

\include "../../solmisasi-ly/solmisasi-ly.ily"
\debugOff

\include "../__includes/svg-animation-init.ily"

\include "../__includes/gj-music-template.ily"

\paper {
  page-breaking =
  #(if is-svg?
       ly:one-page-breaking
       ly:optimal-breaking)

  paper-width = 240\mm
  % #(if is-svg?
  %        (* 224 mm)
  %        (* 210 mm))
}

% Layout overrides
SolmisasiLayout = \layout {
  $(if SolmisasiLayout SolmisasiLayout)
  \context {
    \Score
    \override StaffHighlight.after-line-breaking = #add-data-bar-to-highlight
    \omit BarNumber
  }
  \context {
    \SolmisasiStaff

    #(if is-svg?
         (ly:parser-include-string
          "\\consists #Simple_highlight_engraver
           \\consists Staff_highlight_engraver
           \\consists #Bar_timing_collector"))

    \consists Divisi_line_engraver
    \override DivisiVoiceFollower.bound-details.right.padding = 1.2
    \override DivisiVoiceFollower.bound-details.left.padding = 1.2
    \override DivisiVoiceFollower.gap = 0.2

    \override TimeSignature.stencil = ##f
    beamExceptions = #'()
    beatBase = #1/4
    beatStructure = 1,1,1,1
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #0.75
  }
  \context {
    \ChordNames
    \consists "Bar_engraver"
    \override BarLine.bar-extent = #'(-1 . 3)
    \override ChordName.font-size = #-1.25
    \override ChordName.color = "#333333"
  }
}

% Data
\include "Tuhan_Maha_Kasih_ly_main.ly"

% Output
\include "../../solmisasi-ly/ly/choir.ily"
