class Communities::UsersController < ApplicationController
  def show 
    @user = User.find(params[:id])
    @joined_ids = Join.where(user_id: @user.id).pluck(:community_id)
    @joined_communities = Community.where(id: @joined_ids)
  end
end
