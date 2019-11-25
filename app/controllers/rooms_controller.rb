class RoomsController < ApplicationController
  def rooms_index
    @rooms = Room.all
  end

  def new
  end

  def create
    @room = Room.new
    @building = Building.find()
    
    @room.room_number = params[:room_number]
    
    @room.building_id = @building.id
    @room.save
    
    redirect_to "/buildings/show/#{@building.id}"
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    room = Building.find(params[:id])
    
    room.room_number = params[:room_number]
    
    room.save
    
    redirect_to "/rooms/rooms_index"
  end

  def destroy
    @room = Room.find(params[:id])
    
    @room.destroy
    
    redirect_to "/rooms/rooms_index"
  end
end
