Rails.application.routes.draw do
  root to: 'items#index'
  resources :items
  resources :stores
  resources :prices
end
