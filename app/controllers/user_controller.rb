class UserController < ApplicationController

  def index
    users = User.all
    render json: users, only: [:id, :username, password:], include: [:Reviews]
  end

end
