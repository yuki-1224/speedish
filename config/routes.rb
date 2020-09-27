Rails.application.routes.draw do
  root 'pages#index'
  get 'users/new'
  
  resources :users
end
