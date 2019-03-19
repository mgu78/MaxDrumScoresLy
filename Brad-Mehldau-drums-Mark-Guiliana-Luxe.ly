\header {
  title = "Luxe"
  composer = "Brad Mehldau/ drums: Mark Guiliana"
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
  \drummode {
  \time 4/4
  \tempo 4 = 128
    %  \repeat unfold 14 cymr4
   % \stemUp
   %  <<  {\repeat unfold 7 cymr4}  >>   
   % << {\repeat unfold 4 hh8 hh16 hh}  >> \break
   % \stemDown
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd r16 bd8.}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {r8. bd16 r8 bd r16 bd8. r4}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd16 bd sn4}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {r8 r16 bd r8 bd r16 bd bd8 bd16 bd8.}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r16 bd8. r8. bd16 r4}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> 
      << { \repeat unfold 2 hh8:16 } \\  {bd8. bd16 sn16:32 sn16:32 sn16-> sn16:32 sn16-^  sn16 sn16:32  sn16:32 sn sn sn sn}  >> \break
       { \repeat unfold 16 sn16 }  \compressFullBarRests R1*15 \break
       \pageBreak
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r bd sn4}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd r sn r4. sn16:32 sn16:32}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {bd8 bd bd r sn r bd sn}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {r8 bd8 r16 bd16 r8 r8. bd16 r4}  >> \break
      << { \repeat unfold 8 hh8:16 } \\  {r4 bd8 bd bd sn r bd}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {r16 bd8.  r8. bd16 r4 r16 bd8. }  >> \break
      
      << { \repeat unfold 8 hh8:16 } \\  {}  >> 
      << { \repeat unfold 8 hh8:16 } \\  {}  >> \break
      
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