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
inputdata = [
  {"league"=>["2012", "GSL", "Season 1"],
 "banner"=>"http://img.gomtv.net/imgdata/44380.jpg",
 "maps"=>
  ["Antiga Shipyard",
   "Bel'Shir Beach",
   "Cloud Kingdom",
   "Crossfire SE",
   "Daybreak",
   "Dual Sight",
   "Entombed Valley",
   "Metropolis"],
 "players"=>
  {"InCa"=>"Protoss~oGs~InCa",
   "Genius"=>"Protoss~MVP~Genius",
   "PartinG"=>"Protoss~StarTale~PartinG",
   "Puzzle"=>"Protoss~SlayerS~Puzzle",
   "Brown"=>"Protoss~SlayerS~Brown",
   "JYP"=>"Protoss~EG~JYP",
   "Oz"=>"Protoss~FXO~Oz",
   "MC"=>"Protoss~SK~MC",
   "Fin"=>"Terran~oGs~Fin",
   "SuperNoVa"=>"Terran~oGs~SuperNoVa",
   "NaDa"=>"Terran~oGs~NaDa",
   "aLive"=>"Terran~Fnatic~aLive",
   "Jjakji"=>"Terran~NSH~Jjakji",
   "Mvp"=>"Terran~IM~Mvp",
   "Happy"=>"Terran~IM~Happy",
   "sC"=>"Terran~MVP~sC",
   "Keen"=>"Terran~MVP~Keen",
   "Bomber"=>"Terran~StarTale~Bomber",
   "MMA"=>"Terran~SlayerS~MMA",
   "Ganzi"=>"Terran~SlayerS~Ganzi",
   "BoxeR"=>"Terran~SlayerS~BoxeR",
   "MarineKing"=>"Terran~Prime~MarineKing",
   "GuMiho"=>"Terran~FXO~GuMiho",
   "Zenio"=>"Zerg~Liquid~Zenio",
   "NesTea"=>"Zerg~IM~NesTea",
   "Sen"=>"Zerg~GamaBears~Sen",
   "DongRaeGu"=>"Zerg~MVP~DongRaeGu",
   "Curious"=>"Zerg~StarTale~Curious",
   "YuGiOh"=>"Zerg~SlayerS~YuGiOh",
   "IdrA"=>"Zerg~EG~IdrA",
   "Leenock"=>"Zerg~FXO~Leenock",
   "Lucky"=>"Zerg~FXO~Lucky"},
 "ro32"=>
  {"groupA"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~NSH~Jjakji", "Zerg~GamaBears~Sen"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Terran~NSH~Jjakji"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~NSH~Jjakji"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~SlayerS~BoxeR", "Terran~SlayerS~Ganzi"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~SlayerS~BoxeR"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Terran~SlayerS~Ganzi"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Terran~SlayerS~Ganzi"}}},
     "winners"=>
      {"players"=>["Terran~NSH~Jjakji", "Terran~SlayerS~Ganzi"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~SlayerS~Ganzi"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~SlayerS~Ganzi"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Zerg~GamaBears~Sen", "Terran~SlayerS~BoxeR"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~SlayerS~BoxeR"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~SlayerS~BoxeR"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~NSH~Jjakji", "Terran~SlayerS~BoxeR"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~SlayerS~BoxeR"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Terran~NSH~Jjakji"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~NSH~Jjakji"}}}},
   "groupB"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Zerg~FXO~Leenock", "Terran~oGs~Fin"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~FXO~Leenock"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Zerg~FXO~Leenock"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~oGs~SuperNoVa", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>{"map"=>"Crossfire SE", "winner"=>"Terran~oGs~SuperNoVa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~SK~MC"},
         "game3"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Terran~oGs~SuperNoVa"}}},
     "winners"=>
      {"players"=>["Zerg~FXO~Leenock", "Terran~oGs~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Zerg~FXO~Leenock"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~oGs~SuperNoVa"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~oGs~SuperNoVa"}}},
     "losers"=>
      {"players"=>["Terran~oGs~Fin", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~oGs~Fin"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"Metropolis", "winner"=>"Protoss~SK~MC"}}},
     "tiebreak"=>
      {"players"=>["Zerg~FXO~Leenock", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Zerg~FXO~Leenock"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~SK~MC"}}}},
   "groupC"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~FXO~Lucky"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Zerg~EG~IdrA", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Zerg~IM~NesTea"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Zerg~IM~NesTea"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~IM~NesTea"}}},
     "losers"=>
      {"players"=>["Zerg~FXO~Lucky", "Zerg~EG~IdrA"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~EG~IdrA"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Zerg~FXO~Lucky"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~FXO~Lucky"}}},
     "tiebreak"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~FXO~Lucky"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Zerg~FXO~Lucky"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Mvp"}}}},
   "groupD"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~FXO~Oz", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Protoss~FXO~Oz"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~StarTale~Bomber", "Protoss~oGs~InCa"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~oGs~InCa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~oGs~InCa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~FXO~Oz", "Protoss~oGs~InCa"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Crossfire SE", "winner"=>"Protoss~oGs~InCa"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Protoss~FXO~Oz"}}},
     "losers"=>
      {"players"=>["Zerg~StarTale~Curious", "Terran~StarTale~Bomber"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Terran~StarTale~Bomber"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Zerg~StarTale~Curious"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Zerg~StarTale~Curious"}}},
     "tiebreak"=>
      {"players"=>["Protoss~oGs~InCa", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"Crossfire SE", "winner"=>"Zerg~StarTale~Curious"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Zerg~StarTale~Curious"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupE"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~SlayerS~MMA", "Terran~FXO~GuMiho"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~SlayerS~MMA"},
         "game2"=>{"map"=>"Crossfire SE", "winner"=>"Terran~SlayerS~MMA"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Zerg~SlayerS~YuGiOh", "Zerg~Liquid~Zenio"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~Liquid~Zenio"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~Liquid~Zenio"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~SlayerS~MMA", "Zerg~Liquid~Zenio"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~SlayerS~MMA"},
         "game2"=>{"map"=>"", "winner"=>"Terran~SlayerS~MMA"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Terran~FXO~GuMiho", "Zerg~SlayerS~YuGiOh"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~SlayerS~YuGiOh"},
         "game2"=>{"map"=>"Crossfire SE", "winner"=>"Terran~FXO~GuMiho"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~FXO~GuMiho"}}},
     "tiebreak"=>
      {"players"=>["Zerg~Liquid~Zenio", "Terran~FXO~GuMiho"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~Liquid~Zenio"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~FXO~GuMiho"},
         "game3"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~FXO~GuMiho"}}}},
   "groupF"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~MVP~sC", "Protoss~EG~JYP"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~MVP~sC"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~MVP~sC"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Zerg~MVP~DongRaeGu", "Protoss~MVP~Genius"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Protoss~MVP~Genius"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~MVP~sC", "Protoss~MVP~Genius"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Protoss~MVP~Genius"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Protoss~EG~JYP", "Zerg~MVP~DongRaeGu"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~MVP~sC", "Zerg~MVP~DongRaeGu"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~MVP~sC"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Zerg~MVP~DongRaeGu"}}}},
   "groupG"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~Fnatic~aLive", "Protoss~SlayerS~Brown"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~Fnatic~aLive"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~SlayerS~Brown"},
         "game3"=>{"map"=>"Crossfire SE", "winner"=>"Terran~Fnatic~aLive"}}},
     "match2"=>
      {"players"=>["Terran~IM~Happy", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~MarineKing"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~Fnatic~aLive", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Terran~Prime~MarineKing"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Protoss~SlayerS~Brown", "Terran~IM~Happy"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~IM~Happy"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Happy"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~Fnatic~aLive", "Terran~IM~Happy"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~Fnatic~aLive"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~Fnatic~aLive"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupH"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~SlayerS~Puzzle", "Protoss~StarTale~PartinG"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game3"=>
          {"map"=>"Bel'Shir Beach", "winner"=>"Protoss~StarTale~PartinG"}}},
     "match2"=>
      {"players"=>["Terran~MVP~Keen", "Terran~oGs~NaDa"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~oGs~NaDa"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~MVP~Keen"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Terran~oGs~NaDa"}}},
     "winners"=>
      {"players"=>["Protoss~StarTale~PartinG", "Terran~oGs~NaDa"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~oGs~NaDa"},
         "game3"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~PartinG"}}},
     "losers"=>
      {"players"=>["Protoss~SlayerS~Puzzle", "Terran~MVP~Keen"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~oGs~NaDa", "Protoss~SlayerS~Puzzle"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game3"=>{"map"=>"", "winner"=>nil}}}}},
 "ro16"=>
  {"groupA"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Terran~IM~Mvp", "Terran~FXO~GuMiho"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Terran~FXO~GuMiho"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~FXO~GuMiho"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Zerg~StarTale~Curious", "Terran~Fnatic~aLive"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~Fnatic~aLive"},
         "game2"=>{"map"=>"Crossfire SE", "winner"=>"Terran~Fnatic~aLive"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~FXO~GuMiho", "Terran~Fnatic~aLive"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~Fnatic~aLive"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Fnatic~aLive"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~StarTale~Curious"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"Crossfire SE", "winner"=>"Terran~IM~Mvp"}}},
     "tiebreak"=>
      {"players"=>["Terran~FXO~GuMiho", "Terran~IM~Mvp"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~FXO~GuMiho"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~FXO~GuMiho"}}}},
   "groupB"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Terran~SlayerS~MMA", "Protoss~FXO~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Crossfire SE", "winner"=>"Terran~SlayerS~MMA"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Terran~SlayerS~MMA"}}},
     "match2"=>
      {"players"=>["Protoss~SlayerS~Puzzle", "Terran~oGs~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game2"=>{"map"=>"Crossfire SE", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~SlayerS~MMA", "Protoss~SlayerS~Puzzle"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~SlayerS~MMA"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game3"=>
          {"map"=>"Crossfire SE", "winner"=>"Protoss~SlayerS~Puzzle"}}},
     "losers"=>
      {"players"=>["Protoss~FXO~Oz", "Terran~oGs~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~oGs~SuperNoVa"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~FXO~Oz"}}},
     "tiebreak"=>
      {"players"=>["Terran~SlayerS~MMA", "Protoss~FXO~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~FXO~Oz"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~SlayerS~MMA"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~SlayerS~MMA"}}}},
   "groupC"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Protoss~SK~MC", "Terran~SlayerS~Ganzi"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Bel'Shir Beach", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~NSH~Jjakji", "Protoss~StarTale~PartinG"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Terran~NSH~Jjakji"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~PartinG"}}},
     "winners"=>
      {"players"=>["Protoss~SK~MC", "Protoss~StarTale~PartinG"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Terran~SlayerS~Ganzi", "Terran~NSH~Jjakji"],
       "bo3"=>
        {"game1"=>{"map"=>"Bel'Shir Beach", "winner"=>"Terran~NSH~Jjakji"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Terran~NSH~Jjakji"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Protoss~StarTale~PartinG", "Terran~NSH~Jjakji"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Cloud Kingdom", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~StarTale~PartinG"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupD"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Zerg~IM~NesTea", "Zerg~MVP~DongRaeGu"],
       "bo3"=>
        {"game1"=>{"map"=>"", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Dual Sight", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"}}},
     "match2"=>
      {"players"=>["Terran~Prime~MarineKing", "Protoss~MVP~Genius"],
       "bo3"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Terran~Prime~MarineKing"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Zerg~MVP~DongRaeGu", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Zerg~IM~NesTea", "Protoss~MVP~Genius"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~MVP~Genius"},
         "game3"=>{"map"=>"Bel'Shir Beach", "winner"=>"Protoss~MVP~Genius"}}},
     "tiebreak"=>
      {"players"=>["Terran~Prime~MarineKing", "Protoss~MVP~Genius"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Bel'Shir Beach", "winner"=>"Terran~Prime~MarineKing"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~MVP~Genius"},
         "game3"=>{"map"=>"Dual Sight", "winner"=>"Protoss~MVP~Genius"}}}}},
 "ro8"=>
  {"matches"=>
    {"round"=>"ro8",
     "match1"=>
      {"players"=>["Terran~Fnatic~aLive", "Terran~SlayerS~MMA"],
       "bo5"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Terran~Fnatic~aLive"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~SlayerS~MMA"},
         "game3"=>{"map"=>"Crossfire SE", "winner"=>"Terran~Fnatic~aLive"},
         "game4"=>{"map"=>"Daybreak", "winner"=>"Terran~Fnatic~aLive"},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~FXO~GuMiho", "Protoss~SlayerS~Puzzle"],
       "bo5"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~FXO~GuMiho"},
         "game2"=>
          {"map"=>"Bel'Shir Beach", "winner"=>"Protoss~SlayerS~Puzzle"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~FXO~GuMiho"},
         "game4"=>{"map"=>"Dual Sight", "winner"=>"Terran~FXO~GuMiho"},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match3"=>
      {"players"=>["Protoss~SK~MC", "Protoss~MVP~Genius"],
       "bo5"=>
        {"game1"=>{"map"=>"Dual Sight", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~MVP~Genius"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~MVP~Genius"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match4"=>
      {"players"=>["Protoss~StarTale~PartinG", "Zerg~MVP~DongRaeGu"],
       "bo5"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"Crossfire SE", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}}}},
 "ro4"=>
  {"matches"=>
    {"round"=>"ro4",
     "match1"=>
      {"players"=>["Terran~Fnatic~aLive", "Protoss~MVP~Genius"],
       "bo5"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Protoss~MVP~Genius"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~MVP~Genius"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~FXO~GuMiho", "Zerg~MVP~DongRaeGu"],
       "bo5"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~FXO~GuMiho"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~FXO~GuMiho"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game4"=>{"map"=>"Dual Sight", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game5"=>{"map"=>"Metropolis", "winner"=>"Zerg~MVP~DongRaeGu"}}}}},
 "ro2"=>
  {"matches"=>
    {"round"=>"ro2",
     "finals"=>
      {"players"=>["Protoss~MVP~Genius", "Zerg~MVP~DongRaeGu"],
       "bo7"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~MVP~Genius"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~MVP~Genius"},
         "game4"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game5"=>{"map"=>"Metropolis", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game6"=>{"map"=>"Crossfire SE", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game7"=>{"map"=>"", "winner"=>nil}}}}}},
 {"league"=>["2012", "GSL", "Season 2"],
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
         "game7"=>{"map"=>"Atlantis Spaceship", "winner"=>"Terran~IM~Mvp"}}}}}},
 {"league"=>["2012", "GSL", "Season 3"],
 "banner"=>"http://img.gomtv.net/imgdata/55256.jpg",
 "maps"=>
  ["Atlantis Spaceship",
   "Antiga Shipyard",
   "Cloud Kingdom",
   "Daybreak",
   "Entombed Valley",
   "Metropolis",
   "ESV Ohana",
   "Whirlwind"],
 "players"=>
  {"Squirtle"=>"Protoss~StarTale~Squirtle",
   "PartinG"=>"Protoss~StarTale~PartinG",
   "HerO"=>"Protoss~Liquid~HerO",
   "NaNiwa"=>"Protoss~Quantic~NaNiwa",
   "Oz"=>"Protoss~Fnatic~Oz",
   "Genius"=>"Protoss~~Genius",
   "Creator"=>"Protoss~Prime~Creator",
   "MC"=>"Protoss~SK~MC",
   "Seed"=>"Protoss~IM~Seed",
   "Ace"=>"Protoss~StarTale~Ace",
   "Mvp"=>"Terran~IM~Mvp",
   "SuperNoVa"=>"Terran~~SuperNoVa",
   "TaeJa"=>"Terran~Liquid~TaeJa",
   "Keen"=>"Terran~MVP~Keen",
   "Ganzi"=>"Terran~compLexity~Ganzi",
   "Happy"=>"Terran~IM~Happy",
   "GuMiho"=>"Terran~FXO~GuMiho",
   "TheStC"=>"Terran~Quantic~TheStC",
   "Byun"=>"Terran~Prime~Byun",
   "Maru"=>"Terran~Prime~Maru",
   "Ryung"=>"Terran~SlayerS~Ryung",
   "MarineKing"=>"Terran~Prime~MarineKing",
   "ThorZaIN"=>"Terran~EG~ThorZaIN",
   "DongRaeGu"=>"Zerg~MVP~DongRaeGu",
   "Symbol"=>"Zerg~TSL~Symbol",
   "Leenock"=>"Zerg~FXO~Leenock",
   "Sniper"=>"Zerg~MVP~Sniper",
   "YuGiOh"=>"Zerg~SlayerS~YuGiOh",
   "NesTea"=>"Zerg~IM~NesTea",
   "Curious"=>"Zerg~StarTale~Curious",
   "SuHoSin"=>"Zerg~Zenex~SuHoSin",
   "viOLet"=>"Zerg~Empire~viOLet"},
 "ro32"=>
  {"groupA"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~Liquid~HerO", "Terran~Prime~Byun"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~Prime~Byun"},
         "game2"=>{"map"=>"", "winner"=>"Terran~Prime~Byun"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Protoss~IM~Seed", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Protoss~IM~Seed"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~IM~Seed"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~Prime~Byun", "Protoss~IM~Seed"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~Prime~Byun"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~IM~Seed"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~Byun"}}},
     "losers"=>
      {"players"=>["Protoss~Liquid~HerO", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Zerg~StarTale~Curious"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~Liquid~HerO"},
         "game3"=>{"map"=>"Whirlwind", "winner"=>"Zerg~StarTale~Curious"}}},
     "tiebreak"=>
      {"players"=>["Protoss~IM~Seed", "Zerg~StarTale~Curious"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~IM~Seed"},
         "game2"=>{"map"=>"Whirlwind", "winner"=>"Protoss~IM~Seed"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupB"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~Quantic~NaNiwa", "Protoss~Prime~Creator"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Protoss~Prime~Creator"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~Prime~Creator"}}},
     "match2"=>
      {"players"=>["Zerg~IM~NesTea", "Terran~Quantic~TheStC"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~IM~NesTea"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~Prime~Creator", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~Prime~Creator"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~IM~NesTea"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~IM~NesTea"}}},
     "losers"=>
      {"players"=>["Protoss~Quantic~NaNiwa", "Terran~Quantic~TheStC"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Protoss~Prime~Creator", "Protoss~Quantic~NaNiwa"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupC"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~StarTale~Squirtle", "Terran~EG~ThorZaIN"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~FXO~GuMiho", "Terran~MVP~Keen"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~MVP~Keen"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~FXO~GuMiho"},
         "game3"=>{"map"=>"Metropolis", "winner"=>"Terran~MVP~Keen"}}},
     "winners"=>
      {"players"=>["Protoss~StarTale~Squirtle", "Terran~MVP~Keen"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~MVP~Keen"},
         "game3"=>{"map"=>"Metropolis", "winner"=>"Terran~MVP~Keen"}}},
     "losers"=>
      {"players"=>["Terran~EG~ThorZaIN", "Terran~FXO~GuMiho"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Terran~FXO~GuMiho"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~EG~ThorZaIN"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Terran~EG~ThorZaIN"}}},
     "tiebreak"=>
      {"players"=>["Protoss~StarTale~Squirtle", "Terran~EG~ThorZaIN"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupD"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~Zenex~SuHoSin"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Zerg~Zenex~SuHoSin"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Mvp"}}},
     "match2"=>
      {"players"=>["Terran~IM~Happy", "Protoss~~Genius"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Happy"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~~Genius"},
         "game3"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~~Genius"}}},
     "winners"=>
      {"players"=>["Terran~IM~Mvp", "Protoss~~Genius"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Protoss~~Genius"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~~Genius"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Zerg~Zenex~SuHoSin", "Terran~IM~Happy"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Terran~IM~Happy"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Terran~IM~Happy"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~IM~Mvp", "Terran~IM~Happy"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~IM~Mvp"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupE"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Zerg~MVP~Sniper", "Terran~~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Zerg~MVP~Sniper"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~~SuperNoVa"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~~SuperNoVa"}}},
     "match2"=>
      {"players"=>["Terran~compLexity~Ganzi", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~compLexity~Ganzi"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~compLexity~Ganzi"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Terran~~SuperNoVa", "Terran~compLexity~Ganzi"],
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Terran~~SuperNoVa"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~~SuperNoVa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Zerg~MVP~Sniper", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~compLexity~Ganzi", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupF"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Protoss~StarTale~PartinG", "Zerg~TSL~Symbol"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~TSL~Symbol"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~TSL~Symbol"}}},
     "match2"=>
      {"players"=>["Terran~Prime~MarineKing", "Zerg~SlayerS~YuGiOh"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Zerg~SlayerS~YuGiOh"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"ESV Ohana", "winner"=>"Terran~Prime~MarineKing"}}},
     "winners"=>
      {"players"=>["Zerg~TSL~Symbol", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Zerg~TSL~Symbol"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~TSL~Symbol"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Protoss~StarTale~PartinG", "Zerg~SlayerS~YuGiOh"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~StarTale~PartinG"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Zerg~SlayerS~YuGiOh"},
         "game3"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~StarTale~PartinG"}}},
     "tiebreak"=>
      {"players"=>["Terran~Prime~MarineKing", "Protoss~StarTale~PartinG"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~MarineKing"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~PartinG"},
         "game3"=>
          {"map"=>"Entombed Valley", "winner"=>"Terran~Prime~MarineKing"}}}},
   "groupG"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Zerg~Empire~viOLet", "Protoss~Fnatic~Oz"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Zerg~Empire~viOLet"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~Empire~viOLet"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~Prime~Maru", "Zerg~MVP~DongRaeGu"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Prime~Maru"},
         "game3"=>{"map"=>"Metropolis", "winner"=>"Zerg~MVP~DongRaeGu"}}},
     "winners"=>
      {"players"=>["Zerg~Empire~viOLet", "Zerg~MVP~DongRaeGu"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~Empire~viOLet"},
         "game3"=>{"map"=>"Metropolis", "winner"=>"Zerg~MVP~DongRaeGu"}}},
     "losers"=>
      {"players"=>["Protoss~Fnatic~Oz", "Terran~Prime~Maru"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~Maru"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~Fnatic~Oz"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Prime~Maru"}}},
     "tiebreak"=>
      {"players"=>["Zerg~Empire~viOLet", "Terran~Prime~Maru"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Prime~Maru"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~Empire~viOLet"},
         "game3"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Zerg~Empire~viOLet"}}}},
   "groupH"=>
    {"round"=>"ro32",
     "match1"=>
      {"players"=>["Terran~Liquid~TaeJa", "Protoss~StarTale~Ace"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~Ace"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Protoss~StarTale~Ace"}}},
     "match2"=>
      {"players"=>["Terran~SlayerS~Ryung", "Zerg~FXO~Leenock"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~SlayerS~Ryung"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~SlayerS~Ryung"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~StarTale~Ace", "Terran~SlayerS~Ryung"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~SlayerS~Ryung"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Terran~SlayerS~Ryung"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Terran~Liquid~TaeJa", "Zerg~FXO~Leenock"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Protoss~StarTale~Ace", "Terran~Liquid~TaeJa"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"", "winner"=>nil}}}}},
 "ro16"=>
  {"groupA"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Terran~IM~Mvp", "Terran~Liquid~TaeJa"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Liquid~TaeJa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Terran~IM~Mvp"},
         "game3"=>{"map"=>"Whirlwind", "winner"=>"Terran~Liquid~TaeJa"}}},
     "match2"=>
      {"players"=>["Zerg~Empire~viOLet", "Protoss~IM~Seed"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~IM~Seed"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~Empire~viOLet"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~IM~Seed"}}},
     "winners"=>
      {"players"=>["Terran~Liquid~TaeJa", "Protoss~IM~Seed"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Protoss~IM~Seed"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~IM~Seed"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "losers"=>
      {"players"=>["Terran~IM~Mvp", "Zerg~Empire~viOLet"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Zerg~Empire~viOLet"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Zerg~Empire~viOLet"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Terran~Liquid~TaeJa", "Zerg~Empire~viOLet"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Atlantis Spaceship", "winner"=>"Zerg~Empire~viOLet"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Terran~Liquid~TaeJa"}}}},
   "groupB"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Protoss~StarTale~Squirtle", "Zerg~TSL~Symbol"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~StarTale~Squirtle"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "match2"=>
      {"players"=>["Terran~Prime~MarineKing", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Protoss~StarTale~Squirtle", "Protoss~SK~MC"],
       "bo3"=>
        {"game1"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~StarTale~Squirtle"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Protoss~SK~MC"}}},
     "losers"=>
      {"players"=>["Zerg~TSL~Symbol", "Terran~Prime~MarineKing"],
       "bo3"=>
        {"game1"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~TSL~Symbol"},
         "game2"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~MarineKing"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Zerg~TSL~Symbol"}}},
     "tiebreak"=>
      {"players"=>["Protoss~StarTale~Squirtle", "Zerg~TSL~Symbol"],
       "bo3"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Zerg~TSL~Symbol"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~TSL~Symbol"},
         "game3"=>{"map"=>"", "winner"=>nil}}}},
   "groupC"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Protoss~~Genius", "Protoss~Quantic~NaNiwa"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~~Genius"},
         "game2"=>
          {"map"=>"Entombed Valley", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~~Genius"}}},
     "match2"=>
      {"players"=>["Terran~MVP~Keen", "Terran~Prime~Byun"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Terran~Prime~Byun"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Terran~MVP~Keen"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Prime~Byun"}}},
     "winners"=>
      {"players"=>["Protoss~~Genius", "Terran~Prime~Byun"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~Prime~Byun"},
         "game2"=>{"map"=>"Whirlwind", "winner"=>"Protoss~~Genius"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~Prime~Byun"}}},
     "losers"=>
      {"players"=>["Protoss~Quantic~NaNiwa", "Terran~MVP~Keen"],
       "bo3"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "tiebreak"=>
      {"players"=>["Protoss~~Genius", "Protoss~Quantic~NaNiwa"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~~Genius"},
         "game3"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~Quantic~NaNiwa"}}}},
   "groupD"=>
    {"round"=>"ro16",
     "match1"=>
      {"players"=>["Zerg~MVP~DongRaeGu", "Terran~SlayerS~Ryung"],
       "bo3"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Terran~SlayerS~Ryung"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"}}},
     "match2"=>
      {"players"=>["Terran~~SuperNoVa", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>{"map"=>"Cloud Kingdom", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~IM~NesTea"},
         "game3"=>{"map"=>"", "winner"=>nil}}},
     "winners"=>
      {"players"=>["Zerg~MVP~DongRaeGu", "Zerg~IM~NesTea"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Zerg~IM~NesTea"},
         "game3"=>{"map"=>"", "winner"=>"Zerg~MVP~DongRaeGu"}}},
     "losers"=>
      {"players"=>["Terran~SlayerS~Ryung", "Terran~~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Terran~~SuperNoVa"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~SlayerS~Ryung"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Terran~~SuperNoVa"}}},
     "tiebreak"=>
      {"players"=>["Zerg~IM~NesTea", "Terran~~SuperNoVa"],
       "bo3"=>
        {"game1"=>{"map"=>"Atlantis Spaceship", "winner"=>"Zerg~IM~NesTea"},
         "game2"=>{"map"=>"Entombed Valley", "winner"=>"Terran~~SuperNoVa"},
         "game3"=>{"map"=>"Daybreak", "winner"=>"Zerg~IM~NesTea"}}}}},
 "ro8"=>
  {"matches"=>
    {"round"=>"ro8",
     "match1"=>
      {"players"=>["Protoss~IM~Seed", "Zerg~TSL~Symbol"],
       "bo5"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Zerg~TSL~Symbol"},
         "game2"=>{"map"=>"Antiga Shipyard", "winner"=>"Zerg~TSL~Symbol"},
         "game3"=>{"map"=>"Metropolis", "winner"=>"Protoss~IM~Seed"},
         "game4"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~IM~Seed"},
         "game5"=>{"map"=>"Daybreak", "winner"=>"Protoss~IM~Seed"}}},
     "match2"=>
      {"players"=>["Protoss~SK~MC", "Terran~Liquid~TaeJa"],
       "bo5"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~Liquid~TaeJa"},
         "game3"=>{"map"=>"Atlantis Spaceship", "winner"=>"Protoss~SK~MC"},
         "game4"=>{"map"=>"Whirlwind", "winner"=>"Terran~Liquid~TaeJa"},
         "game5"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~SK~MC"}}},
     "match3"=>
      {"players"=>["Terran~Prime~Byun", "Zerg~IM~NesTea"],
       "bo5"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Terran~Prime~Byun"},
         "game2"=>{"map"=>"Cloud Kingdom", "winner"=>"Terran~Prime~Byun"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Terran~Prime~Byun"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}},
     "match4"=>
      {"players"=>["Zerg~MVP~DongRaeGu", "Protoss~Quantic~NaNiwa"],
       "bo5"=>
        {"game1"=>{"map"=>"Whirlwind", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game3"=>{"map"=>"Entombed Valley", "winner"=>"Zerg~MVP~DongRaeGu"},
         "game4"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~Quantic~NaNiwa"},
         "game5"=>
          {"map"=>"Antiga Shipyard", "winner"=>"Zerg~MVP~DongRaeGu"}}}}},
 "ro4"=>
  {"matches"=>
    {"round"=>"ro4",
     "match1"=>
      {"players"=>["Protoss~IM~Seed", "Terran~Prime~Byun"],
       "bo5"=>
        {"game1"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~IM~Seed"},
         "game2"=>{"map"=>"Metropolis", "winner"=>"Terran~Prime~Byun"},
         "game3"=>{"map"=>"ESV Ohana", "winner"=>"Terran~Prime~Byun"},
         "game4"=>{"map"=>"Atlantis Spaceship", "winner"=>"Protoss~IM~Seed"},
         "game5"=>{"map"=>"Daybreak", "winner"=>"Protoss~IM~Seed"}}},
     "match2"=>
      {"players"=>["Protoss~SK~MC", "Zerg~MVP~DongRaeGu"],
       "bo5"=>
        {"game1"=>{"map"=>"Daybreak", "winner"=>"Protoss~SK~MC"},
         "game2"=>{"map"=>"ESV Ohana", "winner"=>"Protoss~SK~MC"},
         "game3"=>{"map"=>"Antiga Shipyard", "winner"=>"Protoss~SK~MC"},
         "game4"=>{"map"=>"", "winner"=>nil},
         "game5"=>{"map"=>"", "winner"=>nil}}}}},
 "ro2"=>
  {"matches"=>
    {"round"=>"ro2",
     "finals"=>
      {"players"=>["Protoss~IM~Seed", "Protoss~SK~MC"],
       "bo7"=>
        {"game1"=>{"map"=>"Metropolis", "winner"=>"Protoss~IM~Seed"},
         "game2"=>{"map"=>"Daybreak", "winner"=>"Protoss~IM~Seed"},
         "game3"=>{"map"=>"Whirlwind", "winner"=>"Protoss~IM~Seed"},
         "game4"=>{"map"=>"Entombed Valley", "winner"=>"Protoss~SK~MC"},
         "game5"=>{"map"=>"Cloud Kingdom", "winner"=>"Protoss~IM~Seed"},
         "game6"=>{"map"=>"", "winner"=>nil},
         "game7"=>{"map"=>"", "winner"=>nil}}}}}}

  ]
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
# Select Data
season_number = 1
data = inputdata[season_number-1]

# Generate Tournament
tournament = Tournament.new
tournament.year = data["league"][0]
tournament.league = data["league"][1]
tournament.season = data["league"][2].split[1]
tournament.banner = data["banner"]

# Generate Map Pool
mappool = MapPool.new
data["maps"].each do |map|
  check = Map.find_by_name(map)
  if check == nil
    input = Map.create(:name => map)
  else
    # Map already exists
    input = check
  end
  mappool.maps << input
end
# mappool.maps << Map.all
tournament.map_pool = mappool

# Generate Players
data["players"].each do |name,raceteamname|
  check = Player.find_by_name(name)
  if check == nil
    player = Player.create(:name => name)
  else
    player = check
  end
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