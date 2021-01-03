Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sessions#home'


  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :users
  resources :routines
  resources :logs

  resources :products, only: [:index, :show] do 
    resources :reviews, only: [:new, :create, :index, :destroy]
  end
end
