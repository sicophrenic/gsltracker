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