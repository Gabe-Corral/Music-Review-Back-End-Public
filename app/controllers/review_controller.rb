class ReviewController < ApplicationController

  def create
    artist = Artist.find_by(name: params[:artist])
    if (!artist)
      artist = Artist.create(name: params[:artist], genre: params[:genre])
    end
    album =  Album.create(title: params[:title], img: params[:img],
    artist_id: artist.id)
    songs = apiRequest(album.title)
    Review.create(
      user_id: params[:user_id], rating: params[:rating],
      artist: params[:artist], title: params[:title],
      img: params[:img], review: params[:review],
      album_id: album.id, release_date: params[:release_date],
    songs: songs)
  end

  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    review = Review.find_by(id: params[:id])
    render json: review
  end

  def update
    review = Review.find_by(id: params[:id])
    review.update_attributes(title: params[:title],
    rating: params[:rating], img: params[:img],
    release_date: params[:release_date], review: params[:review])
  end

  def destroy
    review = Review.find_by(id: params[:id])
    review.destroy
  end

  def apiRequest(album)
    songs = []
    RSpotify.authenticate("APi_client_id",
    "APi_client_secret")
    albums = RSpotify::Album.search(album)
    am = albums.first.tracks
    am.each do |a|
      songs.push(a.name)
    end
    return songs
  end

  def getComments
    review = Review.find_by(id: params[:id])
    render json: review.comments
  end

  def getUserInfo
    review = Review.find_by(id: params[:id])
    render json: review.user
  end

end
