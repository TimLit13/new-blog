Rails.application.routes.draw do
  resources :posts
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  resources :categories
end
