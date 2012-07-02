class MapAssignmentsController < ApplicationController
  before_filter :require_admin, :except => [:index, :show]
  
  def index
    @map_assignments = MapAssignment.all
  end

  def show
    @map_assignment = MapAssignment.find(params[:id])
  end

  def new
    @map_assignment = MapAssignment.new
  end

  def edit
    @map_assignment = MapAssignment.find(params[:id])
  end

  def create
    @map_assignment = MapAssignment.new(params[:map_assignment])

    if @map_assignment.save
      redirect_to @map_assignment, notice: 'Map assignment was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @map_assignment = MapAssignment.find(params[:id])

    if @map_assignment.update_attributes(params[:map_assignment])
      redirect_to @map_assignment, notice: 'Map assignment was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @map_assignment = MapAssignment.find(params[:id])
    @map_assignment.destroy

    redirect_to map_assignments_url
  end
end
