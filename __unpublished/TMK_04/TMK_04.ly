% TMK_01.ly
\version "2.25.29"

% SETTINGS
SolmisasiStaffSize = #(* 240/210 20)
MIDIExtension = "midi"
ExportMIDI = ##t

\include "TMK_04_ly_main.ly"

\paper {
  #(set-paper-size "16:9")
  indent = 0\mm
  short-indent = \indent
  left-margin = 18\mm
  right-margin = 10\mm
  top-margin = 0\mm
  bottom-margin = 5\mm
  last-bottom-spacing.padding = 2
  bookTitleMarkup = ##f
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f
  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  ragged-last = ##f
}

% Output
\include "../../solmisasi-ly/ly/choir.ily"
