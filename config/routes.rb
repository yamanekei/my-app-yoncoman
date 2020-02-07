Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to:"tops#index"
  resources :tops, only: [:index]
  resources :users, only: [:edit, :update]
  resources :tweets do
    resources :comments, only: [:index, :create]
  end

end
