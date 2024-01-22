\language "english"
\header {
  \version "2.24.1"
  title = "Spirit 2.0"
  composer = "Sampha / drums: Yussef Dayes"
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
      
      \set countPercentRepeats = ##t
  \repeat percent 8 { r1}  \break
      <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {r4 ss4 r4 ss4}   >>
     <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh32 hho16. hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {r4 ss4 r4 ss4}   >>
     <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {r4 ss4 r4 ss4}   >>
     <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh32 hh16. hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {r4 ss4 r4 ss4}   >>
     <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {r4 ss4 r4 ss4}   >>
     
     
  %    << {<<bd 8 hhho  >> << bd8 hhho>><< bd8 hhho>>  hh hh16 hh sn-> sn-> hh \parenthesize sn hh hh } >>
%       << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>
%       << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
%       << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>\break
%       << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
%      
      
      


   }
>>
}
