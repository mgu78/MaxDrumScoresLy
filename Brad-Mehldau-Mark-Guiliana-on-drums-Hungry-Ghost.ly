\header {
  title = "Hungry Ghost"
  composer = "Brad Mehldau / drums: Mark Guiliana"
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
  \time 7/4
  \tempo 4 = 220
    %  \repeat unfold 14 cymr4
    \stemUp
   %  <<  {\repeat unfold 7 cymr4}  >>   
    << {\repeat unfold 7 cymr4}  >> \break
   % \stemDown
     << {bd4 r r bd sn r r8 \parenthesize sn16 \parenthesize sn } >>
     << {bd4 r sn r8 sn bd bd sn sn r sn} >> \break
     << {bd4 bd r8 \parenthesize sn r bd sn4 r r} >>
     << {bd4 r8 <<bd sn>> r4 bd8 sn sn bd sn sn r sn} >> \break
%     << {bd4 } >>
%     << {bd4} >> \break
     << {bd4 bd r bd sn r bd } >>
     << {sn4 r bd r8 bd r4 bd r8 sn} >> \break
     << {sn8 sn r sn bd4 r8 bd sn4 r r } >>
     << {bd4 r8 bd r sn bd sn sn bd \repeat unfold 4 tomfl} >> \break
     << {bd4 bd bd r sn r r } >>
     << {bd4 r sn r bd sn8 sn r sn } >> \break
     << {bd8 sn sn bd sn bd sn4 r bd r8 bd } >>
     << {sn4 r8 sn sn bd r sn r sn sn bd r sn } >> \break
     << {bd4 r bd bd sn r r  } >>
     << {bd4 r sn r8 sn bd bd sn bd r sn } >> \break
     << {bd8 sn sn bd r sn bd sn sn bd sn sn bd4 } >>
     << {bd4 r8 bd r4 tomfl8 tomfl bd bd tomfl4 tomfl8 tomfl  } >> \break
     << {bd4 r bd bd sn r r } >>
     << {bd r sn r bd r8 bd r4 } >> \break
     << {bd4 r sn r8 sn sn4 r bd8 sn } >>
     << {sn8 bd r4 r r8 bd sn sn r sn sn sn } >> \break 
     \pageBreak
     << {bd4 bd bd r sn r r } >>
     << {bd4 r sn r sn8 bd r4 r } >> \break
     << {sn4 r r <<sn bd>> <<sn bd>>  r8 <<sn bd>>  r4 } >>
     << {r4 r8 <<sn bd>> r4 rr r8 <<sn bd>> r sn bd sn } >> \break
     << {sn8 sn sn sn r sn bd4 bd r8 bd r4 } >>
     << {r4 r8 bd r4 r r8 ss ss ss r ss } >> \break
     << {r4 r bd bd bd r8 bd r4 } >>
     << {r4 r sn8 sn r sn sn bd bd4 r } >> \break
     << {r8 sn sn sn sn sn sn sn  <<sn bd>> sn r sn r4 } >>
     << {sn8 sn bd sn r4 r sn r r } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break
     << { } >>
     << { } >> \break

   }
>>
}