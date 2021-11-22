class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_q

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :content, :age, :sex, :blood_type, :body_shape, :height, :residence, :birth_place, :holiday, :work, profile_image_attributes: [:profile_image]])
    end

    def after_sign_in_path_for(resource)
      lover_index_path
    end
     
    def after_sign_out_path_for(resource)
      root_path
    end

    def set_q
      @q = Community.ransack(params[:q])
      @all_communities = @q.result
    end
end
