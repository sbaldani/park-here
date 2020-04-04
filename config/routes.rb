Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, :skip => [:users]
  ActiveAdmin.routes(self)
  get 'home/index'
  get 'dashboard/', to: 'dashboard#index'
  resources :customers
  resources :cars
  resources :parks
  resources :rents
  root 'home#index'
end
