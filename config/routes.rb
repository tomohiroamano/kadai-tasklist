Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create] #remove :index and :show no use
  
  #resources :tasks
  resources :tasks, only: [:show, :create, :destroy, :edit, :update]
end