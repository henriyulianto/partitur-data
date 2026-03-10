\version "2.25.26"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating jazz-style chords
% Borrowed from Jean-Pierre's good work at:
%               https://sites.google.com/site/jpgzic/home
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% modification of the procedure "chordRootNamer"
%---- Definition of chord alterations -------
#(define (JazzChordNames pitch majmin)	;majmin is a required argument for "chordNamer", but not used here
   (let* ((alt (ly:pitch-alteration pitch))
          (letter (vector-ref #("C" "D" "E" "F" "G" "A" "B")
                              (ly:pitch-notename pitch)))
          (flatStr (vector-ref #("es" "es" "s" "es" "es" "s" "es")
                               (ly:pitch-notename pitch))))
     (make-line-markup
      (list
       (make-simple-markup letter)
       ;; If it's natural, do nothing
       (if (= alt 0)
           (make-line-markup (list empty-markup))
           (if (= alt FLAT)
               ;; Otherwise, handle adding the flat symbol
               (make-line-markup
                (list
                 (make-hspace-markup 0.0)
                 ;(make-small-markup (make-raise-markup 0.4
                 (make-simple-markup flatStr)
                 ))
               ;; or handle adding the sharp symbol
               (make-line-markup
                (list
                 (make-hspace-markup 0.0)
                 ;(make-small-markup (make-raise-markup 0.7
                 (make-bold-markup "is")))))))))

%----- markup commands to make it easier to write chords -----
%----- this section can be adapted as desired (I don't like "MI" and "MA", for example)
% for minor chords, use "acMin" to print a small "m"
#(define-markup-command (acMin layout props extension) (string?)
   (interpret-markup layout props
                     (markup #:small "m" #:super extension)))

% for major chords, use "acMaj" to print a small "M"
#(define-markup-command (acMaj layout props extension) (string?)
   (interpret-markup layout props
                     (markup #:super "M" #:super extension)))

% for chords with up to three alterations, stacked on top of each other
#(define-markup-command (acAlt layout props strA strB strC) (string? string? string?)
   (interpret-markup layout props
                     (markup
                      #:super strA
                      #:fontsize 1.5 "["
                      #:fontsize -4
                      #:raise 1.2
                      #:column (strB strC)
                      #:fontsize 1.5 "]"
                      )
                     )
   )

% modify the built-in "chordNameExceptions"
%----- change chord exceptions for jazz notation -----
%
%	degrés 			markup				% écriture
JazzChordsList = {
  % minor third chords - 3 notes
  <c es ges>1-\markup { \normal-weight "dim" } % :dim
  <c es g>-\markup { \normal-weight \acMin #"" } % :m

  % minor third chords - 4 notes
  <c es ges beses>-\markup { \normal-weight \super "7dim" } % :dim7
  <c es gis>-\markup { \normal-weight \acMin #"aug" } % :m5+ (Ab/C)
  <c es g a>-\markup { \normal-weight \acMin #"6" } % :m6
  <c es ges bes>-\markup { \normal-weight \concat { "m7" \super "(b5)" } } % :m7.5-
  %<c es ges bes>-\markup { \normal-weight "ø" } % :m7.5-
  <c es g bes>-\markup { \normal-weight "m7" } % :m7
  <c es gis bes>-\markup { \normal-weight \acMin #"7 #5" } % :m7.5+
  <c es g b>-\markup { \normal-weight \acMin #"M7" } % :m7+
  <c es g d'>-\markup { \normal-weight \acMin #"add9" } % :m5.9

  % minor third chords - 5+ notes
  <c es g a d'>-\markup { \normal-weight \acMin #"6/9" } % :m6.9
  <c es g bes des'>-\markup { \normal-weight \acMin #"7(b9)" } % :m7.9-
  <c es g bes d'>-\markup { \normal-weight \acMin #"9" } % :m9
  <c es ges bes d'>-\markup { \normal-weight \acMin #"9(b5)" } % :m9.5-
  <c es g b d'>-\markup { \normal-weight \acMin #"9(M7)" } % :m9.7+
  <c es g bes dis'>-\markup { \normal-weight \acMin #"7(#9)" } % :m7.9+
  <c es g bes f'>-\markup { \normal-weight \acMin #"7(add 11)" } % :m7.11
  <c es g bes a'>-\markup { \normal-weight \acMin #"7(add 13)" } % :m7.13
  <c es g bes d' f'>-\markup { \normal-weight \acMin #"11" } % :m11
  <c es ges bes d' f'>-\markup { \normal-weight \acMin #"11(b5)" } % :m11.5-
  <c es g bes d' f' a'>-\markup { \normal-weight \acMin #"13" } % :m13

  % major third chords - 3 notes
  <c e ges>-\markup { \normal-weight \super "b5" } % :5-
  <c e gis>-\markup { \normal-weight \super "aug" } % :aug

  <c e g a>-\markup { \normal-weight "6" }

  % major third chords - 4 notes
  <c e g a d'>-\markup {
    \normal-weight
    \super "6"
    \hspace #-0.5 \raise #0.7 \tiny "/"
    \hspace #-0.5 \tiny "9"
  }	% :6.9
  % special chords
  <c e g bes>-\markup { \normal-weight "7" } % :7
  <c e g bes c'>-\markup { \normal-weight \super "7(Alt)" } % :c:8
  <c e g b>-\markup { \normal-weight "M7" } % :maj
  <c e ges b>-\markup { \normal-weight \acMaj #"7b5" } % :maj.5-
  <c e gis b>-\markup { \normal-weight \acMaj #"7#5" } % :maj.5+

  <c e ges bes>-\markup { \normal-weight \super "7(b5)" } % :7.5-
  <c e gis bes>-\markup { \normal-weight \super "7(#5)" } % :7.5+
  <c e g d'>-\markup { \normal-weight "add9" } % :3.5.9

  % major third chords - 5+ notes
  <c e g b d'>-\markup { \normal-weight \acMaj #"9" } % :maj9
  <c e g bes des'>-\markup { \normal-weight \super "7(b9)" } % :9-
  <c e ges bes des'>-\markup { \normal-weight \override #'(baseline-skip . 2) \acAlt #"7" #"b9" #"b5" } % :9-.5-
  <c e gis bes des'>-\markup { \normal-weight \override #'(baseline-skip . 2) \acAlt #"7" #"b9" #"#5" } % :9-.5+
  <c e g bes d' fis'>-\markup { \normal-weight \super "9(#11)" } % :9.11+
  <c e g bes dis'>-\markup { \normal-weight \super "7(#9)" } % :9+
  <c e ges bes dis'>-\markup { \normal-weight \override #'(baseline-skip . 2) \acAlt #"7" #"#9" #"b5" } % :9+.5-
  <c e gis bes dis'>-\markup { \normal-weight \override #'(baseline-skip . 2) \acAlt #"7" #"#9" #"#5" } % :9+.5+
  <c e g bes fis'>-\markup { \normal-weight \super "7(#11)" } % :7.11+
  <c e g bes aes'>-\markup { \normal-weight \super "7(b13)" } % :7.13-
  <c e g b d' f'>-\markup { \normal-weight \acMaj #"11" } % :maj11
  <c e g b d' a' >-\markup { \normal-weight \acMaj #"13" } % :maj13
  <c e g bes d' a' >-\markup { \normal-weight \super "13" } % :13
  <c e g bes des' a' >-\markup { \normal-weight \super "13(b9)" } % :13.9-

  % sustained chords
  <c d g>-\markup { \normal-weight "sus2" } % :sus2
  <c f g>-\markup { \normal-weight "sus" } % :sus4
  <c f g bes>-\markup { \normal-weight \super "7sus" }  % :sus4.7
  <c f g bes d'>-\markup { \normal-weight \super "9sus" }  % :sus4.7.9
  <c f g dis'>-\markup { \normal-weight \super "#9sus" }  % :sus4.9+
}

% variable needed to use chord exceptions
JazzChords = #(append (sequential-music-to-chord-exceptions JazzChordsList #t) ignatzekExceptions)

% modify the default ChordNames context
\layout {
  \context {
    \ChordNames
    chordRootNamer = #JazzChordNames	% update the chord names
    chordNameExceptions = #JazzChords	% update the chord exceptions
    %\override ChordName.fonts.sans = #"Norfolk PlainChords Sans Std"
    \override ChordName.font-size = #-1
    %\override ChordName.font-name = #"lilyjazz-chord"  % use the custom font for displaying the chords
  }
}



%{
convert-ly.py (GNU LilyPond) 2.25.26  convert-ly.py: Processing `'...
Applying conversion: 2.19.16, 2.19.22, 2.19.24, 2.19.28, 2.19.29,
2.19.32, 2.19.39, 2.19.40, 2.19.46, 2.19.49, 2.20.0, 2.21.0, 2.21.2,
2.22.0, 2.23.1, 2.23.2, 2.23.3, 2.23.4, 2.23.5, 2.23.6, 2.23.7,
2.23.8, 2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14, 2.24.0,
2.25.0, 2.25.1, 2.25.2, 2.25.3, 2.25.4, 2.25.5, 2.25.6, 2.25.8,
2.25.9, 2.25.11, 2.25.12, 2.25.13, 2.25.18, 2.25.22, 2.25.23, 2.25.24,
2.25.25, 2.25.26
%}
