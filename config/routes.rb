Rails.application.routes.draw do
  get "/genres", to: "genres#index", as: "genres"
  get "/genres/new", to: "genres#new", as: "new_genre"
  get "/genres/:id", to: "genres#show", as: "genre"
  post "/genres", to: "genres#create"
  get "/genres/:id/edit", to: "genres#edit", as: "edit_genre"
  patch "/genres/:id", to: "genres#update"
  delete "/genres/:id", to: "genres#destroy"

  get "/artists", to: "artists#index", as: "artists"
  get "/artists/new", to: "artists#new", as: "new_artist"
  get "/artists/:id", to: "artists#show", as: "artist"
  post "/artists", to: "artists#create"
  get "/artists/:id/edit", to: "artists#edit", as: "edit_artist"
  patch "/artists/:id", to: "artists#update"
  delete "/artists/:id", to: "artists#destroy"
  
  get "/songs", to: "songs#index", as: "songs"
  get "/songs/new", to: "songs#new", as: "new_song"
  get "/songs/:id", to: "songs#show", as: "song"
  post "/songs", to: "songs#create"
  get "/songs/:id/edit", to: "songs#edit", as: "edit_song"
  patch "/songs/:id", to: "songs#update"
  delete "/songs/:id", to: "songs#destroy"
  

  
end
