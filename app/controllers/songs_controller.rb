class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = set_song
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end

    def edit
        @song = set_song
    end

    def update
        @song = set_song
        @song.update(song_params)
        redirect_to song_path(@song)
    end


    def destroy
        Song.destroy(params[:id])
        redirect_to songs_path
    end

    private
    def set_song
        @song = Song.find(params[:id])
    end

    def song_params(*args)
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
