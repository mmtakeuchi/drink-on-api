Rails.application.routes.draw do

  
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  resources :users, only: [:create, :show, :index] 
  
  resources :cocktails do
    resources :comments, only: [:create, :index, :update, :destroy]
    resources :likes
  end

end
