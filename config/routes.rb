Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:show]
  resources :activities, only: [:show, :index] do
    resources :bookings, only: [:show, :index, :new, :create]
  end
  get '/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: :confirmation
  get '/users/:user_id/bookings', to: 'bookings#index', as: :mybookings
  get '/users/:user_id/bookings/:booking_id', to: 'bookings#show', as: :bookingshow
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
