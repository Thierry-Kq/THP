Rails.application.routes.draw do
  get 'test/search'
  get 'test/index'
  get 'test/test'
  root 'movies#search'
  post '/search', to: 'movies#find'
  get '/search', to: 'movies#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
