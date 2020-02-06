Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tops, only: [:index]
  resources :tweets, only: [:index]
end
