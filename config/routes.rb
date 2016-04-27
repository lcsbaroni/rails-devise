Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  namespace :admin do
    root 'users#index'
    # resources :articles, :comments
    resources :users
  end
end
