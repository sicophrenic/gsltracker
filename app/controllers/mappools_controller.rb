class MapPoolsController < ApplicationController
  def index
    @map_pools = MapPool.all
  end

  def show
    @map_pool = MapPool.find(params[:id])
  end

  def new
    @map_pool = MapPool.new
  end

  def edit
    @map_pool = MapPool.find(params[:id])
  end

  def create
    @map_pool = MapPool.new(params[:map_pool])

    if @map_pool.save
      redirect_to @map_pool, notice: 'MapPool was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @map_pool = MapPool.find(params[:id])

    if @map_pool.update_attributes(params[:map_pool])
      redirect_to @map_pool, notice: 'MapPool was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @map_pool = MapPool.find(params[:id])
    @map_pool.destroy

    redirect_to map_pools_url
  end
end
