class BuildingsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def buildings_index
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
    @building_id = params[:id]
    @rooms = Room.all
  end

  def new
  end

  def create
    @building = Building.new
    
    @building.building_name = params[:building_name]
    @building.building_type = params[:building_type]
    @building.building_room = params[:building_room]
    @building.building_location = params[:building_location]
    
    @building.user_id = current_user.id
    @building.save
    
    redirect_to "/buildings/buildings_index"
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    building = Building.find(params[:id])
    
    building.building_name = params[:building_name]
    building.building_type = params[:building_type]
    building.building_room = params[:building_room]
    building.building_location = params[:building_location]
    
    building.save
    
    redirect_to "/buildings/buildings_index"
  end

  def destroy
    @building = Building.find(params[:id])
    
    @building.destroy
    
    redirect_to "/buildings/buildings_index"
  end
end