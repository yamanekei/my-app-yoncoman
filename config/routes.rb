Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :tops, only: [:index]
  # resources :users, only: [:edit, :update]
  resources :tweets, only: [:index, :new, :create, :edit, :update] do
    resources :comments, only: :create
  end

end
