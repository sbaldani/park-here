Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :users
  resources :cars
  resources :parks
  root 'home#index'
end
