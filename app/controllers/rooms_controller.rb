class RoomsController < ApplicationController
  before_action :authenticate_user!
  
  def rooms_index
    @rooms = Room.all
  end

  def new
    @building_id = params[:building_id]
  end

  def create
    @room = Room.new
    @room.room_number = params[:room_number]
    @room.building_id = params[:building_id]
    @room.save
    
    redirect_to "/buildings/show/#{@room.building_id}"
  end

  def show
    @rooms = Room.all
    @tenants = Tenant.all
    @room = Room.find(params[:id])
    @building_id = params[:building_id]
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    room = Room.find(params[:id])
    room.room_number = params[:room_number]
    room.save
    
    redirect_to "/buildings/show/#{room.building_id}"
  end

  def destroy
    @room = Room.find(params[:id])
    
    @room.destroy
    
    redirect_to "/buildings/show/#{@room.building_id}"
  end
end
