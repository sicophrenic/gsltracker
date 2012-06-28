class GameParticipantsController < ApplicationController
  # GET /game_participants
  # GET /game_participants.json
  def index
    @game_participants = GameParticipant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_participants }
    end
  end

  # GET /game_participants/1
  # GET /game_participants/1.json
  def show
    @game_participant = GameParticipant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_participant }
    end
  end

  # GET /game_participants/new
  # GET /game_participants/new.json
  def new
    @game_participant = GameParticipant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_participant }
    end
  end

  # GET /game_participants/1/edit
  def edit
    @game_participant = GameParticipant.find(params[:id])
  end

  # POST /game_participants
  # POST /game_participants.json
  def create
    @game_participant = GameParticipant.new(params[:game_participant])

    respond_to do |format|
      if @game_participant.save
        format.html { redirect_to @game_participant, notice: 'Game participant was successfully created.' }
        format.json { render json: @game_participant, status: :created, location: @game_participant }
      else
        format.html { render action: "new" }
        format.json { render json: @game_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_participants/1
  # PUT /game_participants/1.json
  def update
    @game_participant = GameParticipant.find(params[:id])

    respond_to do |format|
      if @game_participant.update_attributes(params[:game_participant])
        format.html { redirect_to @game_participant, notice: 'Game participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_participants/1
  # DELETE /game_participants/1.json
  def destroy
    @game_participant = GameParticipant.find(params[:id])
    @game_participant.destroy

    respond_to do |format|
      format.html { redirect_to game_participants_url }
      format.json { head :no_content }
    end
  end
end
