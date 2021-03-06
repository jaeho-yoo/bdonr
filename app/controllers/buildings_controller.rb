class BuildingsController < ApplicationController
  before_action :authenticate_user!
  
  def buildings_index
    if user_signed_in?
      @buildings = Building.all
    else
      redirect_to "/users/sign_in"
    end
  end

  def show
    @building = Building.find(params[:id])
    @building_id = params[:id]
    # @rooms = Room.all
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