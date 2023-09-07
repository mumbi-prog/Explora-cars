Rails.application.routes.draw do
  resources :locations, only: [:index, :show]
  resources :cars, only: [:index, :create, :show, :update, :destroy]
  resources :customers, only:[:index, :update, :destroy]
  post "/signup", to: "customers#create"
  get "/me", to:"customers#show"
  post "/login", to:"sessions#create"
  delete "logout", to:"sessions#destroy"
  resources :bookings
  get "/car_bookings/:id",to:"bookings#car_dates"
  get "/customer_bookings/:id",to:"bookings#customer_bookings"
  # route to test your configuration
  # get '/hello', to: 'application#hello_world'
  resources :reviews, only: [:index, :create]
end