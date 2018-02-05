Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  get 'pages/index'
  get 'profile', to: 'pages#show'
  get 'login', to: 'sessions#new'
  get  'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'

root 'pages#index'
resources :users
end
