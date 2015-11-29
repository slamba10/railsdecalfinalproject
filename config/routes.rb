Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  
  get '/tasks/new', as:'new', to:'task#new'
  post '/tasks/new', as:'create', to:'task#create'
  
end
