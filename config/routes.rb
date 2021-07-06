Rails.application.routes.draw do

  ###### SONGS ######

  #CREATE

  get '/songs/new', to: "songs#new", as: 'new_song'
  post '/songs', to: "songs#create", as: 'create_song'
  
  #READ/SHOW

  get '/songs', to: "songs#index", as: 'songs'
  get '/songs/:id', to: "songs#show", as: 'song'

  #UPDATE

  get '/songs/:id/edit', to: "songs#edit", as: 'edit_song'
  patch '/songs/:id', to: "songs#update", as: 'update_song'

  ###### ARTIST ########

  #CREATE

  get '/artists/new', to: "artists#new", as: 'new_artist'
  post '/artists', to: "artists#create", as: 'create_artist'

  #READ

  get '/artists', to: "artists#index", as: 'artists'
  get '/artists/:id', to: "artists#show", as: 'artist'

  #UPDATE

  get '/artists/:id/edit', to: "artists#edit", as: 'edit_artist'
  patch '/artists/:id', to: "artists#update", as:'update_artist'

  ######## GENRE ########

  get '/genres/new', to: "genres#new", as: 'new_genre'
  post '/genres', to: "genres#create", as: 'create_genre'

  #READ

  get '/genres', to: "genres#index", as: 'genres'
  get '/genres/:id', to: "genres#show", as: 'genre'

  #UPDATE

  get '/genres/:id/edit', to: "genres#edit", as: 'edit_genre'
  patch '/genres/:id', to: "genres#update", as: 'update_genre'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
