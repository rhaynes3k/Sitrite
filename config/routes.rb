Rails.application.routes.draw do
  #get '/bus_sit', to: 'sitters#busiest_sitter'
  get 'summary', to: 'jobs#summary'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome.index', to: 'sessions#welcome'
  get 'logout', to: 'sessions#logout'
  get 'authorized', to: 'sessions#page_requires_login'
  get "/users/sign_up", to: "users#new"
  post "/users/sign_up", to: "users#new"
  root 'sessions#welcome'
  resources :users do
    resources :sitters, only: [:show, :index, :edit]
    resources :jobs, only: [:show, :index, :new, :create]
    resources :guardians, only: [:show, :index, :new, :create]
  end
  resources :sitters
  resources :jobs
  resources :guardians
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#omniauth'
end
