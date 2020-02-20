Rails.application.routes.draw do
  get 'home/index'
  resources :users
  resources :cars
  root 'home#index'
end
