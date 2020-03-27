Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, :skip => [:users]
  ActiveAdmin.routes(self)
  get 'home/index'
  get 'dashboards/index'
  resources :costumers
  resources :cars
  resources :parks
  resources :rents
  root 'home#index'
end
