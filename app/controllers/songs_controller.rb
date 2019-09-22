class SongsController < ApplicationController
  def index
  end

  def new
    
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
  end
end
