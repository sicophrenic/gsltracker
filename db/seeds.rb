# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Initial data generated from 2012 GSL Season 2
# Included: map pool, code S players protoss/terran/zerg, 2012gsls2 matchups
#############################
##### 			DATA 				#####
data = {"league"=>["2012", "GSL", "Season 2"],
 "banner"=>
  "http://img.gomtv.net/imgdata/50156.jpg",
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
  {"Genius"=>"Protoss~MVP~Genius",
   "MC"=>"Protoss~SK~MC",
   "Puzzle"=>"Protoss~SlayerS~Puzzle",
   "PartinG"=>"Protoss~StarTale~PartinG",
   "Seed"=>"Protoss~IM~Seed",
   "Oz"=>"Protoss~FXO~Oz",
   "HerO"=>"Protoss~Liquid~HerO",
   "Squirtle"=>"Protoss~StarTale~Squirtle",
   "InCa"=>"Protoss~oGs~InCa",
   "NaNiwa"=>"Protoss~Quantic~NaNiwa",
   "aLive"=>"Terran~Fnatic~aLive",
   "GuMiho"=>"Terran~FXO~GuMiho",
   "MMA"=>"Terran~SlayerS~MMA",
   "Mvp"=>"Terran~IM~Mvp",
   "Ryung"=>"Terran~SlayerS~Ryung",
   "MarineKing"=>"Terran~Prime~MarineKing",
   "Jjakji"=>"Terran~NSH~Jjakji",
   "NaDa"=>"Terran~compLexity~NaDa",
   "TaeJa"=>"Terran~Liquid~TaeJa",
   "Maru"=>"Terran~Prime~Maru",
   "TheStC"=>"Terran~oGs~TheStC",
   "Fin"=>"Terran~oGs~Fin",
   "SuperNoVa"=>"Terran~oGs~SuperNoVa",
   "Virus"=>"Terran~StarTale~Virus",
   "Polt"=>"Terran~TSL~Polt",
   "DongRaeGu"=>"Zerg~MVP~DongRaeGu",
   "Zenio"=>"Zerg~Liquid~Zenio",
   "Curious"=>"Zerg~StarTale~Curious",
   "NesTea"=>"Zerg~IM~NesTea",
   "BBoong"=>"Zerg~Prime~BBoong",
   "Leenock"=>"Zerg~FXO~Leenock",
   "July"=>"Zerg~StarTale~July"},
 "ro32"=>
  {"groupA"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Zerg~MVP~DongRaeGu", "Terran~oGs~TheStC"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~oGs~TheStC"},
         "game2"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~oGs~TheStC"}}},
     "match2"=>
      {"players"=>["Terran~Liquid~TaeJa", "Terran~NSH~Jjakji"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~NSH~Jjakji"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~NSH~Jjakji"}}},
     "winners"=>
      {"players"=>["Terran~oGs~TheStC", "Terran~NSH~Jjakji"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~oGs~TheStC"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Terran~oGs~TheStC"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Zerg~MVP~DongRaeGu", "Terran~Liquid~TaeJa"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~NSH~Jjakji", "Terran~Liquid~TaeJa"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupB"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~MVP~Genius", "Zerg~Prime~BBoong"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~Prime~BBoong"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~MVP~Genius"}}},
     "match2"=>
      {"players"=>["Protoss~IM~Seed", "Terran~oGs~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~oGs~SuperNoVa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~oGs~SuperNoVa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~MVP~Genius", "Terran~oGs~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~oGs~SuperNoVa"},
         "game3"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Terran~oGs~SuperNoVa"}}},
     "losers"=>
      {"players"=>["Zerg~Prime~BBoong", "Protoss~IM~Seed"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~IM~Seed"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~IM~Seed"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Protoss~MVP~Genius", "Protoss~IM~Seed"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~IM~Seed"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~MVP~Genius"}}}},
   "groupC"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~Fnatic~aLive", "Zerg~StarTale~July"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Zerg~StarTale~July"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Fnatic~aLive"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Zerg~StarTale~July"}}},
     "match2"=>
      {"players"=>["Zerg~Liquid~Zenio", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~MarineKing"},
         "game2"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Zerg~StarTale~July", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Zerg~StarTale~July"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~MarineKing"}}},
     "losers"=>
      {"players"=>["Terran~Fnatic~aLive", "Zerg~Liquid~Zenio"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Zerg~Liquid~Zenio"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Fnatic~aLive"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Zerg~Liquid~Zenio"}}},
     "tiebreak"=>
      {"players"=>["Zerg~StarTale~July", "Zerg~Liquid~Zenio"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Zerg~StarTale~July"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Zerg~Liquid~Zenio"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~StarTale~July"}}}},
   "groupD"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~FXO~GuMiho", "Terran~Prime~Maru"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~FXO~GuMiho"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Prime~Maru"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~Maru"}}},
     "match2"=>
      {"players"=>["Protoss~Liquid~HerO", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~Liquid~HerO"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Zerg~StarTale~Curious"},
         "game3"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~Liquid~HerO"}}},
     "winners"=>
      {"players"=>["Terran~Prime~Maru", "Protoss~Liquid~HerO"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~Liquid~HerO"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~Maru"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~Maru"}}},
     "losers"=>
      {"players"=>["Terran~FXO~GuMiho", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Entombed Valley", "winner"=>"Zerg~StarTale~Curious"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~StarTale~Curious"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Protoss~Liquid~HerO", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~Liquid~HerO"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Protoss~Liquid~HerO"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupE"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~SK~MC", "Terran~StarTale~Virus"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~StarTale~Virus"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Terran~StarTale~Virus"}}},
     "match2"=>
      {"players"=>["Protoss~oGs~InCa", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~IM~NesTea"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~StarTale~Virus", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~StarTale~Virus"},
         "game3"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Terran~StarTale~Virus"}}},
     "losers"=>
      {"players"=>["Protoss~SK~MC", "Protoss~oGs~InCa"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Protoss~SK~MC", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupF"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~SlayerS~MMA", "Protoss~StarTale~Squirtle"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~SlayerS~MMA"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>
          {"map"=>"Dual Sight", "winner"=>"Protoss~StarTale~Squirtle"}}},
     "match2"=>
      {"players"=>["Zerg~FXO~Leenock", "Terran~compLexity~NaDa"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~FXO~Leenock"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~FXO~Leenock"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~StarTale~Squirtle", "Zerg~FXO~Leenock"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Terran~SlayerS~MMA", "Terran~compLexity~NaDa"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~SlayerS~MMA"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~SlayerS~MMA"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~SlayerS~MMA", "Zerg~FXO~Leenock"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~FXO~Leenock"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~FXO~Leenock"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupG"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~SlayerS~Puzzle", "Protoss~Quantic~NaNiwa"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~Quantic~NaNiwa"}}},
     "match2"=>
      {"players"=>["Terran~SlayerS~Ryung", "Terran~IM~Mvp"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Terran~SlayerS~Ryung"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Terran~SlayerS~Ryung"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~Quantic~NaNiwa", "Terran~SlayerS~Ryung"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Protoss~SlayerS~Puzzle", "Terran~IM~Mvp"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~SlayerS~Ryung", "Terran~IM~Mvp"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupH"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~StarTale~PartinG", "Terran~TSL~Polt"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~TSL~Polt"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~PartinG"}}},
     "match2"=>
      {"players"=>["Terran~oGs~Fin", "Protoss~FXO~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~oGs~Fin"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~oGs~Fin"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~StarTale~PartinG", "Terran~oGs~Fin"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Protoss~StarTale~PartinG"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Terran~TSL~Polt", "Protoss~FXO~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~FXO~Oz"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~oGs~Fin", "Protoss~FXO~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~FXO~Oz"},
         "game3"=>{"map"=>"", "winner"=>nil}}}}},
 "ro16"=>
  {"groupA"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Protoss~MVP~Genius", "Protoss~Quantic~NaNiwa"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~oGs~SuperNoVa", "Terran~StarTale~Virus"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Terran~oGs~SuperNoVa"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Terran~StarTale~Virus"},
         "game3"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Terran~StarTale~Virus"}}},
     "winners"=>
      {"players"=>["Protoss~Quantic~NaNiwa", "Terran~StarTale~Virus"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Protoss~MVP~Genius", "Terran~oGs~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~oGs~SuperNoVa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~oGs~SuperNoVa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~StarTale~Virus", "Terran~oGs~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~oGs~SuperNoVa"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~oGs~SuperNoVa"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupB"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~StarTale~July"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~IM~Mvp"},
         "game2"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Zerg~StarTale~July"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"}}},
     "match2"=>
      {"players"=>["Protoss~Liquid~HerO", "Zerg~FXO~Leenock"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~Liquid~HerO"},
         "game2"=>{"map"=>"Atlantis Spaceship", "winner"=>"Zerg~FXO~Leenock"},
         "game3"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~Liquid~HerO"}}},
     "winners"=>
      {"players"=>["Terran~IM~Mvp", "Protoss~Liquid~HerO"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~Liquid~HerO"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~Liquid~HerO"}}},
     "losers"=>
      {"players"=>["Zerg~StarTale~July", "Zerg~FXO~Leenock"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~FXO~Leenock"},
         "game2"=>{"map"=>"Atlantis Spaceship", "winner"=>"Zerg~FXO~Leenock"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~FXO~Leenock"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~FXO~Leenock"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Terran~IM~Mvp"}}}},
   "groupC"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Protoss~StarTale~PartinG", "Terran~oGs~TheStC"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~StarTale~PartinG"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~Prime~MarineKing", "Terran~Liquid~TaeJa"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Terran~Prime~MarineKing"},
         "game2"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~StarTale~PartinG", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~PartinG"}}},
     "losers"=>
      {"players"=>["Terran~oGs~TheStC", "Terran~Liquid~TaeJa"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~Prime~MarineKing", "Terran~Liquid~TaeJa"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupD"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Protoss~SK~MC", "Terran~Prime~Maru"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~Maru"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~Maru"}}},
     "match2"=>
      {"players"=>["Protoss~FXO~Oz", "Protoss~StarTale~Squirtle"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~Prime~Maru", "Protoss~StarTale~Squirtle"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Protoss~SK~MC", "Protoss~FXO~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"Metropolis", "winner"=>"Protoss~FXO~Oz"}}},
     "tiebreak"=>
      {"players"=>["Terran~Prime~Maru", "Protoss~FXO~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Terran~Prime~Maru"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~FXO~Oz"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~FXO~Oz"}}}}},
 "ro8"=>
  {"matches"=>
    {"round"=>"ro8",
     "match1"=>
      {"players"=>["Protoss~Quantic~NaNiwa", "Terran~IM~Mvp"],
       "bo5"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Mvp"},
         "game3"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game4"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Mvp"},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Protoss~StarTale~PartinG", "Protoss~FXO~Oz"],
       "bo5"=>
        {"game1"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~StarTale~PartinG"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~PartinG"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match3"=>
      {"players"=>["Terran~oGs~SuperNoVa", "Protoss~Liquid~HerO"],
       "bo5"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~Liquid~HerO"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Protoss~Liquid~HerO"},
         "game3"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Protoss~Liquid~HerO"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match4"=>
      {"players"=>["Terran~Liquid~TaeJa", "Protoss~StarTale~Squirtle"],
       "bo5"=>
        {"game1"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~StarTale~Squirtle"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}}}},
 "ro4"=>
  {"matches"=>
    {"round"=>"ro4",
     "match1"=>
      {"players"=>["Terran~IM~Mvp", "Protoss~StarTale~PartinG"],
       "bo5"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Terran~IM~Mvp"},
         "game3"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~PartinG"},
         "game4"=>{"map"=>"Metropolis", "winner"=>"Terran~IM~Mvp"},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Protoss~Liquid~HerO", "Protoss~StarTale~Squirtle"],
       "bo5"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Protoss~StarTale~Squirtle"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}}}},
 "ro2"=>
  {"matches"=>
    {"round"=>"ro2",
     "finals"=>
      {"players"=>["Terran~IM~Mvp", "Protoss~StarTale~Squirtle"],
       "bo7"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"},
         "game4"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~Squirtle"},
         "game5"=>{"map"=>"Metropolis", "winner"=>"Protoss~StarTale~Squirtle"},
         "game6"=>{"map"=>"Dual Sight", "winner"=>"Protoss~StarTale~Squirtle"},
         "game7"=>{"map"=>"Atlantis Spaceship", "winner"=>"Terran~IM~Mvp"}}}}}}
##### 			DATA 				#####
#############################
#####     DATA-SEED     #####
########## HELPERS ##########
def fill_game(matchdata, gameno)
	gameid = "game"+gameno.to_s
	if matchdata[gameid]["map"] != ""
		game = Game.new
		game.map = Map.find_by_name(matchdata[gameid]["map"])
    game.player = Player.find_by_name(matchdata[gameid]["winner"].split('~')[2])
		game.save
	else
		game = nil
	end
	game
end
def fill_matches(input, type)
	matches = []
	case type
	when "groupmatches"
		### Match1
		match1 = Match.new
		tempmatch = input["match1"]
		matchplayers = []
		tempmatch["players"].each do |p|
		 	p = Player.find_by_name(p.split('~')[2])
			matchplayers << p
			@groupplayers << p
			@roundplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		match1.games << game1 << game2
		if game3 != nil
		 	match1.games << game3
	  end
		match1.players = matchplayers
		### Match2
		match2 = Match.new
		tempmatch = input["match2"]
		matchplayers = []
		tempmatch["players"].each do |p|
		 	p = Player.find_by_name(p.split('~')[2])
			matchplayers << p
			@groupplayers << p
			@roundplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		match2.games << game1 << game2
		if game3 != nil
		 	match2.games << game3
	  	end
		match2.players = matchplayers
		### Winners
		winners = Match.new
		tempmatch = input["winners"]
		matchplayers = []
		tempmatch["players"].each do |p|
			p = Player.find_by_name(p.split('~')[2])
			matchplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		winners.games << game1 << game2
		if game3 != nil
			winners.games << game3
	 	end
		winners.players = matchplayers
		### Losers
		losers = Match.new
		tempmatch = input["losers"]
		matchplayers = []
		tempmatch["players"].each do |p|
		 	p = Player.find_by_name(p.split('~')[2])
			matchplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		losers.games << game1 << game2
		if game3 != nil
			losers.games << game3
		end
		losers.players = matchplayers
		### Tiebreak
		tiebreak = Match.new
		tempmatch = input["tiebreak"]
		matchplayers = []
		tempmatch["players"].each do |p|
			p = Player.find_by_name(p.split('~')[2])
			matchplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		tiebreak.games << game1 << game2
		if game3 != nil
		 	tiebreak.games << game3
		end
	  	tiebreak.players = matchplayers
		matches << match1 << match2 << winners << losers << tiebreak
	when "regularmatches"
		if input["round"] == "ro2"
			# Match 1
			match1 = Match.new
			matchplayers = []
			tempmatch = input["finals"]
			matchgames = tempmatch["bo7"]
			game1 = fill_game(matchgames, 1)
			game2 = fill_game(matchgames, 2)
			game3 = fill_game(matchgames, 3)
			game4 = fill_game(matchgames, 4)
			game5 = fill_game(matchgames, 5)
			game6 = fill_game(matchgames, 6)
			game7 = fill_game(matchgames, 7)
			match1.games << game1 << game2 << game3 << game4
			if game5 != nil
				match1.games << game5
				if game6 != nil
					match1.games << game6
					if game7 != nil
						match1.games << game7
					end
				end
			end
		else
			match1 = Match.new
			tempmatch = input["match1"]
			matchplayers = []
			matchgames = tempmatch["bo5"]
			game1 = fill_game(matchgames, 1)
			game2 = fill_game(matchgames, 2)
			game3 = fill_game(matchgames, 3)
			game4 = fill_game(matchgames, 4)
			game5 = fill_game(matchgames, 5)
			match1.games << game1 << game2 << game3
			if game4 != nil
				match1.games << game4
				if game5 != nil
					match1.games << game5
				end
			end
		end
		tempmatch["players"].each do |p|
			p = Player.find_by_name(p.split('~')[2])
			matchplayers << p
			@roundplayers << p
		end
		match1.players = matchplayers
		matches << match1
		if input["round"] != "ro2"
			# Match 2
			match2 = Match.new
			tempmatch = input["match2"]
			matchplayers = []
			matchgames = tempmatch["bo5"]
			game1 = fill_game(matchgames, 1)
			game2 = fill_game(matchgames, 2)
			game3 = fill_game(matchgames, 3)
			game4 = fill_game(matchgames, 4)
			game5 = fill_game(matchgames, 5)
			match2.games << game1 << game2 << game3
			if game4 != nil
				match2.games << game4
				if game5 != nil
					match2.games << game5
				end
			end
			tempmatch["players"].each do |p|
				p = Player.find_by_name(p.split('~')[2])
				matchplayers << p
				@roundplayers << p
			end
			match2.players = matchplayers
			matches << match2
			if input["round"] == "ro8"
				# Match 3
				match3 = Match.new
				tempmatch = input["match3"]
				matchplayers = []
				matchgames = tempmatch["bo5"]
				game1 = fill_game(matchgames, 1)
				game2 = fill_game(matchgames, 2)
				game3 = fill_game(matchgames, 3)
				game4 = fill_game(matchgames, 4)
				game5 = fill_game(matchgames, 5)
				match3.games << game1 << game2 << game3
				if game4 != nil
					match3.games << game4
					if game5 != nil
						match3.games << game5
					end
				end
				tempmatch["players"].each do |p|
					p = Player.find_by_name(p.split('~')[2])
					matchplayers << p
					@roundplayers << p
				end
				match3.players = matchplayers
				matches << match3
				# Match 4
				match4 = Match.new
				tempmatch = input["match4"]
				matchplayers = []
				matchgames = tempmatch["bo5"]
				game1 = fill_game(matchgames, 1)
				game2 = fill_game(matchgames, 2)
				game3 = fill_game(matchgames, 3)
				game4 = fill_game(matchgames, 4)
				game5 = fill_game(matchgames, 5)
				match4.games << game1 << game2 << game3
				if game4 != nil
					match4.games << game4
					if game5 != nil
						match4.games << game5
					end
				end
				tempmatch["players"].each do |p|
					p = Player.find_by_name(p.split('~')[2])
					matchplayers << p
					@roundplayers << p
				end
				match4.players = matchplayers
				matches << match4
			end
		end
	end
	matches
end
def fill_groups(rounddata, groupno)
	groupid = "group"+groupno
	group = Group.new
	tempgroup = rounddata[groupid]
	@groupplayers = []
	matches = fill_matches(tempgroup, "groupmatches")
	matches.each do |match|
		group.matches << match
	end
	group.players = @groupplayers
	group
end
##########/HELPERS ##########
# Generate Tournament
tournament = Tournament.new
tournament.year = data["league"][0]
tournament.league = data["league"][1]
tournament.season = data["league"][2].split[1]
tournament.banner = data["banner"]

# Generate Map Pool
mappool = MapPool.new
data["maps"].each do |map|
  Map.create(:name => map)
end
mappool.maps << Map.all
tournament.map_pool = mappool

# Generate Players
data["players"].each do |name,raceteamname|
  player = Player.create(:name => name)
  reg = Registration.new
  reg.tournament = tournament
  reg.player = player
  reg.race = raceteamname.split('~')[0]
  reg.team = raceteamname.split('~')[1]
  reg.save
end

# Generate RO32
# RO32
ro32 = Round.new(:roundof => "RO32")
@roundplayers = []
rounddata = data["ro32"]
## GroupA
groupA = fill_groups(rounddata, "A")
ro32.groups << groupA
## GroupB
groupB = fill_groups(rounddata, "B")
ro32.groups << groupB
## GroupC
groupC = fill_groups(rounddata, "C")
ro32.groups << groupC
## GroupD
groupD = fill_groups(rounddata, "D")
ro32.groups << groupD
## GroupE
groupE = fill_groups(rounddata, "E")
ro32.groups << groupE
## GroupF
groupF = fill_groups(rounddata, "F")
ro32.groups << groupF
## GroupG
groupG = fill_groups(rounddata, "G")
ro32.groups << groupG
## GroupH
groupH = fill_groups(rounddata, "H")
ro32.groups << groupH
ro32.players = @roundplayers
tournament.rounds << ro32

# Generate RO16
ro16 = Round.new(:roundof => "RO16")
@roundplayers = []
rounddata = data["ro16"]
## GroupA
groupA = fill_groups(rounddata, "A")
ro16.groups << groupA
## GroupB
groupB = fill_groups(rounddata, "B")
ro16.groups << groupB
## GroupC
groupC = fill_groups(rounddata, "C")
ro16.groups << groupC
## GroupD
groupD = fill_groups(rounddata, "D")
ro16.groups << groupD
ro16.players = @roundplayers
tournament.rounds << ro16

# Generate RO8
ro8 = Round.new(:roundof => "RO8")
@roundplayers = []
rounddata = data["ro8"]["matches"]
matches = fill_matches(rounddata, "regularmatches")
matches.each do |match|
	ro8.matches << match
end
ro8.players = @roundplayers
tournament.rounds << ro8

# Generate RO4
ro4 = Round.new(:roundof => "RO4")
@roundplayers = []
rounddata = data["ro4"]["matches"]
matches = fill_matches(rounddata, "regularmatches")
matches.each do |match|
	ro4.matches << match
end
ro4.players = @roundplayers
tournament.rounds << ro4

# Generate RO2
ro2 = Round.new(:roundof => "RO2")
@roundplayers = []
rounddata = data["ro2"]["matches"]
matches = fill_matches(rounddata, "regularmatches")
matches.each do |match|
	ro2.matches << match
end
ro2.players = @roundplayers
tournament.rounds << ro2

tournament.save
#####     DATA-SEED     #####