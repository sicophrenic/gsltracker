def generate_tournament
  puts "Welcome to the GSL Tournament data generator script!"
  writeFile = File.open('2012-gsl-season3.html','r+')
  
  # LEAGUE
  generate_league(writeFile)
  
  # BANNER
  generate_banner(writeFile)
  
  # MAP POOL
  maps = {}
  generate_map_pool(writeFile, maps)
  
  # CODE S
  players = {}
  puts "Now starts Code S"
  writeFile.write("<code_s>\n")
  
  # PROTOSS
  generate_players(writeFile, "Protoss", players)
  
  # TERRAN
  generate_players(writeFile, "Terran", players)
  
  # ZERG
  generate_players(writeFile, "Zerg", players)
  
  writeFile.write("</code_s>\n\n")
  
  # ROUNDS
  generate_rounds(writeFile, maps, players)
  # puts maps
  # puts players
	puts "Thanks for generating GSL Tournament data."
end

def generate_league(writeFile)
  puts "League info (format: year|GSL|season _):"
  league = gets.gsub("\n","")
  writeFile.write("<league>\n")
  writeFile.write(""+league+"\n")
  writeFile.write("</league>\n")
  writeFile.write("\n")
end

def generate_banner(writeFile)
  puts "Banner URL:"
  banner = gets.gsub("\n","")
  writeFile.write("<banner>\n")
  writeFile.write(""+banner+"\n")
  writeFile.write("</banner>\n")
  writeFile.write("\n")
end

def generate_map_pool(writeFile, maps)
  puts "Map Pool (enter 0 to end):"
  map = "1"
  writeFile.write("<map_pool>\n")
  while map = gets.gsub("\n","") and map != "0" do
    writeFile.write("<map_select>"+map+"</map_select>\n")
    maps[map.downcase] = map
  end
  writeFile.write("</map_pool>\n")
  writeFile.write("\n")
end

def generate_players(writeFile, race, players)
  puts race+" players (format TEAM--PLAYER; enter 0 to end):"
  player = "1"
  case race
  when "Protoss"
		writeFile.write("<protoss>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
      players[player.split('~')[1].downcase] = player.split('~')[1]
		end
		writeFile.write("</protoss>\n")
  when "Terran"
		writeFile.write("<terran>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
      players[player.split('~')[1].downcase] = player.split('~')[1]
		end
		writeFile.write("</terran>\n")
  when "Zerg"
		writeFile.write("<zerg>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
      players[player.split('~')[1].downcase] = player.split('~')[1]
		end
		writeFile.write("</zerg>\n")		
  end
end

def generate_rounds(writeFile, maps, players)
  puts "Current Round (32, 16, 8, 4, 2; 0 to end):"
	round = "1"
  while round = gets.gsub("\n","") and round != "0"
		case round
		when "32"
			puts "Ro32"
			writeFile.write("<ro32>\n")
			puts "Group Stages"
			generate_groups(writeFile, 32, maps, players)
			writeFile.write("</ro32>\n")
			puts "Next Round (16, 8, 4, 2; 0 to end):"
		when "16"
			puts "Ro16"
			writeFile.write("<ro16>\n")
			puts "Group Stages"
			generate_groups(writeFile, 16, maps, players)
			writeFile.write("</ro16>\n")
			puts "Next Round (8, 4, 2; 0 to end):"
		when "8"
			puts "Ro8"
			writeFile.write("<ro8>\n")
			puts "Matches"
			generate_groups(writeFile, 8, maps, players)
			writeFile.write("</ro8>\n")
			puts "Next Round (4, 2; 0 to end):"
		when "4"
			puts "Ro4"
			writeFile.write("<ro4>\n")
			puts "Matches"
			generate_groups(writeFile, 4, maps, players)
			writeFile.write("</ro4>\n")
			puts "Next Round (2; 0 to end):"
		when "2"
			puts "Ro2"
			writeFile.write("<ro2>\n")
			puts "Matches"
			generate_groups(writeFile, 2, maps, players)
			writeFile.write("</ro2>\n")
			return
		end
  end
end

def generate_groups(writeFile, groupno, maps, players)
  case groupno
  when 32
    puts "A"
    writeFile.write("<groupA>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupA>\n")
    puts "B"
    writeFile.write("<groupB>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupB>\n")
    puts "C"
    writeFile.write("<groupC>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupC>\n")
    puts "D"
    writeFile.write("<groupD>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupD>\n")
    puts "E"
    writeFile.write("<groupE>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupE>\n")
    puts "F"
    writeFile.write("<groupF>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupF>\n")
    puts "G"
    writeFile.write("<groupG>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupG>\n")
    puts "H"
    writeFile.write("<groupH>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupH>\n")
  when 16
    puts "A"
    writeFile.write("<groupA>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupA>\n")
    puts "B"
    writeFile.write("<groupB>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupB>\n")
    puts "C"
    writeFile.write("<groupC>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupC>\n")
    puts "D"
    writeFile.write("<groupD>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("</groupD>\n")
  when 8
		puts "1"
		writeFile.write("<match1>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("</match1>\n")
		puts "2"
		writeFile.write("<match2>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("</match2>\n")
		puts "3"
		writeFile.write("<match3>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("</match3>\n")
		puts "4"
		writeFile.write("<match4>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("</match4>\n")
  when 4
		puts "1"
		writeFile.write("<match1>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("</match1>\n")
		puts "2"
		writeFile.write("<match2>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("</match2>\n")
  when 2
		puts "1"
		writeFile.write("<match1>\n")
		generate_matches(writeFile, "finalstages", maps, players)
		writeFile.write("</match1>\n")
  end	
end

def generate_matches(writeFile, matchtype, maps, players)
  case matchtype
  when "groupstages"
    writeFile.write("<match1>\n")
    puts "Match 1"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("</match1>\n")
    writeFile.write("<match2>\n")
    puts "Match 2"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("</match2>\n")
    writeFile.write("<winners>\n")
    puts "Winners"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("</winners>\n")
    writeFile.write("<losers>\n")
    puts "Losers"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("</losers>\n")
    writeFile.write("<tiebreak>\n")
    puts "Tiebreak"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("</tiebreak>\n")
  when "semistages"
		generate_data(writeFile, "semistages", maps, players)
  when "finalstages"
		generate_data(writeFile, "finalstages", maps, players)
  end
end

def generate_data(writeFile, datatype, maps, players)
  spoilers = {}
	puts "Player 1"
	writeFile.write("<player1>\n")
	player = gets.gsub("\n","")
  spoilers[player] = 0
	writeFile.write(""+players[player]+"\n")
	writeFile.write("</player1>\n")
	puts "Player 2"
	writeFile.write("<player2>\n")
	player = gets.gsub("\n","")
  spoilers[player] = 0
	writeFile.write(""+players[player]+"\n")
	writeFile.write("</player2>\n")
	puts "Game 1"
	writeFile.write("<game1>\n")
	winner = generate_game(writeFile, maps, players)
  spoilers[winner] += 1
	writeFile.write("</game1>\n")
	puts "Game 2"
	writeFile.write("<game2>\n")
	winner = generate_game(writeFile, maps, players)
  spoilers[winner] += 1
	writeFile.write("</game2>\n")
  if spoilers[winner] == 2 && datatype == "groupstages"
    writeFile.write("<game3>\n")
    generate_empty_game(writeFile)
    writeFile.write("</game3>\n")
    return
  end
	puts "Game 3"
	writeFile.write("<game3>\n")
	winner = generate_game(writeFile, maps, players)
  spoilers[winner] += 1
	writeFile.write("</game3>\n")
  if spoilers[winner] == 3 && datatype == "semistages"
    writeFile.write("<game4>\n")
    generate_empty_game(writeFile)
    writeFile.write("</game4>\n")
    writeFile.write("<game5>\n")
    generate_empty_game(writeFile)
    writeFile.write("</game5>\n")
    return
  end
  if datatype == "semistages" || datatype == "finalstages"
		puts "Game 4"
		writeFile.write("<game4>\n")
		winner = generate_game(writeFile, maps, players)
    spoilers[winner] += 1
		writeFile.write("</game4>\n")
    if spoilers[winner] == 3 && datatype == "semistages"
      writeFile.write("<game5>\n")
      generate_empty_game(writeFile)
      writeFile.write("</game5>\n")
      return
    elsif spoilers[winner] == 4 && datatype == "finalstages"
      writeFile.write("<game5>\n")
      generate_empty_game(writeFile)
      writeFile.write("</game5>\n")
      writeFile.write("<game6>\n")
      generate_empty_game(writeFile)
      writeFile.write("</game6>\n")
      writeFile.write("<game7>\n")
      generate_empty_game(writeFile)
      writeFile.write("</game7>\n") 
      return     
    end
		puts "Game 5"
		writeFile.write("<game5>\n")
		winner = generate_game(writeFile, maps, players)
    spoilers[winner] += 1
		writeFile.write("</game5>\n")
    if spoilers[winner] == 4 && datatype == "finalstages"
      writeFile.write("<game6>\n")
      generate_empty_game(writeFile)
      writeFile.write("</game6>\n")
      writeFile.write("<game7>\n")
      generate_empty_game(writeFile)
      writeFile.write("</game7>\n") 
      return
    end
		if datatype == "finalstages"
			puts "Game 6"
			writeFile.write("<game6>\n")
			winner = generate_game(writeFile, maps, players)
      spoilers[winner] += 1
			writeFile.write("</game6>\n")
      if spoilers[winner] == 4
        writeFile.write("<game7>\n")
        generate_empty_game(writeFile)
        writeFile.write("</game7>\n")
        return
      end
			puts "Game 7"
			writeFile.write("<game7>\n")
			winner = generate_game(writeFile, maps, players)
      spoilers[winner] += 1
			writeFile.write("</game7>\n")
		end
  end
end

def generate_empty_game(writeFile)
  puts "Empty Game"
  writeFile.write("<map_select>\n")
  writeFile.write("\n")
  writeFile.write("</map_select>\n")
  writeFile.write("<winner>\n")
  writeFile.write("\n")
  writeFile.write("</winner>\n")
end

def generate_game(writeFile, maps, players)
  writeFile.write("<map_select>\n")
  puts "Map"
  input = gets.gsub("\n","")
  writeFile.write(""+maps[input].to_s+"\n")
  writeFile.write("</map_select>\n")
  writeFile.write("<winner>\n")
  puts "Winner"
  input = gets.gsub("\n","")
  writeFile.write(""+players[input].to_s+"\n")
  writeFile.write("</winner>\n")
  input
end

generate_tournament