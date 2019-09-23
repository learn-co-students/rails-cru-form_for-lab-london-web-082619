Rails.application.routes.draw do
  get 'genres/index'

  get 'genres/show'

  get 'genres/create'

  get 'genres/update'

  get 'artists/index'

  get 'artists/show'

  get 'artists/create'

  get 'artists/update'

  get 'songs/index'

  get 'songs/show'

  get 'songs/create'

  get 'songs/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
