class UserController < ApplicationController

  def index
    users = User.all
    render json: users, only: [:id, :username, :password], include: [:reviews]
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
    end
  end

  def userReviews
    user = User.find_by(id: params[:id])
    if (user)
      render json: user.reviews
    end
  end

  def followUser
    user = User.find_by(id: params[:id])
    follower = User.find_by(id: params[:follower_id])
    user.followings.create(follower: follower)
  end

  private
  def user_params
    params.require(:User).permit(:username, :password)
  end

end
