Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  resources :products, only: [:show]
  resources :shopping_cart, only: [:create, :destroy, :show]

  namespace :api do
    resources :shopping_cart, only: [:create, :destroy, :show]
    resources :products
  end
end
