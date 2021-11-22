class MessagesController < ApplicationController
  def show
    @user = current_user
    @followed_ids = Follow.where(follower_id: @user.id).pluck(:followed_id)
    @mutual_follower_ids = Follow.where(followed_id: @user.id).where(follower_id: @followed_ids).pluck(:follower_id)
    @mutual_users = User.where(id: @mutual_follower_ids)
  end

  def create
    @user = User.find(params[:user_id])
    @room = Room.find(params[:room_id])
    @message = @user.messages.build
    @message.room_id = @room.id
    @message.content = message_params[:content]

    if @message.save 
      redirect_to room_path(@room)
    else
      render 'rooms/show'
    end
  end




  private 
  def message_params
    params.require(:message).permit(:content)
  end
end
