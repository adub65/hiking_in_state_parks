Rails.application.routes.draw do
  root "static#welcome"

  resources :users, only: [:new, :create, :show]

  resources :state_parks, only: [:new, :create, :show, :index] do
    resources :trails, only: [:new, :create, :show, :index] do
      resources :hikes, only: [:new, :create, :show]
    end
  end


  get "/signin", to: "sessions#new"
  post "/sessions", to: "sessions#create"

  post "/logout", to: "sessions#destroy"
end
