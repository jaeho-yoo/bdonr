class RoomsController < ApplicationController
  def rooms_index
    @rooms = Room.all
  end

  def new
    @building = Building.find(@building_id)
    # @building = Building.find(params[:id])
  end

  def create
    building = params[:building_id]
    room = params[:room_number]
    Room.create(room_number: room, building_id: building )
    
    redirect_to "/buildings/show/#{building}"
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
