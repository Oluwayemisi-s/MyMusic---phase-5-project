Rails.application.routes.draw do
  
  resources :playlists
  resources :reviews
  resources :songs
  resources :users

  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/me', to: 'users#show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
