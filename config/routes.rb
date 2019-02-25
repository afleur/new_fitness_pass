Rails.application.routes.draw do
  get 'sessions/index'
  get 'sessions/show'
  get 'sessions/create'
  get 'sessions/new'
  get 'sessions/destroy'
  get 'sessions/update'
  get 'sessions/edit'
  devise_for :users
  root to: 'pages#home'
  resources :sessions, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
