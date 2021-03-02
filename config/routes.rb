Rails.application.routes.draw do

  
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  resources :users, only: [:create, :show, :index] 
  
  resources :cocktials, only: [:create, :index, :show] do
    resources :likes
    resources :comments, only: [:create, :index]
  end

end
