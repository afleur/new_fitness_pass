Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/new'
  get 'bookings/update'
  get 'bookings/edit'
  get 'bookings/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :sessions, only: [:index, :show] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
