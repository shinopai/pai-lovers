class RoomsController < ApplicationController
  def show
    @user = current_user
    @room = Room.find(params[:id])
    @message = Message.new 
  end

  def create
    @current_user = current_user
    @user = User.find(params[:partner_id])
    @room = Room.new
    @room.name = '@' + @current_user.name + '@' + @user.name
    @room.save 
    @room_id = Room.order(created_at: :desc).select(:id, :name).first
    @current_user.rooms << @room
    @user.rooms << @room

    redirect_to room_path(@room_id.id)
  end

end
