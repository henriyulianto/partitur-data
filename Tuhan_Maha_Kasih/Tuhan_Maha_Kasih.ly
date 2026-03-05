% Tuhan_Maha_Kasih.ly
\version "2.25.29"

\include "../../solmisasi-ly/solmisasi-ly.ily"
\debugOff

\include "../__includes/gj-music-template.ily"

% Data
\include "Tuhan_Maha_Kasih_ly_main.ly"

\paper {
  %#(set-paper-size '(cons (* 210 mm) (* 1000 mm)))
  indent = 0\mm
  short-indent = 0\mm
  right-margin = 10\mm
  top-margin = 5\mm
  bottom-margin = 5\mm
  last-bottom-spacing.padding = 2
  bookTitleMarkup = ##f
  oddFooterMarkup = ##f
  oddHeaderMarkup = ##f
  %system-system-spacing.padding = #5

  page-breaking =
  #(if is-svg?
       ly:one-page-breaking
       ly:optimal-breaking)

  paper-width = 240\mm
  % #(if is-svg?
  %        (* 224 mm)
  %        (* 210 mm))
}

\include "../../solmisasi-ly/ly/choir.ily"
