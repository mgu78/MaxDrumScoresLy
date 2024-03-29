\header {
  \version "2.24.1"
  title = "Julie Mangos"
  composer = "Tom Misch Yussef Dayes / drums: Yussef Dayes "
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
      << {r2. r8 sn16 sn  } >> \break
      << {<<bd 8 hhho  >> << bd8 hhho>><< bd8 hhho>>  hh hh16 hh sn-> sn-> hh \parenthesize sn hh hh } >>
      << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>
      << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
      << {\parenthesize sn16 \parenthesize sn hh <<hh bd>> \parenthesize sn \parenthesize sn <<hh bd>> \parenthesize sn\parenthesize sn <<hh bd>> sn-> \parenthesize sn <<hh bd>> sn-> hh <<hh bd>> }  >>\break
      << {<<bd 8 hhho  >> << bd8 hh>><< bd8 hhho>>  hh16 \parenthesize sn hh hh sn-> sn-> hh \parenthesize sn hh hh } >> 
     
      
      


   }
>>
}
