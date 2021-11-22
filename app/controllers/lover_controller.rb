class LoverController < ApplicationController
  before_action :authenticate_user!
  before_action :get_current_user, only: %i(index all)
  before_action :set_q, only: %i(all search)

  def index
    @joined_ids = Join.where(user_id: @user.id).pluck(:community_id)
    @joined_communities = Community.where(id: @joined_ids).limit(3)
  end

  def all
    @all_lovers = User.where.not(id: [@user.id, 2]).page(params[:page]).per(30)
    render 'lovers'
  end

  def search
    @all_lovers = @q.result.page(params[:page]).per(30)
    @queries = request.query_parameters[:q]
    logger.debug(@all_lovers)
  end



  private
  def get_current_user
    @user = current_user
  end

  def set_q
    @user = current_user
    @q = User.where.not(id: [@user.id, 2]).ransack(params[:q])
  end
end
