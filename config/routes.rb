Rails.application.routes.draw do
  resources :profiles
  resources :questions
  resources :dogs


  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'hello#index'
  get '/main', to: 'hello#main'
  get '/myprofile', to:'hello#profile'
  get '/adddog', to: 'hello#adddog'
  #get '/signup', to: 'users#new'
  #post '/signup', to: 'user#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
end
