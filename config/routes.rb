Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup' => 'sessions#new'
  post '/signup' => 'sessions#create'


  resources :users
  resources :product
  resources :product_reviews
end
