Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
  get 'home/index'
  get 'dashboards/index'
  resources :users
  resources :cars
  resources :parks
  root 'home#index'
end
