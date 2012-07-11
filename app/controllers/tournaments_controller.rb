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
    @teams = {}
    @races = {}
    @players.each do |player|
      reg = Registration.find_by_player_id(player)
      @registrations[player] = reg
      if @teams[reg.team] == nil
        @teams[reg.team] = 1
      else
        @teams[reg.team] += 1
      end
      if @races[reg.race] == nil
        @races[reg.race] = 1
      else
        @races[reg.race] += 1
      end
    end
    @terranno = @races["Terran"].to_f*100/32.to_f
    @protossno = @races["Protoss"].to_f*100/32.to_f
    @zergno = @races["Zerg"].to_f*100/32.to_f
  end

  def summary
    @tournament = Tournament.find(params[:id])
  end
end
