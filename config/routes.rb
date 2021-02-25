Rails.application.routes.draw do
  resources :comments
  resources :likes
  resources :users
  resources :cocktails

  post '/login', to: 'sessions#login'
  get '/auto_login', to: 'sessions#auto_login'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
