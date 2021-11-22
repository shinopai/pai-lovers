Rails.application.routes.draw do
  # user management
  devise_for :users, controllers: { 
    registrations: 'users/registrations' 
  }

  # root path 
  root "home#index"

  # guest login 
  post '/users/guest_sign_in', to: 'guestuser#guest_sign_in'

  # top page that after login
  resources :lover, only: %i(index) do 
    collection do
      get :all
      get :search
    end
  end

  # users route 
  resources :users do 
    resources :rooms, except: %i(show create) do
      resources :messages, only: %i(create)
    end
  end

  # follows route 
  resource :follows

  # messages route 
  resource :messages, only: %i(show)

  # rooms route 
  resources :rooms, only: %i(show create)

  # categories route
  resources :categories

  # communities route
  resources :communities, only: %i(index show create)
  namespace :communities do
    resources :users, only: %i(show)
  end

  # joins route
  resources :users do 
    resources :communities, except: %i(index) do
      resource :joins, only: %i(create destroy)
    end
  end
end
