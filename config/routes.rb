Rails.application.routes.draw do
  root "static#welcome"

  resources :users
  resources :state_parks
  resources :trails
  resources :hikes

  get "/signin", to: "sessions#new"
  post "/sessions", to: "sessions#create"

  post "/logout", to: "sessions#destroy"
end
