Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'dashboard#index'
  resources :experiences do
    resources :users
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
