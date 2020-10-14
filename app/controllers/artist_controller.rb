class ArtistController < ApplicationController

  def index
    artists = Artist.all
    render json: artists
  end

  def getAlbums
    artist = Artist.find_by(id: params[:id])
    reviews = artist.albums.map do |i|
      i.reviews
    end
    render json: reviews
  end

end
