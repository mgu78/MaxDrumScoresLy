\header {
  \version "2.24.1"
  title = "And here we test our power of observation"
  composer = "The Bad Plus / drums: David King"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}


\score {
\layout { }
  \midi {
    \tempo 4 = 120
}
    

\new DrumStaff <<
 % \set Score.barNumberVisibility = #all-bar-numbers-visible
 % \set midiInstrument = #"Drums"
  \set Staff.instrumentName = #"drums"
  \set DrumStaff.drumStyleTable = #agostini-drums-style
  \drummode {
  \time 4/4
  \tempo 4 = 126
    %  \repeat unfold 14 cymr4
   % \stemUp
   %  <<  {\repeat unfold 7 cymr4}  >>   
   % << {\repeat unfold 4 hh8 hh16 hh}  >> \break
   % \stemDown
     << {r2 bd16 sn sn sn sn sn sn sn } >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r8 \parenthesize sn16 \parenthesize sn r4 }  >> 
      << { \repeat unfold 8 hh8 } \\  {\parenthesize sn4 bd4 sn bd}  >> \break
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r4 sn16 sn r8  }  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r8 sn8 r4 }  >> 
      << { \repeat unfold 8 hh8 } \\  {sn4 bd sn bd}  >> 
      << {<< bd16 hh16>> sn hh hh sn-> hh8. << bd16 hh16>> sn << bd16 hh16>> sn hh hh sn8-> }  >> \break
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r4 sn16 sn r8  }  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn4 bd8 sn4 bd8}  >> 
      << { \repeat unfold 7 hh8 hh16 hh } \\  {sn4 bd8 sn4 bd16 \parenthesize sn bd16 \parenthesize sn8. }  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r4 sn4}  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd sn4 bd}  >> \break
      << { \repeat unfold 4 hh8 hh4 r4 } \\  {sn4 bd16 sn sn8_> r8 sn16 sn sn sn sn sn}  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r sn r8 \parenthesize sn16 \parenthesize sn}  >>
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd sn4 bd}  >> 
      << { \repeat unfold 8 hh8 } \\  {sn4 bd8 sn4 bd8 sn4 }  >> \break
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r8 sn8 sn4}  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r8 \parenthesize sn16 \parenthesize sn bd4}  >> 
      << { \repeat unfold 2 hh8 hh4 r2 } \\  {sn4 bd16 sn sn sn sn sn sn sn sn sn sn sn}  >>  \break
      << { \repeat unfold 8 hh8 } \\  {bd4 r sn r8 bd}  >> 
      << { \repeat unfold 8 hh8 } \\  {r8 bd bd4 sn4 r8 bd8}  >> 
      << { \repeat unfold 8 hh8 } \\  {r8 bd bd4 sn4 r8 bd8}  >> 
      << { \repeat unfold 8 hh8 } \\  {r8 bd bd4 sn4 r8 bd8}  >> \break
      << { \repeat unfold 8 hh8 } \\  {r8 bd bd4 sn4 r8 bd8}  >> 
      << { \repeat unfold 8 hh8 } \\  {r8 bd bd4 sn4 sn8 bd8}  >> 
      << { \repeat unfold 8 hh8 } \\  {r4 bd4 sn4 r8 bd8}  >> 
      << { \repeat unfold 4 hh8 hh4 r } \\  {r8 bd sn4 bd8 sn16 sn sn sn sn sn}  >> \break
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r8 \parenthesize sn16 \parenthesize sn r4 }  >> 
      << { \repeat unfold 8 hh8 } \\  {\parenthesize sn4 bd4 sn bd}  >> 
      << { \repeat unfold 7 hh8 hh16 hh } \\  {sn4 bd8 sn r bd16 \parenthesize sn bd16 \parenthesize sn8. }  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd r8 \parenthesize sn16 sn r4}  >> \break
      << { \repeat unfold 8 hh8 } \\  {\parenthesize sn4 bd4 sn4 bd4}  >> 
      << {  } \\  {sn16 sn sn sn sn8_> sn16 sn sn sn sn8_>  r4}  >> 
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd4 sn8 bd4}  >> 
      << { \repeat unfold 8 hh8 } \\  {\parenthesize sn4 bd4 sn4 bd4}  >> \break
      << { \repeat unfold 8 hh8 } \\  {bd4 sn8 bd4 sn8 bd4}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> 
      << { \repeat unfold 8 hh8 } \\  {}  >> \break

      
%       << { hh8-> hh hh hh hh hh hh hh } \\  {bd4 sn8 bd r sn bd bd}  >>
%       << { hh8 hh hh hh hh hh hh hh } \\  {<<bd8. sn>> \parenthesize sn16 bd8 sn r8 bd8 sn4}  >> \break
%       << { hh8 hh hh hh hh hh hh hh } \\  {bd8 bd8 sn4 r16 sn16 bd8 r <<bd sn >>}  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {r8 bd8 sn4 bd16 \parenthesize sn sn8 r8. sn16}  >> \break
%       << { hh8 hh hh hh hh hhho hh hhho } \\  {bd8 bd8 sn4 r16 sn16 bd8 r16 sn16 bd8}  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {r8 bd8 sn4 bd8  sn8 r8. sn16}  >> \break
%       << { hh8 hh hh hh hh hh hh hh } \\  {bd4  <<sn8. bd>> \parenthesize sn16 bd8 <<bd8 sn>> r16 sn bd8}  >>
%       << { hh8 hh hh hh hh hh hh hh } \\  {r16 bd sn8-> sn8-> bd bd16 \parenthesize sn <<sn8 bd>> r16 \parenthesize sn16 bd sn}  >> \break
%       << { hh8-> hh hh-> hh hh hhho hh hh } \\  {bd4  <<sn4 bd>> r16 sn bd8 r << sn8 bd>>}  >>
%       << { hh8 hh hh hh hh hh hh hh } \\  {r8 bd sn4 bd16 \parenthesize sn sn8 r8. sn16}  >> \break
%       << { hh8 hh hh hh hh hhho hh hh } \\  {bd4  <<sn4 bd>> r16 sn bd8 r << sn8 bd>>}    >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {r8 bd sn4 bd8 sn8 r8 bd}  >> \break
%       << { hh8 hh hh hh hh hhho hh hh } \\  {<<sn8 bd>> sn16 sn <<sn8 bd>> bd16 sn r8 bd r sn}  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {r8 bd sn4 bd16 \parenthesize sn sn8 r8. sn16}  >> \break
%       << { hh8 hh hh hh hh hh hh hh } \\  {bd8 bd sn bd8 bd sn bd bd }  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {r8 sn8_"bzz" r16 bd8  bd16 sn8._"bzz" sn16 sn sn sn sn}  >> \break \pageBreak
% 
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> \break
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> \break
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> \break
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> 
%       << { hh8 hh hh hh hh hh hh hh } \\  {}  >> \break




   }
>>
}
