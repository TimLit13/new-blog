Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  resources :categories
end
