% BK_01.ly
\version "2.25.29"

\include "BK_06_ly_main.ly"

\paper {
  #(set-paper-size "16:9")
  indent = 0\mm
  short-indent = \indent
  left-margin = 23\mm
  right-margin = 15\mm
  top-margin = 10\mm
  bottom-margin = 5\mm
  last-bottom-spacing.padding = 2
  bookTitleMarkup = ##f
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f
  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  ragged-last = ##t
}

% Output
\include "../../solmisasi-ly/ly/choir.ily"