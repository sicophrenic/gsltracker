class GroupsController < ApplicationController
  before_filter :require_admin, :except => [:index, :show]
  
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @round = @group.round
    @groupno = get_groupno(@round, @group)
    @matches = @group.matches
    @tournament = @round.tournament
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(params[:group])
    
    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @group = Group.find(params[:id])

    if @group.update_attributes(params[:group])
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_url
  end
end
