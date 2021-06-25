Rails.application.routes.draw do
  root to: 'home#index'

  resources :posts
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  resources :categories
end
