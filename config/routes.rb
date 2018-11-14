Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :bunkers, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :update]
  end

  get '/mybunkers', to: 'bunkers#my_bunkers'

  resources :bookings, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
