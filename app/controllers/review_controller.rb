class ReviewController < ApplicationController
  # require 'uri'
  # require 'net/http'
  # require 'openssl'
  # require 'json'

  def create
    artist = Artist.find_by(name: params[:artist])
    if (!artist)
      artist = Artist.create(name: params[:artist], genre: params[:genre])
    end
    album =  Album.create(title: params[:title], img: params[:img],
    artist_id: artist.id)
    Review.create(
      user_id: params[:user_id], rating: params[:rating],
      artist: params[:artist], title: params[:title],
      img: params[:img], review: params[:review],
      album_id: album.id, release_date: params[:release_date])
  end

  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    review = Review.find_by(id: params[:id])
    render json: review
  end

  # def apiRequest(artist)
  #   url = URI("https://genius.p.rapidapi.com/search?q=" + artist)
  #   http = Net::HTTP.new(url.host, url.port)
  #   http.use_ssl = true
  #   http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  #   request = Net::HTTP::Get.new(url)
  #   request["x-rapidapi-host"] = 'genius.p.rapidapi.com'
  #   request["x-rapidapi-key"] = '7aef27f912mshc92e987f52a69f2p12ecb6jsn611abd566136'
  #
  #   response = http.request(request)
  #   res = JSON.parse(response.read_body)
  #
  #   @name = res["response"]["hits"][0]["result"]["primary_artist"]["name"]
  #   @url = res["response"]["hits"][0]["result"]["primary_artist"]["url"]
  # end

  def getComments
    review = Review.find_by(id: params[:id])
    render json: review.comments
  end

end
