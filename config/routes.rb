Rails.application.routes.draw do
  resources :orders, only: [:index, :new, :create, :destroy] do
    collection do
      get :complete
      get :confirm
    end
  end

  resources :reserves, only: [:new, :create] do
    collection do
      get :complete
    end
  end

  resources :restaurants

  root 'pages#index'
  get 'users/new'

  get 'sessions/new'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
