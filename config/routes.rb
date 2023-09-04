Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :motorcycles
      #resources :reservations
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#login'
      get '/logout', to: 'sessions#destroy'
      get '/authorized', to: 'sessions#logged_in?'
      delete '/reservations/:id', to: 'reservations#destroy'
      get '/reservations', to: 'reservations#index'
      get '/reservations/:id', to: 'reservations#show'
      post '/add_reservation', to: 'reservations#create'
    end
  end
end
