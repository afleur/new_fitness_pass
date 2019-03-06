Rails.application.routes.draw do

  post '/orders/:value', to: 'orders#create', as: :orders
  get '/orders', to: 'orders#index', as: :allorders
  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:show]
  resources :activities, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show]
  resources :orders, only: [:show, :new,] do
    resources :payments, only: [:new, :create]
  end
  get '/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: :confirmation
  get '/validation', to: 'bookings#validation', as: :validation
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
