class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :content, :age, :sex, :blood_type, :body_shape, :height, :residence, :birth_place, :holiday, :work])
    end
end
