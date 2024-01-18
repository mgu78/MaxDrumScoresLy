\language "english"
\header {
  \version "2.24.1"
  title = "Neerg & Der"
  composer = "Moses Yofee Trio/ drums: Noah Furbringer "
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
    \tempo 4 = 150
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
   \stemUp
   %  <<  {\repeat unfold 7 cymr4}  >>   
   % << {\repeat unfold 4 hh8 hh16 hh}  >> \break
   % \stemDown
      << \repeat percent 3 { sn16 sn sn sn r8 sn16 sn sn sn  r8 sn16 sn r8} >> 
      << {ss16-> ss <<bd ss>> ss-> r16   ss16->ss ss->  sn sn ss-> ss->  sn16 ->sn-> r8}  \\   {hhp8 hhp hhp hhp hhp hhp hhp   r8}>>\break
      <<{r1} >>
      <<{r1} >>
      <<{r1} >>
       \time 7/8 
       <<{sn32 sn sn16 sn32 sn sn16 sn32 sn sn16 sn32 sn sn16 sn32 sn sn16-> sn-> sn 32 sn  sn16->  sn-> } >>\break
       \time 4/4
      <<  {cymc8->  hh16 hh hh8->   hh16 hh hh16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd4 sn8. 	bd16 bd4 sn}   >>
      <<  {hh16->  \parenthesize sn hh hh hh8->   hh16 hh hho16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd8 bd sn8. bd16 bd4 sn}   >>
      <<  {hh16->  \parenthesize sn hh hh hh8->   hh16 hh hho16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd4 sn8. 	bd16 bd4 sn}   >>
      <<  {hh16->  \parenthesize sn hh hh hh8->   hh16 hh hh16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd8 bd sn4 r8 bd8 sn4}   >> \break
      <<  {hho16->  \parenthesize sn hh hh hh8->   hh16 hh hh16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd8 bd sn4 	r8  bd8 sn8. bd16}   >>
      <<  {hho16->  \parenthesize sn hh hh hh8->   hh16 hh hh16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd4  sn4   r8 bd8 sn8. bd16}   >>
      <<  {hh16->  \parenthesize sn hh hh hh8->   hh16 hh hho16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd8 bd sn8. 	bd16 bd4 sn}   >>
      <<  {hh16->  \parenthesize sn hh hh hh8->   hh16 hh hh16->  \parenthesize sn hh hh hh8->   hh16 hh } \\  {bd8 bd sn4 r8 bd8 sn4}   >> \break
     <<{} >>
     <<{} >>
     <<{} >>
 
     
  %    << {<<bd 8 hhho  >> << bd8 hhho>><< bd8 hhho>>  hh hh16 hh sn-> sn-> hh \parenthesize sn hh hh } >>
%       << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>
%       << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
%       << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>\break
%       << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
%      
      
      


   }
>>
}
