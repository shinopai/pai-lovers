class JoinsController < ApplicationController
  before_action :get_user
  before_action :get_community

  def create
    @user.communities << @community
    redirect_to community_path(@community)
  end

  def destroy
    @join = Join.find_by(user_id: @user.id, community_id: @community.id)
    @join.destroy
    redirect_to community_path(@community)
  end


  private 
  def get_user
    @user = User.find(params[:user_id])
  end

  def get_community
    @community = Community.find(params[:community_id])
  end
end
