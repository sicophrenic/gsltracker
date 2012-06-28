class MapAssignmentsController < ApplicationController
  # GET /map_assignments
  # GET /map_assignments.json
  def index
    @map_assignments = MapAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @map_assignments }
    end
  end

  # GET /map_assignments/1
  # GET /map_assignments/1.json
  def show
    @map_assignment = MapAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @map_assignment }
    end
  end

  # GET /map_assignments/new
  # GET /map_assignments/new.json
  def new
    @map_assignment = MapAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @map_assignment }
    end
  end

  # GET /map_assignments/1/edit
  def edit
    @map_assignment = MapAssignment.find(params[:id])
  end

  # POST /map_assignments
  # POST /map_assignments.json
  def create
    @map_assignment = MapAssignment.new(params[:map_assignment])

    respond_to do |format|
      if @map_assignment.save
        format.html { redirect_to @map_assignment, notice: 'Map assignment was successfully created.' }
        format.json { render json: @map_assignment, status: :created, location: @map_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @map_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /map_assignments/1
  # PUT /map_assignments/1.json
  def update
    @map_assignment = MapAssignment.find(params[:id])

    respond_to do |format|
      if @map_assignment.update_attributes(params[:map_assignment])
        format.html { redirect_to @map_assignment, notice: 'Map assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @map_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_assignments/1
  # DELETE /map_assignments/1.json
  def destroy
    @map_assignment = MapAssignment.find(params[:id])
    @map_assignment.destroy

    respond_to do |format|
      format.html { redirect_to map_assignments_url }
      format.json { head :no_content }
    end
  end
end
