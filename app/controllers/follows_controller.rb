class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @follow.save 

    if request.referer&.include?("follows")
      redirect_to follows_path
    else
      redirect_to user_path(params[:followed_id])
    end
  end

  def destroy
    @follow = Follow.find_by(followed_id: params[:followed_id], follower_id: params[:follower_id])
    @follow.destroy
    
    if request.referer&.include?("follows")
      redirect_to follows_path
    else
      redirect_to user_path(params[:followed_id])
    end
  end

  def show
    @user = current_user
    @followed_ids = Follow.where(follower_id: @user.id).pluck(:followed_id)
    @mutual_follower_ids = Follow.where(followed_id: @user.id).where(follower_id: @followed_ids).pluck(:follower_id)
    @mutual_users = User.where(id: @mutual_follower_ids)
    @follower_ids = Follow.where(followed_id: @user.id).pluck(:follower_id)
    @followers = User.where(id: @follower_ids)
  end


  private
  def follow_params
    params.permit(:followed_id, :follower_id)
  end
end
