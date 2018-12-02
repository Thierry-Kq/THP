Rails.application.routes.draw do
  root 'static#home'
  get '/contact', to: 'static#contact'
  
  get '/users/error', to: 'static#error'
  resources :users, only: [:new, :create, :index]
end
