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
      reg = Registration.find_by_player_id(player)
      fullname = reg.team+"."+player.name
      @registrations[player] = reg
      if @teamschart[reg.team] == nil
        @teamschart[reg.team] = 1
        @teams[reg.team] = [] << fullname
      else
        @teamschart[reg.team] += 1
        @teams[reg.team] << fullname
      end
      if @raceschart[reg.race] == nil
        @raceschart[reg.race] = 1
        @races[reg.race] = [] << fullname
      else
        @raceschart[reg.race] += 1
        @races[reg.race] << fullname
      end
    end
  end

  def summary
    @tournament = Tournament.find(params[:id])
  end
end
