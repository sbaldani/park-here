Rails.application.routes.draw do
  get 'home/index'
  resources :users
  resources :cars
  resources :parks
  root 'home#index'
end
