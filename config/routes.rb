Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :experiences, only: :index
  resources :users do
    resources :experiences, exept: :index do
      resources :bookings
    end
  end
  resources :bookings, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
