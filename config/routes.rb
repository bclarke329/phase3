Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup' => 'user#new'
  post '/signup' => 'user#create'


  resources :user
  resources :product
  resources :product_reviews
end
