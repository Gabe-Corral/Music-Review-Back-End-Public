class AlbumController < ApplicationController

  def index
    albums = Album.all
    render json: albums
  end
  
end
