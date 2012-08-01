def generate_tournament
  puts "Welcome to the GSL Tournament data generator script!"
  writeFile = File.open('2012-gsl-season1.html','r+')
  
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

def generate_map_pool(writeFile, maps)
  puts "Map Pool (enter 0 to end):"
  map = "1"
  writeFile.write("<map_pool>\n")
  while map = gets.gsub("\n","") and map != "0" do
    writeFile.write("\t<map_select>"+map+"</map_select>\n")
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
		writeFile.write("\t<protoss>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
      players[player.split('~')[1].downcase] = player.split('~')[1]
		end
		writeFile.write("</protoss>\n")
  when "Terran"
		writeFile.write("\t<terran>")
		while player = gets.gsub("\n","") and player != "0" do
			writeFile.write(race+"~"+player+"|")
      players[player.split('~')[1].downcase] = player.split('~')[1]
		end
		writeFile.write("</terran>\n")
  when "Zerg"
		writeFile.write("\t<zerg>")
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
    writeFile.write("\t<groupA>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupA>\n")
    puts "B"
    writeFile.write("\t<groupB>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupB>\n")
    puts "C"
    writeFile.write("\t<groupC>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupC>\n")
    puts "D"
    writeFile.write("\t<groupD>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupD>\n")
    puts "E"
    writeFile.write("\t<groupE>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupE>\n")
    puts "F"
    writeFile.write("\t<groupF>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupF>\n")
    puts "G"
    writeFile.write("\t<groupG>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupG>\n")
    puts "H"
    writeFile.write("\t<groupH>\n")
    puts "Ro32 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupH>\n")
  when 16
    puts "A"
    writeFile.write("\t<groupA>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupA>\n")
    puts "B"
    writeFile.write("\t<groupB>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupB>\n")
    puts "C"
    writeFile.write("\t<groupC>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupC>\n")
    puts "D"
    writeFile.write("\t<groupD>\n")
    puts "Ro16 Match"
    generate_matches(writeFile, "groupstages", maps, players)
    writeFile.write("\t</groupD>\n")
  when 8
		puts "1"
		writeFile.write("\t<match1>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("\t</match1>\n")
		puts "2"
		writeFile.write("\t<match2>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("\t</match2>\n")
		puts "3"
		writeFile.write("\t<match3>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("\t</match3>\n")
		puts "4"
		writeFile.write("\t<match4>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("\t</match4>\n")
  when 4
		puts "1"
		writeFile.write("\t<match1>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("\t</match1>\n")
		puts "2"
		writeFile.write("\t<match2>\n")
		generate_matches(writeFile, "semistages", maps, players)
		writeFile.write("\t</match2>\n")
  when 2
		puts "1"
		writeFile.write("\t<match1>\n")
		generate_matches(writeFile, "finalstages", maps, players)
		writeFile.write("\t</match1>\n")
  end	
end

def generate_matches(writeFile, matchtype, maps, players)
  case matchtype
  when "groupstages"
    writeFile.write("\t\t<match1>\n")
    puts "Match 1"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("\t\t</match1>\n")
    writeFile.write("\t\t<match2>\n")
    puts "Match 2"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("\t\t</match2>\n")
    writeFile.write("\t\t<winners>\n")
    puts "Winners"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("\t\t</winners>\n")
    writeFile.write("\t\t<losers>\n")
    puts "Losers"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("\t\t</losers>\n")
    writeFile.write("\t\t<tiebreak>\n")
    puts "Tiebreak"
    puts "Games"
    generate_data(writeFile, "groupstages", maps, players)
    writeFile.write("\t\t</tiebreak>\n")
  when "semistages"
		generate_data(writeFile, "semistages", maps, players)
  when "finalstages"
		generate_data(writeFile, "finalstages", maps, players)
  end
end

def generate_data(writeFile, datatype, maps, players)
  if datatype == "groupstages"
		puts "Player 1"
		writeFile.write("\t\t\t<player1>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t\t"+players[player]+"\n")
		writeFile.write("\t\t\t</player1>\n")
		puts "Player 2"
		writeFile.write("\t\t\t<player2>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t\t"+players[player]+"\n")
		writeFile.write("\t\t\t</player2>\n")
		puts "Game 1"
		writeFile.write("\t\t\t<game1>\n")
		writeFile.write("\t")
		generate_game(writeFile, maps, players)
		writeFile.write("\t")
		writeFile.write("\t\t\t</game1>\n")
		writeFile.write("\t")
		puts "Game 2"
		writeFile.write("\t\t\t<game2>\n")
		writeFile.write("\t")
		generate_game(writeFile, maps, players)
		writeFile.write("\t")
		writeFile.write("\t\t\t</game2>\n")
		puts "Game 3"
		writeFile.write("\t\t\t<game3>\n")
		writeFile.write("\t")
		generate_game(writeFile, maps, players)
		writeFile.write("\t")
		writeFile.write("\t\t\t</game3>\n")
  else
		puts "Player 1"
		writeFile.write("\t\t<player1>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t"+players[player]+"\n")
		writeFile.write("\t\t</player1>\n")
		puts "Player 2"
		writeFile.write("\t\t<player2>\n")
		player = gets.gsub("\n","")
		writeFile.write("\t\t\t"+players[player]+"\n")
		writeFile.write("\t\t</player2>\n")
		puts "Game 1"
		writeFile.write("\t\t<game1>\n")
		generate_game(writeFile, maps, players)
		writeFile.write("\t\t</game1>\n")
		puts "Game 2"
		writeFile.write("\t\t<game2>\n")
		generate_game(writeFile, maps, players)
		writeFile.write("\t\t</game2>\n")
		puts "Game 3"
		writeFile.write("\t\t<game3>\n")
		generate_game(writeFile, maps, players)
		writeFile.write("\t\t</game3>\n")
  end
  if datatype == "semistages" || datatype == "finalstages"
		puts "Game 4"
		writeFile.write("\t\t<game4>\n")
		generate_game(writeFile, maps, players)
		writeFile.write("\t\t</game4>\n")
		puts "Game 5"
		writeFile.write("\t\t<game5>\n")
		generate_game(writeFile, maps, players)
		writeFile.write("\t\t</game5>\n")
		if datatype == "finalstages"
			puts "Game 6"
			writeFile.write("\t\t<game6>\n")
			generate_game(writeFile, maps, players)
			writeFile.write("\t\t</game6>\n")
			puts "Game 7"
			writeFile.write("\t\t<game7>\n")
			generate_game(writeFile, maps, players)
			writeFile.write("\t\t</game7>\n")
		end
  end
end

def generate_game(writeFile, maps, players)
  writeFile.write("\t\t\t<map_select>\n")
  puts "Map"
  input = gets.gsub("\n","")
  writeFile.write("\t\t\t\t"+maps[input].to_s+"\n")
  writeFile.write("\t\t\t</map_select>\n")
  writeFile.write("\t\t\t<winner>\n")
  puts "Winner"
  input = gets.gsub("\n","")
  writeFile.write("\t\t\t\t"+players[input].to_s+"\n")
  writeFile.write("\t\t\t</winner>\n")
end

generate_tournament