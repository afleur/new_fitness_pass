Rails.application.routes.draw do

  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  get 'orders/edit'
  get 'orders/update'
  get 'orders/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:show]
  resources :activities, only: [:show, :index] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
  get '/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: :confirmation
  get '/users/:user_id/bookings', to: 'bookings#index', as: :mybookings
  get '/users/:user_id/bookings/:booking_id', to: 'bookings#show', as: :bookingshow
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
