Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:show]
  resources :activities, only: [:show, :index] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
  resources :orders, only: [:index, :show, :new, :create]
  get '/bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: :confirmation
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
