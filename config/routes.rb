Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'

  resources :posts, only: [:show, :index]
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  resources :categories, only: [:show]

  namespace :admin do
    resources :categories, except: [:show]
    resources :posts, except: [:show, :index]
  end


end
