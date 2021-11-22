class UsersController < ApplicationController
  def show
    @current_user = current_user
    @user = User.find(params[:id])
    @isFollowing = Follow.where(followed_id: @user.id).where(follower_id: @current_user.id)
    @isFollowed = Follow.where(followed_id: @current_user.id).where(follower_id: @user.id)
    @followed_ids = Follow.where(follower_id: @current_user.id).pluck(:followed_id)
    @joined_community_ids = Join.where(user_id: @user.id).pluck(:community_id)
    @joined_communities = Community.where(id: @joined_community_ids)
  end
end
