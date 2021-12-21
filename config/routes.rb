Rails.application.routes.draw do
  
  resources :playlist_songs
  resources :playlists
  resources :reviews
  resources :songs
  resources :users

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'users#show'
  get '/genres', to: 'songs#getGenres'
  get '/artists', to: 'songs#getArtists'
  # get '/songs/artist', to: 'songs#show1'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
