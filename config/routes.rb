Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  
  get 'tasks/new', as:'new', to:'tasks#new'
  post 'tasks/new', as:'create', to:'tasks#create'
  
end
