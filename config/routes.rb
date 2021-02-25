Rails.application.routes.draw do
  resources :comments
  resources :likes
  resources :users
  resources :cocktails

  post '/login', to: 'sesssion#create'
  get '/current_user', to: 'sesssion#show'
  post '/sign_up', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
