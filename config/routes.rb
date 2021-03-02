Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome.index', to: 'sessions#welcome'

  resources :guardians
  resources :users
  resources :sitters
  resources :jobs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#omniauth'
end
