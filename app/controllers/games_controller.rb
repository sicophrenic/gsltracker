class GamesController < ApplicationController
  before_filter :require_admin, :except => [:index, :show]
  
  def index
    @games = Game.all
  end
  
  def show
    if params[:notice] != nil
      flash.now[:notice] = params[:notice]
    end
    @game = Game.find(params[:id])
    @match = @game.match
    @gameno = @match.games.index(@game)+1
    @group = @match.group
    if @group
      @round = @group.round
      @groupno = get_groupno(@round, @group)
    else
      @round = @match.round
      @round.roundof == "RO2" ? @matchno = "Finals" : @matchno = @round.matches.index(@match)+1
    end
    @tournament = @round.tournament
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params[:game])

    if @game.save
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @game = Game.find(params[:id])
    
    if @game.update_attributes(params[:game])
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render action: "edit"
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    redirect_to games_url
  end
end
