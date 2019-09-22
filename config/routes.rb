Rails.application.routes.draw do
  get 'songs/index', to: "songs#index"

  get 'songs/new'

  get 'songs/show'

  get 'songs/edit'

  get 'genres/index'

  get 'genres/new'

  get 'genres/show'

  get 'genres/edit'

  get 'artists', to: "artists#index", as: "artists"

  get 'artists/new', to: "artists#new", as: "new_artist"

  post "artists", to: "artists#create"

  get 'artists/:id', to: "artists#show", as: "artist"

  get 'artists/:id/edit', to: "artists#edit"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
