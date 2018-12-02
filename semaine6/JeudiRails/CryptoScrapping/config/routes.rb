Rails.application.routes.draw do
  root 'home#welcome'
  get '/find', to: 'home#index'
  post '/find', to: 'home#find'
  get '/update', to: 'home#update'
end
