Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :motorcycles
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#login'
      get '/logout', to: 'sessions#destroy'
      get '/authorized', to: 'sessions#logged_in?'
    end
  end
end
