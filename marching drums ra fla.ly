%{
  LilyPond file definitions for Highland snare drum scores.
  Version 2.0
  Originally contributed by Simon Froger, with help from
  Pierre Perol-Schneider and Gilles Thibault.
  
  Please save the following definitions as scottish-drums.ily
  and add this line to your score:
  \include "[path]/scottish-drums.ily"
  
  Music should then be written inside
  \new DrumStaff {
    \drummode {
     [music]
    }
  }
  or by using the \drums { [music] } shortcut.

QUICK GUIDE:

d: (`droit’) right hand stroke
g: (`gauche’) left hand stroke
21
->: accent
\v: strong accent
  
FLA and DRAG are to be inserted *before* the note.

RA takes the following note as an argument,
optionally preceded by a number to be
printed as the tremolo count.

%}

% note names definition:
% d for the right hand, g for the left one.
drumPitchNames =
#(append
  '((d . main-droite)
    (g . main-gauche))
  drumPitchNames)

% right hand should be printed above the staff line,
% left hand below.
#(define mysnaredrums
   '((main-droite  default  #f  1)
     (main-gauche  default  #f  -1)))

% marges internes :
\paper {
  markup-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #15
}

\layout {
  indent = 0
  % Stems need to make some room for RA count numbers.
  % If actual ordinary markups are required, these will
  % need to be preceded with \textLengthOff
  \textLengthOn
  \dynamicUp
  \set DrumStaff.drumStyleTable = #(alist->hash-table mysnaredrums)
  \context {
    \DrumStaff
    % one-line staff
    \override StaffSymbol.line-positions = #'(0)
    % bar lines
    \override BarLine.bar-extent = #'(-2 . 2)
    % stems
    \override Stem.direction = #-1
    \override Stem.length = #11
    \override Stem.stemlet-length = #1.5
    % horizontal beams
    \override Beam.positions = #'(-5.5 . -5.5)
    % RA count numbers below the curves
    \override TextScript.outside-staff-priority = ##f
    \override TextScript.side-axis = #0
    \override TextScript.staff-padding = #3
    \override TextScript.X-offset = #2
    \override TextScript.extra-offset = #'(-0.3 . 0)
    % tremolos (RA)
    \override StemTremolo.slope = #0.5
    \override StemTremolo.beam-width = #1.5
    \override StemTremolo.beam-thickness = #0.3
    \override StemTremolo.extra-offset = #'(0 . 0.6)
    %\override StemTremolo.Y-offset = #-3.3
    % Repeat brackets:
    \consists "Horizontal_bracket_engraver"
    \override HorizontalBracket.staff-padding = #8
    \override HorizontalBracket.direction = #DOWN
    \override HorizontalBracket.bracket-flare = #'(0 . 0)
  }
  \context {
    \Score
    \override RehearsalMark.break-align-symbols = #'(clef)
    \override RehearsalMark.padding = #3
    \override VoltaBracket.edge-height = #'(1.5 . 1.5)
  }
}

% grace notes :
startGraceMusic = {
  \stemUp
  \tiny
  \override Flag.stroke-style = #"grace"    % slashed stems
  \once \override Beam.positions = #'(3 . 3)  % beam position for drag notes
  \once \override DrumStaff.Stem.length = #7  % end beam position
}
stopGraceMusic =  {
  %\override Beam.positions = #'(-6 . -6)
  \revert Flag.stroke-style
  %\revert DrumStaff.Stem.length
  \normalsize
  \stemNeutral
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%      SPECIAL FUNCTIONS:      %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% TRIPLETS & QUINTUPLETS:

triplet =
#(define-music-function (myMusic) (ly:music?)
   #{ \drummode { \tuplet 3/2 { #myMusic } } #})

quintuplet =
#(define-music-function (myMusic) (ly:music?)
   #{ \drummode { \tuplet 5/4 { #myMusic } } #})


% DYNAMICS:
v =
#(define-event-function () ()
   #{ \upbow #})

% DYNAMICS WITH EXTENDERS:
dynLine =
#(define-music-function (text) (markup?)
   #{
     \once \override TextSpanner.style = #'line
     \once \override TextSpanner.bound-details.left.text = \markup {
       \combine
       \draw-line #'(0 . -1)
       \draw-line #'(1 . 0)
       \dynamic #text
     }
     \once \override TextSpanner.bound-details.right.text = \markup {
       \draw-line #'(0 . -1)
     }
   #})


% REPEAT BRACKETS:
% Beginning:
dr =
#(define-event-function () ()
   #{ \startGroup #})
% Ending :
fr =
#(define-event-function () ()
   #{ \stopGroup #})

% On one single note :
rn = \markup \lower #4 \halign #1 {
  \path #0.1 #'((moveto 0 0)
                (lineto 0 -1)
                (lineto 2 -1)
                (lineto 2 0))
}



% FLAS and DRAGS:
fla =
#(define-music-function (myNote) (ly:music?)
   (define test
     (filter
      (lambda (m)
        (= (ly:music-property m 'span-direction 0) -1))
      (extract-named-music myNote '(NoteGroupingEvent))))
   (if (not (null? test))
       (music-filter
        (lambda (event)
          (not (member
                (ly:music-property event 'name)
                '(NoteGroupingEvent))))
        myNote))
   (if (eq? (ly:music-property myNote 'drum-type) 'main-droite)
       (if (null? test)
           #{ \drummode { \grace g8 #myNote } #}  
           #{ \drummode { \grace g8\startGroup #myNote } #}
           )
       (if (null? test)
           #{ \drummode { \grace d8 #myNote } #}
           #{ \drummode { \grace d8\startGroup #myNote } #}
           )))

drag =
#(define-music-function (myNote) (ly:music?)
   (define test
     (filter
      (lambda (m)
        (= (ly:music-property m 'span-direction 0) -1))
      (extract-named-music myNote '(NoteGroupingEvent))))
   (if (not (null? test))
       (music-filter
        (lambda (event)
          (not (member
                (ly:music-property event 'name)
                '(NoteGroupingEvent))))
        myNote))
   (if (eq? (ly:music-property myNote 'drum-type) 'main-droite)
       (if (null? test)
           #{ \drummode { \grace { g16[ g] } #myNote } #}
           #{ \drummode { \grace { g16[\startGroup g] } #myNote } #}
           )
       (if (null? test)
           #{ \drummode { \grace { d16[ d] } #myNote } #}
           #{ \drummode { \grace { d16[\startGroup d] } #myNote } #}
           )))


% RA:
ra =
#(define-music-function (myRa myNote) ((integer?) ly:music?)
   (define myCoef (ly:duration-log (ly:music-property myNote 'duration)))
   (set! (ly:music-property myNote 'articulations)
         (cons
          (make-music 'TremoloEvent 'tremolo-type 
            (* (if (> 8 myRa) 4 8) (expt 2 (if (= 1 myCoef) 2 myCoef)))
            )
          (ly:music-property myNote 'articulations)))
   (if (and (not (null? myRa))
            (< 0 myRa))
       (set! (ly:music-property myNote 'articulations)
             (cons
              (make-music 'TextScriptEvent 'direction -1 'text
                (number->string myRa))
              (ly:music-property myNote 'articulations))))
   myNote)

% BEAM SUBDIVISIONS:
divLig =
{
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = 2,2,2,2,2
}

% FLA & DRAG COMBINATIONS:
flad = \drummode { \grace { g8 } }                      % right Fla
fladdr = \drummode { \grace { g8\startGroup } }         % with start repeat
flag = \drummode { \grace { d8 } }                      % left Fla
flagdr = \drummode { \grace { d8\startGroup } }         % with start repeat
dragd = \drummode { \grace{ g16[ g] }}                  % right Drag
dragddr = \drummode { \grace{ g16[\startGroup g] }}     % with start repeat
dragg = \drummode { \grace{ d16[ d] }}                  % left Drag
draggdr = \drummode { \grace{ d16[\startGroup d] }}     % with start repeat

% ====== END OF INCLUDED FILE =======================

% Now a tiny example :
\score {
  \new DrumStaff {
    \drummode {
      \time 6/8
      \partial 8 \ra 7 d8( |
      \repeat volta 2 {
        g8.[) g16 \dragd d8] d8.[ d16 \dragg g8] |
        g8.[ \dragd d16 d8] d8.[ d16 \dragg g8] |
        \fladdr d8. d16 g8 \ra 13 d4.( |
        d8.) g16 d8 \flag g4 \ra 7 d8( \fr |
        \break
        g8.[) g16 \dragd d8] d8.[ d16 \dragg g8] |
        g8.[ \dragd d16 d8] d8.[ d16 \dragg g8] |
        \fladdr d8. \ra 5 d16( d8) \flad d8. d16 \flag g8 |
        \ra 5 d8.( d16) \flag g8 \flad d4. \fr |
      }
    }
  }
}

