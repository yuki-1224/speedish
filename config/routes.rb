Rails.application.routes.draw do
  resources :restaurants

  root 'pages#index'
  get 'users/new'

  get 'sessions/new'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
