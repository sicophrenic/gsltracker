TOURNAMENT
  league
  banner
  {mappool}
  {player(S)}
  {ro32}
  {ro16}
  {ro8}
  {ro4}
  {ro2}
MAP_POOL
  {map(S)}
MAP
  name
  {pool}
PLAYER
  name
  {race}
  {team}
RACE
  type
  {player}
TEAM
  name
  {player}
ROUND
  type
  {group(S)}
GROUP
  name
  {match} --> match1
  {match} --> match2
  {match} --> winners
  {match} --> losers
  {match} --> tiebreak
MATCH
  type
  {player} --> player1
  {player} --> player2
  {game(S)}
GAME
  {map}
  {player} --> winner
# RO32
#   {group} --> A
#   {group} --> B
#   {group} --> C
#   {group} --> D
#   {group} --> E
#   {group} --> F
#   {group} --> G
#   {group} --> H
# RO16
#   {group} --> A
#   {group} --> B
#   {group} --> C
#   {group} --> D
# RO8  
#   {match} --> match1
#   {match} --> match2
#   {match} --> match3
#   {match} --> match4
# RO4
#   {match} --> match1
#   {match} --> match2
# RO2
#   {match} --> match1

{"league"=>["2012", "GSL", "Season 2"],
 "banner"=>
  "http://wiki.teamliquid.net/starcraft/images2/thumb/3/3a/GSL2012Season2Banner.jpg/600px-GSL2012Season2Banner.jpg",
 "maps"=>
  ["Antiga Shipyard",
   "Cloud Kingdom",
   "Crossfire SE",
   "Daybreak",
   "Dual Sight",
   "Entombed Valley",
   "Metropolis",
   "ESV Ohana",
   "Atlantis Spaceship"],
 "players"=>
  {"p"=>
    ["Genius",
     "MC",
     "Puzzle",
     "PartinG",
     "Seed",
     "Oz",
     "HerO",
     "Squirtle",
     "InCa",
     "NaNiwa"],
   "t"=>
    ["aLive",
     "GuMiho",
     "MMA",
     "Mvp",
     "Ryung",
     "MarineKing",
     "Jjakji",
     "NaDa",
     "TaeJa",
     "Maru",
     "TheStC",
     "Fin",
     "SuperNoVa",
     "Virus",
     "Polt"],
   "z"=>
    ["DongRaeGu", "Zenio", "Curious", "NesTea", "BBoong", "Leenock", "July"]},
 "ro32"=>
  {"groupA"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"DongRaeGu",
       "p2"=>"TheStC",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"TheStC"},
         "game2"=>{"map"=>"Atlanthis Spaceship", "winner"=>"DongRaeGu"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"TheStC"}}},
     "match2"=>
      {"p1"=>"TaeJa",
       "p2"=>"Jjakji",
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Taeja"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Jjakji"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Jjakji"}}},
     "winners"=>
      {"p1"=>"TheStC",
       "p2"=>"Jjakji",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"TheStC"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"TheStC"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "losers"=>
      {"p1"=>"DongRaeGu",
       "p2"=>"TaeJa",
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"TaeJa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"TaeJa"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"Jjakji",
       "p2"=>"TaeJa",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"TaeJa"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"TaeJa"},
         "game3"=>{"map"=>"", "winner"=>""}}}},
   "groupB"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"Genius",
       "p2"=>"BBoong",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Genius"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"BBoong"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Genius"}}},
     "match2"=>
      {"p1"=>"Seed",
       "p2"=>"SuperNoVa",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"SuperNoVa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"SuperNoVa"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"Genius",
       "p2"=>"SuperNoVa",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Genius"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"SuperNoVa"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"SuperNoVa"}}},
     "losers"=>
      {"p1"=>"BBoong",
       "p2"=>"Seed",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Seed"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Seed"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"Genius",
       "p2"=>"Seed",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Genius"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Seed"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Genius"}}}},
   "groupC"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"aLive",
       "p2"=>"July",
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"July"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"aLive"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"July"}}},
     "match2"=>
      {"p1"=>"Zenio",
       "p2"=>"MarineKing",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"MarineKing"},
         "game2"=>{"map"=>"Atlantis Spaceship", "winner"=>"MarineKing"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"July",
       "p2"=>"MarineKing",
       "bo3"=>
        {"game1"=>{"map"=>"metropolis", "winner"=>"July"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"MarineKing"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"MarineKing"}}},
     "losers"=>
      {"p1"=>"aLive",
       "p2"=>"Zenio",
       "bo3"=>
        {"game1"=>{"map"=>"metropolis", "winner"=>"Zenio"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"aLive"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Zenio"}}},
     "tiebreak"=>
      {"p1"=>"July",
       "p2"=>"Zenio",
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"July"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Zenio"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"July"}}}},
   "groupD"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"GuMiho",
       "p2"=>"Maru",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"GuMiho"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Maru"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Maru"}}},
     "match2"=>
      {"p1"=>"HerO",
       "p2"=>"Curious",
       "bo3"=>
        {"game1"=>{"map"=>"metropolis", "winner"=>"HerO"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Curious"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"HerO"}}},
     "winners"=>
      {"p1"=>"Maru",
       "p2"=>"HerO",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"HerO"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Maru"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Maru"}}},
     "losers"=>
      {"p1"=>"GuMiho",
       "p2"=>"Curious",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Curious"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Curious"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"HerO",
       "p2"=>"Curious",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"HerO"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"HerO"},
         "game3"=>{"map"=>"", "winner"=>""}}}},
   "groupE"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"MC",
       "p2"=>"Virus",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Virus"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"MC"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Virus"}}},
     "match2"=>
      {"p1"=>"InCa",
       "p2"=>"NesTea",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"NesTea"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"NesTea"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"Virus",
       "p2"=>"NesTea",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"NesTea"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Virus"},
         "game3"=>{"map"=>"Atlantis Spaceship", "winner"=>"Virus"}}},
     "losers"=>
      {"p1"=>"MC",
       "p2"=>"InCa",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"MC"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"MC"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"MC",
       "p2"=>"NesTea",
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"MC"},
         "game2"=>{"map"=>"metropolis", "winner"=>"MC"},
         "game3"=>{"map"=>"", "winner"=>""}}}},
   "groupF"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"MMA",
       "p2"=>"Squirtle",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"MMA"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Squirtle"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Squirtle"}}},
     "match2"=>
      {"p1"=>"Leenock",
       "p2"=>"NaDa",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Leenock"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Leenock"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"Squirtle",
       "p2"=>"Leenock",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Squirtle"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Squirtle"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "losers"=>
      {"p1"=>"MMA",
       "p2"=>"NaDa",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"MMA"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"MMA"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"MMA",
       "p2"=>"Leenock",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Leenock"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Leenock"},
         "game3"=>{"map"=>"", "winner"=>""}}}},
   "groupG"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"Puzzle",
       "p2"=>"NaNiwa",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Puzzle"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"NaNiwa"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"NaNiwa"}}},
     "match2"=>
      {"p1"=>"Ryung",
       "p2"=>"Mvp",
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Ryung"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Ryung"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"NaNiwa",
       "p2"=>"Ryung",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"NaNiwa"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "losers"=>
      {"p1"=>"Puzzle",
       "p2"=>"Mvp",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Mvp"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Mvp"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"Ryung",
       "p2"=>"Mvp",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Mvp"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Mvp"},
         "game3"=>{"map"=>"", "winner"=>""}}}},
   "groupH"=>
    {"round"=>"ro32",
     "match1"=>
      {"p1"=>"PartinG",
       "p2"=>"Polt",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"PartinG"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Polt"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"PartinG"}}},
     "match2"=>
      {"p1"=>"Fin",
       "p2"=>"Oz",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Fin"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Fin"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"PartinG",
       "p2"=>"Fin",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"PartinG"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"PartinG"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "losers"=>
      {"p1"=>"Polt",
       "p2"=>"Oz",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Oz"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Oz"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"Fin",
       "p2"=>"Oz",
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Oz"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Oz"},
         "game3"=>{"map"=>"", "winner"=>""}}}}},
 "ro16"=>
  {"groupA"=>
    {"round"=>"ro16",
     "match1"=>
      {"p1"=>"Genius",
       "p2"=>"NaNiwa",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"NaNiwa"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Naniwa"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "match2"=>
      {"p1"=>"SuperNoVa",
       "p2"=>"Virus",
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"SuperNoVa"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Virus"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Virus"}}},
     "winners"=>
      {"p1"=>"NaNiwa",
       "p2"=>"Virus",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"NaNiwa"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "losers"=>
      {"p1"=>"Genius",
       "p2"=>"SuperNoVa",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"SuperNoVa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"SuperNoVa"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"Virus",
       "p2"=>"SuperNoVa",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"SuperNoVa"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"SuperNoVa"},
         "game3"=>{"map"=>"", "winner"=>""}}}},
   "groupB"=>
    {"round"=>"ro16",
     "match1"=>
      {"p1"=>"Mvp",
       "p2"=>"July",
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Mvp"},
         "game2"=>{"map"=>"Atlantis Spaceship", "winner"=>"July"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Mvp"}}},
     "match2"=>
      {"p1"=>"HerO",
       "p2"=>"Leenock",
       "bo3"=>
        {"game1"=>{"map"=>"metropolis", "winner"=>"HerO"},
         "game2"=>{"map"=>"Atlantis Spaceship", "winner"=>"Leenock"},
         "game3"=>{"map"=>"antombed valley", "winner"=>"HerO"}}},
     "winners"=>
      {"p1"=>"Mvp",
       "p2"=>"HerO",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"HerO"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Mvp"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"HerO"}}},
     "losers"=>
      {"p1"=>"July",
       "p2"=>"Leenock",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Leenock"},
         "game2"=>{"map"=>"Atlantis Spaceship", "winner"=>"Leenock"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"Mvp",
       "p2"=>"Leenock",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Leenock"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Mvp"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Mvp"}}}},
   "groupC"=>
    {"round"=>"ro16",
     "match1"=>
      {"p1"=>"PartinG",
       "p2"=>"TheStC",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"PartinG"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"PartinG"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "match2"=>
      {"p1"=>"MarineKing",
       "p2"=>"TaeJa",
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"MarineKing"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"MarineKing"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"PartinG",
       "p2"=>"MarineKing",
       "bo3"=>
        {"game1"=>{"map"=>"metropolis", "winner"=>"PartinG"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"MarineKing"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"PartinG"}}},
     "losers"=>
      {"p1"=>"TheStC",
       "p2"=>"TaeJa",
       "bo3"=>
        {"game1"=>{"map"=>"metropolis", "winner"=>"TaeJa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"TaeJa"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "tiebreak"=>
      {"p1"=>"MarineKing",
       "p2"=>"TaeJa",
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"TaeJa"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"TaeJa"},
         "game3"=>{"map"=>"", "winner"=>""}}}},
   "groupD"=>
    {"round"=>"ro16",
     "match1"=>
      {"p1"=>"MC",
       "p2"=>"Maru",
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Maru"},
         "game2"=>{"map"=>"metropolis", "winner"=>"MC"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Maru"}}},
     "match2"=>
      {"p1"=>"Oz",
       "p2"=>"Squirtle",
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Squirtle"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Squirtle"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "winners"=>
      {"p1"=>"Maru",
       "p2"=>"Squirtle",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Squirtle"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Squirtle"},
         "game3"=>{"map"=>"", "winner"=>""}}},
     "losers"=>
      {"p1"=>"MC",
       "p2"=>"Oz",
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Oz"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"MC"},
         "game3"=>{"map"=>"metropolis", "winner"=>"Oz"}}},
     "tiebreak"=>
      {"p1"=>"Maru",
       "p2"=>"Oz",
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Maru"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Oz"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Oz"}}}}},
 "ro8"=>
  {"matches"=>
    {"round"=>"ro8",
     "match1"=>
      {"p1"=>"NaNiwa",
       "p2"=>"Mvp",
       "bo5"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Mvp"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Mvp"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"NaNiwa"},
         "game4"=>{"map"=>"Daybreak", "winner"=>"Mvp"},
         "game5"=>{"map"=>"", "winner"=>""}}},
     "match2"=>
      {"p1"=>"PartinG",
       "p2"=>"Oz",
       "bo5"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"PartinG"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"PartinG"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"PartinG"},
         "game4"=>{"map"=>"", "winner"=>""},
         "game5"=>{"map"=>"", "winner"=>""}}},
     "match3"=>
      {"p1"=>"SuperNoVa",
       "p2"=>"HerO",
       "bo5"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"HerO"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"HerO"},
         "game3"=>{"map"=>"Atlantis Spaceship", "winner"=>"HerO"},
         "game4"=>{"map"=>"", "winner"=>""},
         "game5"=>{"map"=>"", "winner"=>""}}},
     "match4"=>
      {"p1"=>"TaeJa",
       "p2"=>"Squirtle",
       "bo5"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Squirtle"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Squirtle"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Squirtle"},
         "game4"=>{"map"=>"", "winner"=>""},
         "game5"=>{"map"=>"", "winner"=>""}}}}},
 "ro4"=>
  {"matches"=>
    {"round"=>"ro4",
     "match1"=>
      {"p1"=>"Mvp",
       "p2"=>"PartinG",
       "bo5"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Mvp"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Mvp"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"PartinG"},
         "game4"=>{"map"=>"Metropolis", "winner"=>"Mvp"},
         "game5"=>{"map"=>"", "winner"=>""}}},
     "match2"=>
      {"p1"=>"HerO",
       "p2"=>"Squirtle",
       "bo5"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Squirtle"},
         "game2"=>{"map"=>"Atlantis Spaceship", "winner"=>"Squirtle"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Squirtle"},
         "game4"=>{"map"=>"", "winner"=>""},
         "game5"=>{"map"=>"", "winner"=>""}}}}},
 "ro2"=>
  {"match1"=>
    {"round"=>"ro2",
     "finals"=>
      {"p1"=>"Mvp",
       "p2"=>"Squirtle",
       "bo7"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Mvp"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Mvp"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Mvp"},
         "game4"=>{"map"=>"Cloud Kingdom", "winner"=>"Squirtle"},
         "game5"=>{"map"=>"Metropolis", "winner"=>"Squirtle"},
         "game6"=>{"map"=>"Dual Sight", "winner"=>"Squirtle"},
         "game7"=>{"map"=>"Atlantis Spaceship", "winner"=>"Mvp"}}}}}}