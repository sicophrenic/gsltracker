class RoundsController < ApplicationController
  before_filter :require_admin, :except => [:index, :show]
  
  def index
    @rounds = Round.all
  end

  def show
    @round = Round.find(params[:id])
    if @round.groups
      @groups = @round.groups
    else
      @matches = @round.matches
    end
    @tournament = @round.tournament
  end

  def new
    @round = Round.new
  end

  def edit
    @round = Round.find(params[:id])
  end

  def create
    @round = Round.new(params[:round])

    if @round.save
      redirect_to @round, notice: 'Round was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @round = Round.find(params[:id])

    if @round.update_attributes(params[:round])
      redirect_to @round, notice: 'Round was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @round = Round.find(params[:id])
    @round.destroy

    redirect_to rounds_url
  end
end
