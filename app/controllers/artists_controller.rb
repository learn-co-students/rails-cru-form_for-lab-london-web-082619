class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = set_Artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params(:name, :bio))

        redirect_to artist_path(@artist)
    end

    def edit
        @artist = set_Artist
    end

    def update
        @artist = set_Artist
        @artist.update(artist_params(:name, :bio))

        redirect_to artist_path(@artist)
    end

    def destroy
        Artist.destroy(params[:id])

        redirect_to artists_path
    end

    private
    def set_Artist
        @artist = Artist.find(params[:id])
    end

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
