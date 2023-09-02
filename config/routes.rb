Rails.application.routes.draw do
  resources :customers, only:[:index, :update, :destroy]
  post "/signup", to: "customers#create"
  get "/me", to:"customers#show"
  post "/login", to:"sessions#create"
delete "logout", to:"sessions#destroy"
  # route to test your configuration
  # get '/hello', to: 'application#hello_world'
end