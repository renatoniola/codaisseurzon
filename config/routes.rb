Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  resources :products, only: [:show]

  resources :carts, only: [:create, :destroy, :show] do
    resources :products, only: [:create, :destroy]
  end

  resources :users, only: [] do
    resources :profiles, except: [:destroy]
  end
end
