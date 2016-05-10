Rails.application.routes.draw do
  namespace :admin do
    devise_for :admins
    resources :products
    resources :orders
    root "products#index"
  end

  devise_for :users

  resources :products, only: [:index, :show]
  resources :cart_items, only: [:create, :destroy]
  resources :orders, only: [:create]
  get 'cart' => 'carts#show', as: :cart

  root 'products#index'
end
