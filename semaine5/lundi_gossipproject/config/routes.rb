Rails.application.routes.draw do
  get 'tapopo/azel'
  root 'static#index'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  get '/tableau', to: 'tablo#tablo'
  get '/:id', to: 'gossip#one_gossip'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
