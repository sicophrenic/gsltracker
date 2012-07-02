class MatchesController < ApplicationController
  before_filter :require_admin, :except => [:index, :show]
  
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
    if @match.group
      @group = @match.group
      @round = @group.round
      @groupno = get_groupno(@round, @group)
      @matchno = @group.matches.index(@match)+1
    else
      @round = @match.round
      @round.roundof == "RO2" ? @matchno = "Finals" : @matchno = @round.matches.index(@match)+1
    end 
    @games = @match.games
    @tournament = @round.tournament
    if @round.roundof == "RO32" || @round.roundof == "RO16"
      @bestof = 3
    elsif @round.roundof == "RO8" || @round.roundof == "RO4"
      @bestof = 5
    else
      @bestof = 7
    end
    @registrations = [] << Registration.find_by_player_id(@match.players[0]) << Registration.find_by_player_id(@match.players[1])
  end

  def new
    @match = Match.new
  end

  def edit
    @match = Match.find(params[:id])
  end

  def create
    @match = Match.new(params[:match])
    if @match.save
      redirect_to @match, notice: 'Match was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @match = Match.find(params[:id])

    if @match.update_attributes(params[:match])
      redirect_to @match, notice: 'Match was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy

    redirect_to matches_url
  end
end
