class MapsController < ApplicationController
  before_filter :require_admin
  
  def index
    @maps = Map.all
  end

  def show
    @map = Map.find(params[:id])
  end

  def new
    @map = Map.new
  end

  def edit
    @map = Map.find(params[:id])
  end

  def create
    @map = Map.new(params[:map])

    if @map.save
      redirect_to @map, notice: 'Map was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @map = Map.find(params[:id])

    if @map.update_attributes(params[:map])
      redirect_to @map, notice: 'Map was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @map = Map.find(params[:id])
    @map.destroy

    redirect_to maps_url
  end
  
  private
    def require_admin
      unless user_signed_in? && current_user.admin?
        flash[:error] = "You must be an admin to access this feature."
        redirect_to root_path
      end
    end
end