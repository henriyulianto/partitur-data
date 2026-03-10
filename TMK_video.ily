% TMK_video.ily
\version "2.25.29"

\include "../solmisasi-ly/solmisasi-ly.ily"
\debugOff

#(set-global-staff-size (* 240/210 20))

\include "./__includes/shapeII.ily"

\include "./__includes/svg-animation-init.ily"

\include "./__includes/gj-music-template.ily"

\paper {
  indent = 0\mm
  short-indent = 0\mm
  right-margin = 10\mm
  top-margin = -5\mm
  bottom-margin = 5\mm
  last-bottom-spacing.padding = 2
  bookTitleMarkup = ##f
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f
  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  ragged-last = ##f
}

% Layout overrides
SolmisasiLayout = \layout {
  $(if SolmisasiLayout SolmisasiLayout)
  \context {
    \Score
    \override StaffHighlight.after-line-breaking = #add-data-bar-to-highlight
    \omit BarNumber
    \override SystemStartBracket.padding = #4
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

    \override InstrumentName.X-offset = #-3.0
    \override InstrumentName.font-series = #'bold
    \override TimeSignature.stencil = ##f

    beamExceptions = #'()
    beatBase = #1/4
    beatStructure = 1,1,1,1
  }
  \context {
    \SolmisasiVoice
    \shapeII #'((0.05 0.25)(0 0.3)(0 0.3)(-0.05 0.25)) Slur
    \shapeII #'((0.05 0.25)(0 0.3)(0 0.3)(-0.05 0.25)) PhrasingSlur
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #0.75
    \override LyricText.Y-offset = #1.0
    \override LyricHyphen.Y-offset = #1.15
  }
  \context {
    \ChordNames
    %\consists "Bar_engraver"
    %\override BarLine.bar-extent = #'(-1 . 3)
    \override ChordName.font-size = #-1.25
    \override ChordName.color = "#333333"
  }
}

TMK_Global = {
  \omit SolmisasiKeyChangeMark
  \override Score.Beam.extra-offset = #'(0 . -0.3)
  %\disallowPageBreak
  \numericTimeSignature
  \time 4/4
  \set Score.beamExceptions = #'()
  \set Score.beatBase = #1/4
  \set Score.beatStructure = 1,1,1,1
  \key b \major
  %\once\omit Score.MetronomeMark
  \tag#'midi { \tempo 4 = 66 }
}