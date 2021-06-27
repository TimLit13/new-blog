Rails.application.routes.draw do
  # scope "(:locale)", locale: /ru|en/ do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
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
end
