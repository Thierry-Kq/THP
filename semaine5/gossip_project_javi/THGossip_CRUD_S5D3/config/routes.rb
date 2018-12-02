Rails.application.routes.draw do
  get 'registration/new', to: 'registration#new'
  get 'registration/view', to: 'registration#view'
  get 'users/login', to: 'users#login'
  post 'users/login', to: 'users#check'
  root 'static_pages#home'
  resources :users do
    resources :gossips do
      resources :comments
    end
  end
  #get '/', to: 'gossips#show'
end

