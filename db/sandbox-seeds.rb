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