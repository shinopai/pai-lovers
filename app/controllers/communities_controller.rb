class CommunitiesController < ApplicationController
  before_action :get_all, only: %i(index create)
  before_action :set_q, only: %i(index)

  def index
    @category = Category.new 
    @community = @category.communities.build
    @all_communities = @q.result
  end

  def create
    @community = Community.new(community_params)

    if @community.save 
      redirect_to communities_index_path
    else
      render 'index'
    end
  end

  def search
    
  end

  def show
    @user = current_user
    @community = Community.find(params[:id])
    @isJoin = Join.where(user_id: @user.id).where(community_id: @community.id)
    @guest_user_ids = Join.where(community_id: @community.id).pluck(:user_id)
    @guests = User.where(id: @guest_user_ids)
  end

  private 
  def get_all
    @all_communities = Community.order(created_at: 'desc').all
  end

  def community_params
    params.require(:community).permit(:category_id, :name, :community_image)
  end

  def set_q
    @q = Community.ransack(params[:q])
  end
end
