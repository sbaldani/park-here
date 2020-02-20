Rails.application.routes.draw do
  get 'home/index'
  resources :users
  resources :parks
  root 'home#index'
end
