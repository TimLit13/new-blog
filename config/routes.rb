Rails.application.routes.draw do
  resources :posts
  resources :pictures, only: [:create, :destroy]
end
