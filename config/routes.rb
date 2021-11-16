Rails.application.routes.draw do
  # user management
  devise_for :users

  # root path 
  root "home#index"
end
