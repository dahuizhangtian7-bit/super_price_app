Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, only: [:index, :new, :create]
  resources :stores, only: [:new, :create]
  resources :prices, only: [:new, :create]
end
