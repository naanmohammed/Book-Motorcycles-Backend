Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users', to: 'users#index'
      post "/signup", to: "users#create"
      post "/login", to: "sessions#create"
      get "/authorized", to: "sessions#show"

      get '/reservations', to: 'reservations#index'
      get '/reservations/:id', to: 'reservations#show'
      post '/add_reservation', to: 'reservations#create'
      delete '/reservations/:id', to: 'reservations#destroy'
      get '/motorcycles', to: 'motorcycles#index'
      get '/motorcycles/:id', to: 'motorcycles#show'
      post '/add_motorcycle', to: 'motorcycles#create'
      delete '/motorcycles/:id', to: 'motorcycles#destroy'
    end
  end
end
