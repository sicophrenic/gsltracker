# ro32_groups = {}
# matches = {}
# match1/2/winners/losers/tiebreak = {}
# games = {}
# game1/2/3 = {}
# 
# ro32_groups{ matchesX8{ matchX5{ games{ gameX3-5{ }}}}}
require 'pp'

def parse_data(path)
  tournament = {}
	file = File.open(path,"rb")
	contents = file.read
	contents = contents.gsub("\r","").gsub("\t","").gsub("\n","")
	
	# League
	contents.match(/<league>(.*)<\/league>/)
	league = $1.split("\|")
	year = league[0]
	type = league[1]
	season = league[2]
	tournament["league"] = league
	
	# Banner
	contents.match(/<banner>(.*)<\/banner>/)
	banner = $1
	tournament["banner"] = banner
	
	# Map Pool
	contents.match(/<map_pool>(.*)<\/map_pool>/)
	maps = $1.gsub(/<map_select>/,"").split("</map_select>")
	tournament["maps"] = maps
	
	# Players
	contents.match(/<protoss>(.*)<\/protoss>/)
	protoss = $1.split("|")
	contents.match(/<terran>(.*)<\/terran>/)
	terran = $1.split("|")
	contents.match(/<zerg>(.*)<\/zerg>/)
	zerg = $1.split("|")
	players = {}
	protoss.each do |player|
	  playerName = player.split('~')[2]
	  players[playerName] = player
  end
	terran.each do |player|
	  playerName = player.split('~')[2]
	  players[playerName] = player
  end
	zerg.each do |player|
	  playerName = player.split('~')[2]
	  players[playerName] = player
  end
	tournament["players"] = players
	
	# RO32
	contents.match(/<ro32>(.*)<\/ro32>/)
	ro32 = $1
	ro32_groups = {}
	("A".."H").each do |letter|
		current = "group"+letter
		ro32.match(/<#{current}>(.*)<\/#{current}>/)
		group = $1
		matches = parse_group(players, group, "ro32")
		ro32_groups[current] = matches
	end

  # RO16
  contents.match(/<ro16>(.*)<\/ro16>/)
  ro16 = $1
  ro16_groups = {}
  ("A".."D").each do |letter|
  	current = "group"+letter
  	ro16.match(/<#{current}>(.*)<\/#{current}>/)
  	group = $1
  	matches = parse_group(players, group, "ro16")
  	ro16_groups[current] = matches
  end
  
  # RO8
  contents.match(/<ro8>(.*)<\/ro8>/)
  ro8 = $1
  ro8_matches = {}
  matches = parse_group(players, ro8, "ro8")
  ro8_matches["matches"] = matches
  
  # RO4
  contents.match(/<ro4>(.*)<\/ro4>/)
  ro4 = $1
  ro4_matches = {}
  matches = parse_group(players, ro4, "ro4")
  ro4_matches["matches"] = matches
  
  # RO2
  contents.match(/<ro2>(.*)<\/ro2>/)
  ro2 = $1
  ro2_matches = {}
  finalset = parse_group(players, ro2, "ro2")
  ro2_matches["match1"] = finalset
  
  tournament["ro32"] = ro32_groups
  tournament["ro16"] = ro16_groups
  tournament["ro8"] = ro8_matches
  tournament["ro4"] = ro4_matches
  tournament["ro2"] = ro2_matches
  
  pp tournament
end

def parse_group(players, data, round)
	matches = {}
	matches["round"] = round
	if round ==  "ro32" || round == "ro16"
		# Match 1
		data.match(/<match1>(.*)<\/match1>/)
		match = $1
		match.match(/<player1>(.*)<\/player1>/)	
		player1 = $1
		match.match(/<player2>(.*)<\/player2>/)	
		player2 = $1
		games = parse_games(players, match, round)
		match1 = {}
		match1["players"] = [] << players[player1] << players[player2]
		match1["bo3"] = games
		matches["match1"] = match1
		# Match 2
		data.match(/<match2>(.*)<\/match2>/)
		match = $1
		match.match(/<player1>(.*)<\/player1>/)	
		player1 = $1
		match.match(/<player2>(.*)<\/player2>/)	
		player2 = $1
		games = parse_games(players, match, round)
		match2 = {}
		match2["players"] = [] << players[player1] << players[player2]
		match2["bo3"] = games
		matches["match2"] = match2
		# Winners
		data.match(/<winners>(.*)<\/winners>/)
		match = $1
		match.match(/<player1>(.*)<\/player1>/)	
		player1 = $1
		match.match(/<player2>(.*)<\/player2>/)	
		player2 = $1
		games = parse_games(players, match, round)
		winners = {}
		winners["players"] = [] << players[player1] << players[player2]
		winners["bo3"] = games
		matches["winners"] = winners
		# Losers
		data.match(/<losers>(.*)<\/losers>/)
		match = $1
		match.match(/<player1>(.*)<\/player1>/)	
		player1 = $1
		match.match(/<player2>(.*)<\/player2>/)	
		player2 = $1
		games = parse_games(players, match, round)
		losers = {}
		losers["players"] = [] << players[player1] << players[player2]
		losers["bo3"] = games
		matches["losers"] = losers
		# Tiebreak
		data.match(/<tiebreak>(.*)<\/tiebreak>/)
		match = $1
		match.match(/<player1>(.*)<\/player1>/)	
		player1 = $1
		match.match(/<player2>(.*)<\/player2>/)	
		player2 = $1
		games = parse_games(players, match, round)
		tiebreak = {}
		tiebreak["players"] = [] << players[player1] << players[player2]
		tiebreak["bo3"] = games
		matches["tiebreak"] = tiebreak
	end
	if round == "ro8"
	  # Match 1
	  data.match(/<match1>(.*)<\/match1>/)
	  match = $1
	  match.match(/<player1>(.*)<\/player1>/)
	  player1 = $1
	  match.match(/<player2>(.*)<\/player2>/)
	  player2 = $1
	  games = parse_games(players, match, round)
	  match1 = {}
		match1["players"] = [] << players[player1] << players[player2]
	  match1["bo5"] = games
	  matches["match1"] = match1
	  # Match 2
    data.match(/<match2>(.*)<\/match2>/)
    match = $1
    match.match(/<player1>(.*)<\/player1>/)
    player1 = $1
    match.match(/<player2>(.*)<\/player2>/)
    player2 = $1
    games = parse_games(players, match, round)
    match2 = {}
		match2["players"] = [] << players[player1] << players[player2]
    match2["bo5"] = games
    matches["match2"] = match2
	  # Match 3
    data.match(/<match3>(.*)<\/match3>/)
    match = $1
    match.match(/<player1>(.*)<\/player1>/)
    player1 = $1
    match.match(/<player2>(.*)<\/player2>/)
    player2 = $1
    games = parse_games(players, match, round)
    match3 = {}
		match3["players"] = [] << players[player1] << players[player2]
    match3["bo5"] = games
    matches["match3"] = match3
	  # Match 4
    data.match(/<match4>(.*)<\/match4>/)
    match = $1
    match.match(/<player1>(.*)<\/player1>/)
    player1 = $1
    match.match(/<player2>(.*)<\/player2>/)
    player2 = $1
    games = parse_games(players, match, round)
    match4 = {}
		match4["players"] = [] << players[player1] << players[player2]
    match4["bo5"] = games
    matches["match4"] = match4
  end
	if round == "ro4"
	  # Match 1
	  data.match(/<match1>(.*)<\/match1>/)
	  match = $1
	  match.match(/<player1>(.*)<\/player1>/)
	  player1 = $1
	  match.match(/<player2>(.*)<\/player2>/)
	  player2 = $1
	  games = parse_games(players, match, round)
	  match1 = {}
		match1["players"] = [] << players[player1] << players[player2]
	  match1["bo5"] = games
	  matches["match1"] = match1
	  # Match 2
	  data.match(/<match2>(.*)<\/match2>/)
	  match = $1
	  match.match(/<player1>(.*)<\/player1>/)
	  player1 = $1
	  match.match(/<player2>(.*)<\/player2>/)
	  player2 = $1
	  games = parse_games(players, match, round)
	  match2 = {}
		match2["players"] = [] << players[player1] << players[player2]
	  match2["bo5"] = games
	  matches["match2"] = match2
  end
	if round == "ro2"
	  # Match 1
	  data.match(/<match1>(.*)<\/match1>/)
	  match = $1
	  match.match(/<player1>(.*)<\/player1>/)
	  player1 = $1
	  match.match(/<player2>(.*)<\/player2>/)
	  player2 = $1
	  games = parse_games(players, match, round)
	  final = {}
		final["players"] = [] << players[player1] << players[player2]
	  final["bo7"] = games
	  matches["finals"] = final
	end
	matches
end

def parse_games(players, data, round)
	games = {}
	# Game 1
	data.match(/<game1>(.*)<\/game1>/)
	game = $1
	game.match(/<map_select>(.*)<\/map_select>/)
	map = $1
	game.match(/<winner>(.*)<\/winner>/)
	winner = $1
	game1 = {}
	game1["map"] = map
	game1["winner"] = players[winner]
	games["game1"] = game1
	# Game 2
	data.match(/<game2>(.*)<\/game2>/)
	game = $1
	game.match(/<map_select>(.*)<\/map_select>/)
	map = $1
	game.match(/<winner>(.*)<\/winner>/)
	winner = $1
	game2 = {}
	game2["map"] = map
	game2["winner"] = players[winner]
	games["game2"] = game2
	# Game 3
	data.match(/<game3>(.*)<\/game3>/)
	game = $1
	game.match(/<map_select>(.*)<\/map_select>/)
	map = $1
	game.match(/<winner>(.*)<\/winner>/)
	winner = $1
	game3 = {}
	game3["map"] = map
	game3["winner"] = players[winner]
	games["game3"] = game3
	if round == "ro32" || round == "ro16"
	  # do nothing, no more than three games per match
  end
	if round == "ro8" || round == "ro4" || round == "ro2"
  	# Game 4
  	data.match(/<game4>(.*)<\/game4>/)
  	game = $1
  	game.match(/<map_select>(.*)<\/map_select>/)
  	map = $1
  	game.match(/<winner>(.*)<\/winner>/)
  	winner = $1
  	game4 = {}
  	game4["map"] = map
  	game4["winner"] = players[winner]
  	games["game4"] = game4
  	# Game 5
  	data.match(/<game5>(.*)<\/game5>/)
  	game = $1
  	game.match(/<map_select>(.*)<\/map_select>/)
  	map = $1
  	game.match(/<winner>(.*)<\/winner>/)
  	winner = $1
  	game5 = {}
  	game5["map"] = map
  	game5["winner"] = players[winner]
  	games["game5"] = game5
	  if round == "ro2"
    	# Game 6
    	data.match(/<game6>(.*)<\/game6>/)
    	game = $1
    	game.match(/<map_select>(.*)<\/map_select>/)
    	map = $1
    	game.match(/<winner>(.*)<\/winner>/)
    	winner = $1
    	game6 = {}
    	game6["map"] = map
    	game6["winner"] = players[winner]
    	games["game6"] = game6
    	# Game 7
    	data.match(/<game7>(.*)<\/game7>/)
    	game = $1
    	game.match(/<map_select>(.*)<\/map_select>/)
    	map = $1
    	game.match(/<winner>(.*)<\/winner>/)
    	winner = $1
    	game7 = {}
    	game7["map"] = map
    	game7["winner"] = players[winner]
    	games["game7"] = game7
  	end
	end
	games
end

parse_data('gsl.html')