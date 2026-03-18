\version "2.25.29"

\include "solmisasi-ly.ily"
\debugOff

\include "gj-music-template.ily"

\header {
  dedication = ##f
  title = "Persembahan Insani"
  subtitle = ##f
  footer-title = "Persembahan Insani"
  composer-pre-text = "Lagu oleh"
  composer = "GISTARA Music & Antonia Filicia Esa Rindi"
  arranger-pre-text = "Aransemen oleh"
  arranger = "Henri Yulianto"
  poet-pre-text = ##f
  poet = ##f
  meter = ##f
  meter-post-text = ##f
  instrument-pre-text = ##f
  instrument = ##f
  instrument-id = "SATB"
  nada-dasar = "Do = D, Do = Es"
  sukat-dan-mm = \markup {
    "6/8 &ndash; MM (3/8)" = \italic c. 50-55
  }
  copyright = ##f
}

#(set-global-staff-size (* (/ 10 11) 20))

TimeSignatureSettings = {
  \numericTimeSignature
  \tweak stencil ##f \time 6/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatBase = #1/8
  \set Timing.beatStructure = 3.3
}

Global = {
  \TimeSignatureSettings
  \override Score.Beam.extra-offset = #'(0 . -0.35)
  \omit Score.BarNumber
  \omit Score.SolmisasiEquivalenceNoteText
  \disallowPageBreak
  \disallowLineBreak
  \once\omit Score.MetronomeMark
  \tempo 4=48
  \key d \major
  \sectionLabel \markup\bold\caps " Intro :"
  s2.*8 \break \bar "||"

  \once\override Score.RehearsalMark.X-offset = #-2.5
  \mark \default
  s2.*4 \break
  s2.*5 \break

  \once\override Score.RehearsalMark.X-offset = #-2.5
  \mark \default
  s2.*4 \break
  s2.*5 \break

  \once\override Score.RehearsalMark.X-offset = #-2.5
  \mark \default
  s2.*4 s4. \break

  \once\override Score.RehearsalMark.X-offset = #-2.5
  \mark \default
  s4.
  s2.*5 \pageBreak
  s2.*5 \break
  s2.*5 \break
  s2.*4 \break

  \mark "Interlude" \default
  s2.*4 \pageBreak \bar "||"

  \once\override Score.RehearsalMark.X-offset = #-2.5
  \mark \default
  s2.*4 \break
  s2.*5 \break

  \once\override Score.RehearsalMark.X-offset = #-2.5
  \mark \default
  s2.*4 s4. \break

  \once\override Score.RehearsalMark.X-offset = #-3
  \mark \default
  \key es \major
  s4.
  s2.*5 \break
  s2.*5 \pageBreak
  s2.*5 \break
  s2.*5 s4. \break
  s4. s2.*7 \bar "|."
}

InstrumentCueInstrumentName = ""
InstrumentCueShortInstrumentName = \InstrumentCueInstrumentName
InstrumentCueMusic = {
  \magnifyStaff #30/32
  \TimeSignatureSettings
  \key d \major
  a'4. d'8 fis' a'
  cis''8. b'8. a'8. g'8.
  a'4. cis'8 d' fis'
  a'8. g'8. fis'8. e'8.
  %\break
  fis'4. b8 d' e'
  fis'4. b8 d' e'
  fis'8. g' e' d'
  e'4.( e'4.)

}

SopranoInstrumentName = "S."
SopranoShortInstrumentName = \SopranoInstrumentName
SopranoMusic = {
  \TimeSignatureSettings
  \clef "treble"
  \key d \major
  s2.*8

  s2.*4
  g'8  g'8  a'8  b'8  a'8  g'8 | % 14
  fis'8  fis'8  g'8  a'4 r16  d'16 | % 15
  e'8  e'8  e'8  e'8  fis'8  gis'8 | % 16
  a'2. (| % 17
  a'4.) r4. | % 18

  s2.*9

  s2.*4 s4.

  d'8 -\mf  e'8  fis'8 | % 32
  fis'4.  e'4. | % 33
  d'4.  d'8  e'8  fis'8 | % 34
  a'4.  g'4. | % 35
  g'4.  d'8  e'8  fis'8 | % 36
  a'8  g'8  fis'8  g'4. | % 37
  a'8  g'8  fis'8  g'8  fis'8  d'8
  | % 38
  e'2. ( | % 39
  e'4 ) r8  d'8  e'8  fis'8 |
  fis'4.  e'4. | % 41
  d'4.  d'8  e'8  fis'8 | % 42
  a'4.  g'4 (  a'8 ) | % 43
  ais'2. | % 44
  r4.  a'8  g'8  e'8 | % 45
  fis'8  e'8  d'8  g'4. | % 46
  g'8  fis'8  e'8  d'8  d'8  fis'8
  | % 47
  e'2. ( | % 48
  e'4) r8  d'8  e'8  fis'8 | % 49
  a'8  g'8  fis'8  g'1*5/16
  d'16 |
  a'8 -\>  g'8  fis'8  g'8  fis'8
  d'8 -\! | % 51
  d'2. ( | % 52
  d'4.) r4. | % 53
  r2. r2.

  r2. r2.
  d'8 -\mp  d'8  e'8  fis'8  e'8
  d'8 | % 58
  cis'4  d'8  cis'4 r8 | % 59
  g'8  g'8  a'8  b'8  a'8  g'8 |
  fis'4  g'8  a'4 r8 | % 61
  e'4  e'8  e'8  d'8  cis'8 | % 62
  d'2. ( | % 63
  d'4.) r4. | % 64

  s2.*4 s4.

  \key es \major
  es'8 -\mf  f'8  g'8 | % 32
  g'4.  f'4. | % 33
  es'4.  es'8  f'8  g'8 | % 34
  bes'4.  as'4. | % 35
  as'4.  es'8  f'8  g'8 | % 36
  bes'8  as'8  g'8  as'4. | % 37
  bes'8  as'8  g'8  as'8  g'8  es'8
  | % 38
  f'2. ( | % 39
  f'4 ) r8  es'8  f'8  g'8 |
  g'4.  f'4. | % 41
  es'4.  es'8  f'8  g'8 | % 42
  bes'4.  as'4 (  bes'8 ) | % 43
  b'2. | % 44
  r4.  bes'8  as'8  f'8 | % 45
  g'8  f'8  es'8  as'4. | % 46
  as'8  g'8  f'8  es'8  es'8  g'8
  | % 47
  f'2. ( | % 48
  f'4) r8  es'8  f'8  g'8 | % 49
  bes'8  as'8  g'8  as'1*5/16
  es'16 |
  bes'8   as'8  g'8  as'8  g'8
  es'8 | % 51
  es'2. ( | % 52
  es'4) r8 es'8  f'8  g'8 | % 49
  bes'8  as'8  g'8  as'1*5/16
  es'16 |
  bes'8 -\>  as'8  g'8  as'8  g'8
  es'8 -\! | % 51
  es'2. ( | % 52
  es'4.) r4.
  R2.*3
}

AltoInstrumentName = "A."
AltoShortInstrumentName = \AltoInstrumentName
AltoMusic = {
  \setStaffShortInstrumentName "SA."
  \TimeSignatureSettings
  \clef "treble"
  \key d \major
  s2.*8
  fis'8 -\mp  g'8  a'8  a'8  g'8
  fis'8 |
  e'4  fis'8  e'4 r8 | % 11
  d'8  d'8  e'8  fis'8  e'8  d'8 | % 12
  cis'4  d'8  e'4 r8 | % 13
  \resetStaffShortInstrumentName
  b8  b8  cis'8  d'8  d'8  e'8
  | % 14
  d'8  d'8  e'8  fis'4 r16  d'16 | % 15
  cis'8  cis'8  cis'8  b8  d'8
  e'8 | % 16
  d'2 (  e'8  d'8 | % 17
  cis'4. ) r4. | % 18

  s2.*9

  s2.*4 s4.

  d'8  e'8  d'8 | % 32
  d'4.  cis'4. | % 33
  d'4.  b8  cis'8  d'8 | % 34
  b4.  b4 (  d'8 ) | % 35
  c'4.  c'8  c'8  c'8 | % 36
  d'8  d'8  d'8  d'4. | % 37
  fis'8  e'8  d'8  e'8  d'8  d'8
  | % 38
  c'4. (  d'4. | % 39
  cis'4 ) r8  d'8  e'8  d'8 |
  d'4.  cis'4. | % 41
  d'4.  b8  cis'8  d'8 | % 42
  b4.  b4 (  d'8 ) | % 43
  e'2. | % 44
  r4.  a'8  g'8  e'8 | % 45
  fis'8  e'8  d'8  g'4. | % 46
  e'8  d'8  b8  b8  b8  d'8 | % 47
  e'4. (  d'4. | % 48
  cis'4 ) r8  d'8  e'8  fis'8 | % 49
  a'8  g'8  fis'8  g'1*5/16
  d'16 |
  fis'8  e'8  d'8  d'8  d'8
  b8  | % 51
  a2. ( | % 52
  a4. ) r4. | % 53
  r2. r2. | % 55

  r2. r2.
  b8  b8  cis'8  d'8  cis'8
  b8 | % 58
  a4  b8  a4 r8 | % 59
  d'8  d'8  d'8  g'8  fis'8  e'8
  d'4  e'8  fis'4 r8 | % 61
  e'4  e'8  e'8  d'8  cis'8 | % 62
  d'2. ( | % 63
  d'4.) r4. | % 64

  s2.*4 s4.

  \key es \major
  es'8  f'8  es'8 | % 32
  es'4.  d'4. | % 33
  es'4.  c'8  d'8  es'8 | % 34
  c'4.  c'4 (  es'8 ) | % 35
  des'4.  des'8  des'8  des'8 | % 36
  es'8  es'8  es'8  es'4. | % 37
  g'8  f'8  es'8  f'8  es'8  es'8
  | % 38
  des'4. (  es'4. | % 39
  d'4 ) r8  es'8  f'8  es'8 |
  es'4.  d'4. | % 41
  es'4.  c'8  d'8  es'8 | % 42
  c'4.  c'4 (  es'8 ) | % 43
  f'2. | % 44
  r4.  bes'8  as'8  f'8 | % 45
  g'8  f'8  es'8  as'4. | % 46
  f'8  es'8  c'8  c'8  c'8  es'8 | % 47
  f'4. (  es'4. | % 48
  d'4 ) r8  es'8  f'8  g'8 | % 49
  bes'8  as'8  g'8  as'1*5/16
  es'16 |
  g'8  f'8  es'8  es'8  es'8
  c'8  | % 51
  bes2. ( | % 52
  bes4 ) r8 es'8  f'8  g'8 | % 49
  bes'8  as'8  g'8  as'1*5/16
  es'16 |
  g'8  f'8  es'8  es'8  es'8
  c'8  | % 51
  bes2. ( | % 52
  bes4.) r4.
  R2.*3

}

TenorInstrumentName = "T."
TenorShortInstrumentName = \TenorInstrumentName
TenorMusic = {
  \clef "treble_8"
  \TimeSignatureSettings
  \key d \major
  s2.*8

  s2.*4
  s2.*5

  a8 -\mp  a8  a8  b8  g8
  fis8 | % 19
  g4  fis8  e4 r8 |
  d8  d8  e8  fis8  e8  d8
  | % 21
  cis4  d8  cis4 r8 | % 22
  g8  g8  a8  b8  a8  g8 | % 23
  fis4  g8  a4 r8 | % 24
  e4  e8  e8  d8  cis8 | % 25
  d2. ( | % 26
  d4.) r4. | % 27

  s2.*4 s4.

  r4.
  b8 -\mf  b8  b8  a4  a8 | % 33
  fis4. r4. | % 34
  g8  g8  g8  g8 (  fis8 )
  g8 | % 35
  a4.  fis8  g8  a8 | % 36
  a8  b8  b8  b4. | % 37
  a8  b8  b8  b4. | % 38
  g4.  fis4 (  g8 ) | % 39
  a4 r8 r4. |
  b8  b8  b8  a4  a8 | % 41
  fis4. r4. | % 42
  g8  g8  g8  g4  b8 | % 43
  d'2. | % 44
  r4.  a8  g8  e8 | % 45
  fis8  e8  d8  g4. | % 46
  b8  a8  g8  g8  g8  fis8
  | % 47
  g4  g8  g8  fis8  g8 | % 48
  a4 r8  d8  e8  fis8 | % 49
  a8  g8  fis8  g1*5/16
  d16 |
  a8 -\>  b8  b8  b8  b8
  g8 -\! | % 51
  fis2. ( | % 52
  fis4.) r4. | % 53
  r2. r2. | % 55

  a8 -\mp  a8  a8  b8  g8
  fis8 | % 56
  g4  fis8  e4 r8 | % 57
  r2. r2. | % 59
  b8  b8  d'8  d'8  d'8
  b8 |
  a4  a8  b4 r8 | % 61
  r2. | % 62
  a4  a8  b8  a8  g8 | % 63
  fis4. r4. | % 64

  s2.*4 s4.

  \key es \major
  r4.
  c'8 -\mf  c'8  c'8  bes4  bes8 | % 33
  g4. r4. | % 34
  as8  as8  as8  as8 (  g8 )
  as8 | % 35
  bes4.  g8  as8  bes8 | % 36
  bes8  c'8  c'8  c'4. | % 37
  bes8  c'8  c'8  c'4. | % 38
  as4.  g4 (  as8 ) | % 39
  bes4 r8 r4. |
  c'8  c'8  c'8  bes4  bes8 | % 41
  g4. r4. | % 42
  as8  as8  as8  as4  c'8 | % 43
  es'2. | % 44
  r4.  bes8  as8  f8 | % 45
  g8  f8  es8  as4. | % 46
  c'8  bes8  as8  as8  as8  g8
  | % 47
  as4  as8  as8  g8  as8 | % 48
  bes4 r8  es8  f8  g8 | % 49
  bes8  as8  g8  as1*5/16
  es16 |
  bes8 -\>  c'8  c'8  c'8  c'8
  as8 -\! | % 51
  g2. ( | % 52
  g4) r8 es8  f8  g8 | % 49
  bes8  as8  g8  as1*5/16
  es16 |
  bes8 -\>  c'8  c'8  c'8  c'8
  as8 -\! | % 51
  g2. ( | % 52
  g4.) r4.
  R2.*3
}

BassInstrumentName = "B."
BassShortInstrumentName = \BassInstrumentName
BassMusic = {
  \clef "bass"
  \TimeSignatureSettings
  \key d \major
  s2.*8

  s2.*4
  s2.*5

  fis8  fis8  fis8  g8
  e8  d8 | % 19
  e4  d8  cis4 r8 |
  b,8  b,8  cis8  d8  cis8  b,8
  | % 21
  a,4  b,8  a,4 r8 | % 22
  b,8  b,8  cis8  d8  d8
  e8 | % 23
  d4  e8  fis4 r8 | % 24
  e4  e8  e8  d8  cis8 | % 25
  d2. ( | % 26
  d4. ) r4. | % 27

  \setStaffShortInstrumentName ""
  g8^\markup "SATB Unis."  g8  g8  g8  fis8
  g8 | % 28
  fis4  g8  fis1*5/16
  d16 | % 29
  g8  g8  g8  b8  a8
  gis8 |
  a2.| % 31
  r4.

  \resetStaffShortInstrumentName
  r4.
  g8  g8  g8  a4  a8
  | % 33
  d4. r4. | % 34
  e8  e8  e8  e8 (  d8 )
  b,8 | % 35
  a,4.  d8  e8  fis8 | % 36
  g8  g8  d8  g4. | % 37
  e8  e8  b,8  e4. | % 38
  c4.  b,4. | % 39
  a,4 r8 r4. |
  g8  g8  g8  a4  a8 | % 41
  d4. r4. | % 42
  e8  e8  e8  e4  fis8 | % 43
  g2. | % 44
  r4.  a8  g8  e8 | % 45
  fis8  e8  d8  g4. | % 46
  e8  e8  e8  d8  d8
  d8 | % 47
  c4  c8  b,8  b,8  b,8 | % 48
  a,4 r8  d8  e8  fis8 | % 49
  a8  g8  fis8  g1*5/16
  d16 |
  e8   e8  e8  a,8  a,8
  a,8  | % 51
  d2. ( | % 52
  d4. ) r4. | % 53
  r2. r2. | % 55

  fis8  fis8  fis8  g8
  e8  d8 | % 56
  e4  d8  cis4 r8 | % 57
  r2. r2. | % 59
  g8  g8  g8  e8  e8
  e8 |
  fis4  e8  dis4 r8 | % 61
  r2. | % 62
  fis4  fis8  g8  fis8
  e8 | % 63
  d4. r4. | % 64

  \setStaffShortInstrumentName ""
  g8^\markup "SATB Unis."  g8  g8  g8  fis8
  g8 | % 28
  g4  g8  fis1*5/16
  d16 | % 29
  g8  g8  g8  b8  a8
  gis8 |
  a2.| % 31
  r4.

  \key es \major
  \resetStaffShortInstrumentName
  r4.
  as8  as8  as8  bes4  bes8
  | % 33
  es4. r4. | % 34
  f8  f8  f8  f8 (  es8 )
  c8 | % 35
  bes,4.  es8  f8  g8 | % 36
  as8  as8  es8  as4. | % 37
  f8  f8  c8  f4. | % 38
  des4.  c4. | % 39
  bes,4 r8 r4. |
  as8  as8  as8  bes4  bes8 | % 41
  es4. r4. | % 42
  f8  f8  f8  f4  g8 | % 43
  as2. | % 44
  r4.  bes8  as8  f8 | % 45
  g8  f8  es8  as4. | % 46
  f8  f8  f8  es8  es8
  es8 | % 47
  des4  des8  c8  c8  c8 | % 48
  bes,4 r8  es8  f8  g8 | % 49
  bes8  as8  g8  as1*5/16
  es16 |
  f8   f8  f8  bes,8  bes,8
  bes,8  | % 51
  es2. ( | % 52
  es4) r8 es8  f8  g8 | % 49
  bes8  as8  g8  as1*5/16
  es16 |
  f8   f8  f8  bes,8  bes,8
  bes,8  | % 51
  es2. ( | % 52
  es4. ) r4. | % 53
  R2.*3

}


AltoLyrics = \lyricmode {
  Tri -- ma -- lah sem -- bah \tweak X-offset #-0.8 syu -- kur ka -- "mi,"
  di ha -- dap -- an al -- tar ku -- \tweak X-offset #-0.7 dus -- "Mu;"
  Se -- ge -- nap da -- ya u -- pa -- ya di -- "ri,"
  sa -- tu -- kan de -- ngan cin -- ta -- "Mu. " __

  Ro -- ti \tweak X-offset #-0.6 ang -- gur i -- ni
  wu -- jud bak -- ti di -- "ri;"
  Te -- ri -- ma -- "lah," ya Tu -- "han," ni --
  at ba -- tin in -- sa -- "ni. " __

  La -- yak -- \tweak X-offset #-0.7 kan -- lah ka -- mi
  sam -- but E -- ka -- ris -- "ti:" __
  Lam -- bang hi -- dup se -- ja -- ti
  yang "'kan" me -- nun -- tun ka -- "mi; " __
  Tu -- nai -- kan tu -- gas su -- "ci, "
  ga -- pai mah -- ko -- ta a -- ba -- "di." __

  ba -- lut -- lah ji -- wa \tweak X-offset #-1.1 yang ter -- lu -- "ka;"
  Pan -- tas -- kan ka -- mi \tweak X-offset #-0.7 "'tuk" ber -- sa -- tu
  de -- ngan kur -- ban \tweak X-offset #-0.9 Kris -- "tus. " __

  Ro -- ti \tweak X-offset #-0.6 ang -- gur i -- ni
  wu -- jud bak -- ti di -- "ri;"
  Te -- ri -- ma -- "lah," ya Tu -- "han," ni --
  at ba -- tin in -- sa -- "ni. " __

  La -- yak -- \tweak X-offset #-0.7 kan -- lah ka -- mi
  sam -- but E -- ka -- ris -- "ti:" __
  Lam -- bang hi -- dup se -- ja -- ti
  yang "'kan" me -- nun -- tun ka -- "mi; " __
  Tu -- nai -- kan tu -- gas su -- "ci, "
  ga -- pai mah -- ko -- ta a -- ba -- "di." __

  Tu -- nai -- kan tu -- gas su -- "ci, "
  ga -- pai mah -- ko -- ta a -- ba -- "di." __

}

BassLyrics = \lyricmode {
  Pan -- dang -- lah ha -- ti \tweak X-offset #-1.1 yang ber -- su -- "ka,"
  ba -- lut -- lah ji -- wa \tweak X-offset #-1.1 yang ter -- lu -- "ka;"
  Pan -- tas -- kan ka -- mi \tweak X-offset #-0.7 "'tuk" ber -- sa -- tu
  de -- ngan kur -- ban \tweak X-offset #-0.9 Kris -- "tus. " __

  Mes -- ki di -- ri ka -- mi tak su -- "ci, "
  su -- di -- lah Kau mem -- ber -- ka -- "ti. " __

  Ro -- ti ang -- gur i -- ni
  wu -- jud bak -- "ti " di -- "ri;"
  Te -- ri -- ma -- "lah," ya Tu -- "han,"
  ni -- at ba -- tin in -- sa -- "ni."
  La -- yak -- kan -- lah ka -- mi
  sam -- but E -- ka -- ris -- "ti:" __
  Lam -- bang hi -- dup se -- ja -- ti
  yang "'kan" me -- nun -- tun ka -- "mi,"
  me -- nun -- tun ka -- "mi;"
  Tu -- nai -- kan tu -- gas su -- "ci, "
  ga -- pai mah -- ko -- ta a -- ba -- "di. " __

  Pan -- dang -- lah ha -- ti \tweak X-offset #-1.1 yang ber -- su -- "ka,"
  Pan -- tas -- kan ka -- mi \tweak X-offset #-0.7 "'tuk" ber -- sa -- tu
  de -- ngan kur -- ban \tweak X-offset #-0.9 Kris -- "tus. "

  Mes -- ki di -- ri ka -- mi tak su -- "ci, "
  su -- di -- lah Kau mem -- ber -- ka -- "ti. " __

  Ro -- ti ang -- gur i -- ni
  wu -- jud bak -- "ti " di -- "ri;"
  Te -- ri -- ma -- "lah," ya Tu -- "han,"
  ni -- at ba -- tin in -- sa -- "ni."
  La -- yak -- kan -- lah ka -- mi
  sam -- but E -- ka -- ris -- "ti:" __
  Lam -- bang hi -- dup se -- ja -- ti
  yang "'kan" me -- nun -- tun ka -- "mi,"
  me -- nun -- tun ka -- "mi;"
  Tu -- nai -- kan tu -- gas su -- "ci, "
  ga -- pai mah -- ko -- ta a -- ba -- "di. " __

  Tu -- nai -- kan tu -- gas su -- "ci, "
  ga -- pai mah -- ko -- ta a -- ba -- "di. " __

}


\paper {
  indent = 0\mm
  ragged-last = ##f
  oddFooterMarkup = \markup {
    \override #'(baseline-skip . 3.2)
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \if \on-first-page-of-part
        \abs-fontsize #9.5 \fromproperty #'header:copyright
      }
      \vspace #0.3
      \fill-line {
        \draw-hline
      }
      \with-color #footer-text-color
      \abs-fontsize #9 \fill-line {
        \line {
          \hspace #1.3
          \italic \fromproperty #'header:footer-title
        }
        \null
        \line {
          \if \should-print-page-number
          \concat {
            \fromproperty #'page:page-number-string
            "/"
            \page-ref #'lastPage "0" "?"
          }
          \hspace #1.3
        }
      }
    }
  }
}

\include "choir.ily"