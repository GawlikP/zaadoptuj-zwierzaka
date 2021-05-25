Rails.application.routes.draw do
  resources :adoption_offerts
  resources :profiles
  resources :questions
  resources :dogs


  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'hello#index'
  get '/main', to: 'hello#main'
  get '/myprofile', to:'hello#profile'
  get '/adddog', to: 'hello#adddog'
  get '/myoffers', to: 'hello#myoffers'
  get '/breeders', to: 'hello#breeders'
  put '/addanswer', to: 'hello#addanswer'
  post '/addadoption', to: 'hello#addadoption'



  #get '/signup', to: 'users#new'
  #post '/signup', to: 'user#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
end
