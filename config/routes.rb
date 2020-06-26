Rails.application.routes.draw do
  resources :hikes
  resources :state_parks
  resources :users
  resources :trails
end
