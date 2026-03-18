% TMK_01_ly_one_line.ly
\version "2.25.29"

% SETTINGS
SolmisasiStaffSize = 21
MIDIExtension = "midi"
ExportMIDI = ##t

\include "BK_03_ly_main.ly"

\paper {
  indent = 0
  page-breaking = #ly:one-line-breaking
  bookTitleMarkup = ##f
}

% Output
\include "../../solmisasi-ly/ly/choir.ily"
