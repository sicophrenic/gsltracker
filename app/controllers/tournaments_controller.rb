class TournamentsController < ApplicationController
  before_filter :require_admin, :except => [:index, :show, :overview, :stats, :summary]
  
  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
    @rounds = @tournament.rounds
  end

  def new
    @tournament = Tournament.new
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def create
    @tournament = Tournament.new(params[:tournament])

    if @tournament.save
      redirect_to @tournament, notice: 'Tournament was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @tournament = Tournament.find(params[:id])

    if @tournament.update_attributes(params[:tournament])
      redirect_to @tournament, notice: 'Tournament was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy

    redirect_to tournaments_url
  end

  def overview
    @tournament = Tournament.find(params[:id])
    @maps = @tournament.map_pool.maps
  end

  def stats
    @tournament = Tournament.find(params[:id])
    @players = @tournament.players
    @registrations = {}
    @teamschart = {}
    @raceschart = {}
    @teams = {}
    @races = {}
    @players.each do |player|
      reg = Registration.find_by_player_id_and_tournament_id(player, @tournament)
      @registrations[player] = [reg.race, reg.team]
      if @teamschart[reg.team] == nil
        @teamschart[reg.team] = 1
        @teams[reg.team] = [] << player
      else
        @teamschart[reg.team] += 1
        @teams[reg.team] << player
      end
      if @raceschart[reg.race] == nil
        @raceschart[reg.race] = 1
        @races[reg.race] = [] << player
      else
        @raceschart[reg.race] += 1
        @races[reg.race] << player
      end
    end

    @terran = {"Protoss" => 0, "Zerg" => 0}
    @protoss = {"Terran" => 0, "Zerg" => 0}
    @zerg = {"Terran" => 0, "Protoss" => 0}
    @maps = {}
    @tournament.map_pool.maps.each do |map|
      @maps[map] = {"Terran" => 0, "Protoss" => 0, "Zerg" => 0}
    end
    race_map_stats
    @terran["total"] = @terran["Protoss"]+@terran["Zerg"]
    @protoss["total"] = @protoss["Terran"]+@protoss["Zerg"]
    @zerg["total"] = @zerg["Terran"]+@zerg["Protoss"]
 
    # @tvp_rate = @tvp["wins"].to_f*100/@tvp["games"].to_f
    # @pvt_rate = (@tvp["games"]-@tvp["wins"]).to_f*100/@tvp["games"].to_f
    # @tvz_rate = @tvz["wins"].to_f*100/@tvz["games"].to_f
    # @zvt_rate = (@tvz["games"]-@tvz["wins"]).to_f*100/@tvz["games"].to_f
    # @pvz_rate = @pvz["wins"].to_f*100/@pvz["games"].to_f
    # @zvp_rate = (@pvz["games"]-@pvz["wins"]).to_f*100/@pvz["games"].to_f
  end

  def summary
    @tournament = Tournament.find(params[:id])
    @advance = {}
    @fall = {}
    @tournament.rounds.each do |round|
      @advance[round.roundof] = []
      @fall[round.roundof] = []
      if round.groups != []
        round.groups.each do |group|
          [2,4].each do |matchi|
            who_advances(group.matches[matchi], round)
          end
        end
      else
        round.matches.each do |match|
          who_advances(match, round)
        end
      end
    end
  end

  protected
    def who_advances(match, round)
      advancer = match.games.last.player
      match.players[0] == advancer ? faller = match.players[1] : faller = match.players[0]
      @advance[round.roundof] << Registration.find_by_player_id_and_tournament_id(advancer, @tournament)
      @fall[round.roundof] << Registration.find_by_player_id_and_tournament_id(faller, @tournament)
    end

    def race_map_stats
      matches = get_tournament_matches(@tournament)
      matches.each do |match|
        p1 = match.players[0]
        p2 = match.players[1]
        games = match.games
        games.each do |game|
          map = game.map
          winner = game.player
          winrace = @registrations[winner][0]
          @maps[map][winrace] += 1
          if winner == p1
            aggregate_game(winrace, @registrations[p2][0])
          elsif winner == p2
            aggregate_game(winrace, @registrations[p1][0])
          end
        end
      end
    end
    def aggregate_game(winning, losing)
      if winning != losing
        case winning
        when "Terran"
          @terran[losing] += 1
        when "Protoss"
          @protoss[losing] += 1
        when "Zerg"
          @zerg[losing] += 1
        end
      end
    end
end
