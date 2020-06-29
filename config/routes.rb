Rails.application.routes.draw do
  root "static#welcome"

  resources :state_parks
  resources :trails
  resources :users
  resources :hikes

  get "/signin", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  
  get "/logout", to: "sessions#destroy"
end
