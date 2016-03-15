Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :cart_items, only: [:create, :destroy]
  get 'cart' => 'carts#show', as: :cart

  root 'products#index'
end
