Rails.application.routes.draw do
  root 'products#index'
  resources :products
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  
end
