class MappoolsController < ApplicationController
  def index
    @mappools = Mappool.all
  end

  def show
    @mappool = Mappool.find(params[:id])
  end

  def new
    @mappool = Mappool.new
  end

  def edit
    @mappool = Mappool.find(params[:id])
  end

  def create
    @mappool = Mappool.new(params[:mappool])

    if @mappool.save
      redirect_to @mappool, notice: 'Mappool was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @mappool = Mappool.find(params[:id])

    if @mappool.update_attributes(params[:mappool])
      redirect_to @mappool, notice: 'Mappool was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @mappool = Mappool.find(params[:id])
    @mappool.destroy

    redirect_to mappools_url
  end
end
