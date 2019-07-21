Rails.application.routes.draw do
  get 'sign_in', to: 'users#new', as: 'users'
  post 'sign_in', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'show/:id', to:  'users#show', as: 'show'
end
