def fill_game(matchdata, gameno)
	gameid = "game"+gameno.to_s
	if matchdata[gameid]["map"] != ""
		game = Game.new
		game.map = Map.find_by_name(matchdata[gameid]["map"])
		part = GameParticipant.new
		playerinfo = matchdata[gameid]["winner"].split('~')
		part.race = playerinfo[0]
		part.team = playerinfo[1]
		part.game = gamepart.player = Player.find_by_name(playerinfo[2])
		game
	else
		game = nil
	end
	game
end

def fill_matches(groupdata, type)
	case type
	when "groupmatches"
		### Match1
		match1 = Match.new
		tempmatch = groupdata["match1"]
		matchplayers = []
		tempmatch["players"].each do |p|
			matchplayers << p
			@groupplayers << p
			@roundplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		match1.games << game1 << game2 << game3
		match1.players = matchplayers
		### Match2
		match2 = Match.new
		tempmatch = groupdata["match2"]
		matchplayers = []
		tempmatch["players"].each do |p|
			matchplayers << p
			@groupplayers << p
			@roundplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		match1.games << game1 << game2 << game3
		match1.players = matchplayers
		### Winners
		winners = Match.new
		tempmatch = groupdata["winners"]
		matchplayers = []
		tempmatch["players"].each do |p|
			matchplayers << p
			@groupplayers << p
			@roundplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		match1.games << game1 << game2 << game3
		match1.players = matchplayers
		### Losers
		losers = Match.new
		tempmatch = groupdata["losers"]
		matchplayers = []
		tempmatch["players"].each do |p|
			matchplayers << p
			@groupplayers << p
			@roundplayers << p
		end
		matchgames = tempmatch["bo3"]
		game1 = fill_game(matchgames, 1)
		game2 = fill_game(matchgames, 2)
		game3 = fill_game(matchgames, 3)
		match1.games << game1 << game2 << game3
		match1.players = matchplayers
		### Tiebreak
		tiebreak = Match.new
		tempmatch = groupdata["tiebreak"]
		matchplayers = []
		tempmatch["players"].each do |p|
			matchplayers << p
			@groupplayers << p
			@roundplayers << p
		end
		matches = [] << match1 << match2 << winners << losers << tiebreak
	when "regularmatches"
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

#####   DATA-GENERATE   #####
def generate_tournament
  puts "Welcome to the GSL Tournament data generator script!"
  writeFile = File.open('gsl.html','r+')
  
  # LEAGUE
  generate_league(writeFile)
  
  # BANNER
  generate_banner(writeFile)
  
  # MAP POOL
  generate_map_pool(writeFile)
  
  # CODE S
  puts "Now starts Code S"
  writeFile.write("<code_s>\n")
  
  # PROTOSS
  generate_players(writeFile, "Protoss")
  
  # TERRAN
  generate_players(writeFile, "Terran")
  
  # ZERG
  generate_players(writeFile, "Zerg")
  
  writeFile.write("</code_s>\n\n")
  
  # ROUNDS
  generate_rounds(writeFile)
	
	puts "Thanks for generating GSL Tournament data."
end
def generate_league(writeFile)
  puts "League info (format: year|GSL|season _):"
  league = gets.gsub("\n","")
  writeFile.write("<league>\n")
  writeFile.write("\t"+league+"\n")
  writeFile.write("</league>\n")
  writeFile.write("\n")
end
def generate_banner(writeFile)
  puts "Banner URL:"
  banner = gets.gsub("\n","")
  writeFile.write("<banner>\n")
  writeFile.write("\t"+banner+"\n")
  writeFile.write("</banner>\n")
  writeFile.write("\n")
end
def generate_map_pool(writeFile)
  puts "Map Pool (enter 0 to end):"
  map = "1"
  writeFile.write("<map_pool>\n")
  while map = gets.gsub("\n","") and map != "0" do
    writeFile.write("\t<map_select>"+map+"</map_select>\n")
  end
  writeFile.write("</map_pool>\n")
  writeFile.write("\n")
end
def generate_players(writeFile, race)
  puts race+" players (format TEAM--PLAYER; enter 0 to end):"
  player = "1"
  case race
  when "Protoss"
		writeFile.write("\t<protoss>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
		end
		writeFile.write("</protoss>\n")
  when "Terran"
		writeFile.write("\t<terran>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
		end
		writeFile.write("</terran>\n")
  when "Zerg"
		writeFile.write("\t<zerg>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
		end
		writeFile.write("</zerg>\n")		
  end
end
def generate_rounds(writeFile)
  puts "Current Round (32, 16, 8, 4, 2; 0 to end):"
	round = "1"
  while round = gets.gsub("\n","") and round != "0"
		case round
		when "32"
			puts "Ro32"
			writeFile.write("<ro32>\n")
			puts "Group Stages"
			generate_groups(writeFile, 32)
			writeFile.write("</ro32>\n")
			puts "Next Round (16, 8, 4, 2; 0 to end):"
		when "16"
			puts "Ro16"
			writeFile.write("<ro16>\n")
			puts "Group Stages"
			generate_groups(writeFile, 16)
			writeFile.write("</ro16>\n")
			puts "Next Round (8, 4, 2; 0 to end):"
		when "8"
			puts "Ro8"
			writeFile.write("<ro8>\n")
			puts "Matches"
			generate_groups(writeFile, 8)
			writeFile.write("</ro8>\n")
			puts "Next Round (4, 2; 0 to end):"
		when "4"
			puts "Ro4"
			writeFile.write("<ro4>\n")
			puts "Matches"
			generate_groups(writeFile, 4)
			writeFile.write("</ro4>\n")
			puts "Next Round (2; 0 to end):"
		when "2"
			puts "Ro2"
			writeFile.write("<ro2>\n")
			puts "Matches"
			generate_groups(writeFile, 2)
			writeFile.write("</ro2>\n")
			return
		end
  end
end
def generate_groups(writeFile, groupno)
  case groupno
  when 32
    puts "A"
    writeFile.write("\t<groupA>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupA>\n")
    puts "B"
    writeFile.write("\t<groupB>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupB>\n")
    puts "C"
    writeFile.write("\t<groupC>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupC>\n")
    puts "D"
    writeFile.write("\t<groupD>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupD>\n")
    puts "E"
    writeFile.write("\t<groupE>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupE>\n")
    puts "F"
    writeFile.write("\t<groupF>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupF>\n")
    puts "G"
    writeFile.write("\t<groupG>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupG>\n")
    puts "H"
    writeFile.write("\t<groupH>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupH>\n")
  when 16
    puts "A"
    writeFile.write("\t<groupA>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupA>\n")
    puts "B"
    writeFile.write("\t<groupB>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupB>\n")
    puts "C"
    writeFile.write("\t<groupC>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupC>\n")
    puts "D"
    writeFile.write("\t<groupD>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages")
    writeFile.write("\t</groupD>\n")
  when 8
		puts "1"
		writeFile.write("\t<match1>\n")
		generate_matches(writeFile, "semistages")
		writeFile.write("\t</match1>\n")
		puts "2"
		writeFile.write("\t<match2>\n")
		generate_matches(writeFile, "semistages")
		writeFile.write("\t</match2>\n")
		puts "3"
		writeFile.write("\t<match3>\n")
		generate_matches(writeFile, "semistages")
		writeFile.write("\t</match3>\n")
		puts "4"
		writeFile.write("\t<match4>\n")
		generate_matches(writeFile, "semistages")
		writeFile.write("\t</match4>\n")
  when 4
		puts "1"
		writeFile.write("\t<match1>\n")
		generate_matches(writeFile, "semistages")
		writeFile.write("\t</match1>\n")
		puts "2"
		writeFile.write("\t<match2>\n")
		generate_matches(writeFile, "semistages")
		writeFile.write("\t</match2>\n")
  when 2
		puts "1"
		writeFile.write("\t<match1>\n")
		generate_matches(writeFile, "finalstages")
		writeFile.write("\t</match1>\n")
  end	
end
def generate_matches(writeFile, matchtype)
  case matchtype
  when "groupstages"
    writeFile.write("\t\t<match1>\n")
    puts "Match 1"
    puts "Games"
    generate_data(writeFile, "groupstages")
    writeFile.write("\t\t</match1>\n")
    writeFile.write("\t\t<match2>\n")
    puts "Match 2"
    puts "Games"
    generate_data(writeFile, "groupstages")
    writeFile.write("\t\t</match2>\n")
    writeFile.write("\t\t<winners>\n")
    puts "Winners"
    puts "Games"
    generate_data(writeFile, "groupstages")
    writeFile.write("\t\t</winners>\n")
    writeFile.write("\t\t<losers>\n")
    puts "Losers"
    puts "Games"
    generate_data(writeFile, "groupstages")
    writeFile.write("\t\t</losers>\n")
    writeFile.write("\t\t<tiebreak>\n")
    puts "Tiebreak"
    puts "Games"
    generate_data(writeFile, "groupstages")
    writeFile.write("\t\t</tiebreak>\n")
  when "semistages"
		generate_data(writeFile, "semistages")
  when "finalstages"
		generate_data(writeFile, "finalstages")
  end
end
def generate_data(writeFile, datatype)
  if datatype == "groupstages"
		puts "Player 1"
		writeFile.write("\t\t\t<player1>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t\t"+player+"\n")
		writeFile.write("\t\t\t</player1>\n")
		puts "Player 2"
		writeFile.write("\t\t\t<player2>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t\t"+player+"\n")
		writeFile.write("\t\t\t</player2>\n")
		puts "Game 1"
		writeFile.write("\t\t\t<game1>\n")
		writeFile.write("\t")
		generate_game(writeFile)
		writeFile.write("\t")
		writeFile.write("\t\t\t</game1>\n")
		writeFile.write("\t")
		puts "Game 2"
		writeFile.write("\t\t\t<game2>\n")
		writeFile.write("\t")
		generate_game(writeFile)
		writeFile.write("\t")
		writeFile.write("\t\t\t</game2>\n")
		puts "Game 3"
		writeFile.write("\t\t\t<game3>\n")
		writeFile.write("\t")
		generate_game(writeFile)
		writeFile.write("\t")
		writeFile.write("\t\t\t</game3>\n")
  else
		puts "Player 1"
		writeFile.write("\t\t<player1>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t"+player+"\n")
		writeFile.write("\t\t</player1>\n")
		puts "Player 2"
		writeFile.write("\t\t<player2>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t"+player+"\n")
		writeFile.write("\t\t</player2>\n")
		puts "Game 1"
		writeFile.write("\t\t<game1>\n")
		generate_game(writeFile)
		writeFile.write("\t\t</game1>\n")
		puts "Game 2"
		writeFile.write("\t\t<game2>\n")
		generate_game(writeFile)
		writeFile.write("\t\t</game2>\n")
		puts "Game 3"
		writeFile.write("\t\t<game3>\n")
		generate_game(writeFile)
		writeFile.write("\t\t</game3>\n")
  end
  if datatype == "semistages" || datatype == "finalstages"
		puts "Game 4"
		writeFile.write("\t\t<game4>\n")
		generate_game(writeFile)
		writeFile.write("\t\t</game4>\n")
		puts "Game 5"
		writeFile.write("\t\t<game5>\n")
		generate_game(writeFile)
		writeFile.write("\t\t</game5>\n")
		if datatype == "finalstages"
			puts "Game 6"
			writeFile.write("\t\t<game6>\n")
			generate_game(writeFile)
			writeFile.write("\t\t</game6>\n")
			puts "Game 7"
			writeFile.write("\t\t<game7>\n")
			generate_game(writeFile)
			writeFile.write("\t\t</game7>\n")
		end
  end
end
def generate_game(writeFile)
  writeFile.write("\t\t\t<map_select>\n")
  puts "Map"
  map = gets.gsub("\n","")
  writeFile.write("\t\t\t\t"+map+"\n")
  writeFile.write("\t\t\t</map_select>\n")
  writeFile.write("\t\t\t<winner>\n")
  puts "Winner"
  winner = gets.gsub("\n","")
  writeFile.write("\t\t\t\t"+winner+"\n")
  writeFile.write("\t\t\t</winner>\n")
end
generate_tournament
#####   DATA-GENERATE   #####
#############################
#####   DATA-PARSER     #####
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
  
  tournament
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
data = parse_data('gsl.html')
#####     DATA-PARSE    #####
#############################
#####     DATA-SEED     #####
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

# Generate Players
data["players"].each do |name,raceteamname|
Player.create(:name => name)
end
Player.all.each do |player|
player.tournaments << tournament
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
groupA = fill_groups(rounddata, "C")
ro32.groups << groupC
## GroupD
groupA = fill_groups(rounddata, "D")
ro32.groups << groupD
## GroupE
groupA = fill_groups(rounddata, "E")
ro32.groups << groupE
## GroupF
groupA = fill_groups(rounddata, "F")
ro32.groups << groupF
## GroupG
groupA = fill_groups(rounddata, "G")
ro32.groups << groupG
## GroupH
groupA = fill_groups(rounddata, "H")
ro32.groups << groupH
ro32.players = @roundplayers

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
groupA = fill_groups(rounddata, "C")
ro16.groups << groupC
## GroupD
groupA = fill_groups(rounddata, "D")
ro16.groups << groupD
ro16.players = @roundplayers

# # Generate RO8
# ro8 = Round.new(:roundof => "RO8")
# ro8players = []

# # Generate RO4
# ro4 = Round.new(:roundof => "RO4")
# ro4players = []

# # Generate RO2
# ro2 = Round.new(:roundof => "RO2")
# ro2players = []

tournament.save
#####     DATA-SEED     #####