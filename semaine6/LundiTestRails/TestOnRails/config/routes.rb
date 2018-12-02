Rails.application.routes.draw do
  root 'statics#home'
  get    '/signup', to: 'users#new'
  get '/club', to: 'users#index'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#delete'

end
