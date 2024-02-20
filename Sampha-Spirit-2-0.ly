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
     <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh32 hh16.->  hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {r4 ss4 r4 ss4}   >>
     
      \repeat percent 12 {<<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {r4 ss4 r4 ss4}   >>}  \break
    << {r2 \tuplet 6/4 {sn16 sn sn sn sn sn} \tuplet 3/2 {ss8 ss ss} \tuplet 3/2 {sn8:32 sn8:32 sn8:32 } r4 r \acciaccatura ss16 ss4 }>>
    <<{r1 r}>>
  << {r2 \tuplet 6/4 {sn16 sn sn sn sn sn} \tuplet 3/2 {ss8 ss ss} \tuplet 3/2 {sn8:32 sn8:32 sn8:32 } r4 r \acciaccatura ss16 ss4 }>>
 <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32 hh16 hh hh32 hh16 hh32  } \\ 
          {bd4 ss8. ss16  r4 ss8. ss16}   >>
 <<  {hh16 hh hh32 hh16 hh32 hh16 hh hh8 r2 } \\ 
          {r4 ss8 r32 ss32 ss16->   \tuplet 6/4 {sn16 sn sn sn sn sn}   ss8-> ss  }   >>
 <<  {hh16 hh hh hh hh hh hh hh hh hh hh hh hh hh hh hh   } \\ 
          {r8 bd16 bd bd bd ss8 r16.  ss32 bd16 bd ss4 }   >>
 <<  {hh16 hh hh hh hh hh hh hh hh32 hh hh16 hh32 hh hh16 hh hh hh hh   } \\ 
          {r16.  ss32 bd16 bd          bd bd ss16. ss32 r4 ss8.. ss32  }   >>
 <<  {hh16 hh hh hh hh hh hh hh hh32 hh hh16 hh hh hh hh hh hh   } \\ 
          {r8 bd16 bd bd bd ss16. ss32  r4 ss8.. ss32 }   >>
 <<  {hh16 hh hh hh hh hh hh hh hh32 hh hh16  hh hh16 hh hh hh8   } \\ 
          {r8 bd16 bd          bd bd ss16. ss32 r4 ss8 r32 ss32 ss16->  }   >>
 <<  {hh16 hh hh hh hh hh hh hh hh32 hh hh16  hh hh16 hh hh hh hh   } \\ 
          {r16.  ss32 bd16 bd          bd bd ss16. ss32 r4 ss4 }   >>
 <<  {hh16 hh hh hh hh hh hh hh hh32 hh hh16->  hh hh16 hh hh hh hh   } \\ 
          {r16.  ss32 bd16 bd          bd bd ss16. ss32 r4 ss8 ss16. ss32  }   >>
  <<  {hh16 hh hh hh hh hh hh hh hh32 hh hh16  hh hh16 hh hh hh hh   } \\ 
          { r8 bd16 bd          bd bd ss16. ss32 r4 ss8. ss32 ss }   >>
  <<  {hh16 hh hh hh hh hh hh hh hh32 hh hh16  hh hh16 hh hh hh hh   } \\ 
          { r8 bd16 bd          bd bd ss16. ss32 r4 ss8. ss32 ss }   >>
  
 %    << {<<bd 8 hhho  >> << bd8 hhho>><< bd8 hhho>>  hh hh16 hh sn-> sn-> hh \parenthesize sn hh hh } >>
%       << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>
%       << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
%       << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>\break
%       << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
%      
      
      


   }
>>
}
