% Tuhan_Maha_Kasih.ly
\version "2.25.29"

\include "../../solmisasi-ly/solmisasi-ly.ily"
\debugOff

\include "../__includes/gj-music-template.ily"

\include "../__includes/svg-animation-init.ily"

% Data
\include "Tuhan_Maha_Kasih_ly_main.ly"

\paper {
  indent = 0
  page-breaking = #ly:one-line-breaking
  bookTitleMarkup = ##f
}

SolmisasiLayout = \layout {
  $(if SolmisasiLayout SolmisasiLayout)
  \context {
    \Score
    \omit BarNumber
  }
  \context {
    \SolmisasiStaff
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
    \SolmisasiVoice
    \consists \Tie_grob_engraver
    \consists #simple-fermata-data-engraver
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

\include "../../solmisasi-ly/ly/choir.ily"