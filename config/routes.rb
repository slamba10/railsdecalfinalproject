Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users


  get 'tasks/new', as:'new', to:'tasks#new'
  post 'tasks/new', as:'create', to:'tasks#create'

  get 'teams', as:'teams', to:'teams#index'
  patch 'teams/new', as:'add_team', to: 'users#add'

  get "teams/new", as:'new_team', to: "teams#new"
  post "teams/new", as:'create_team', to: "teams#create"

end
