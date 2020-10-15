class CommentController < ApplicationController

  def create
    comment = Comment.create(user_id: params[:user_id], username: params[:username],
    review_id: params[:review_id], comment: params[:comment])
  end

  def index
    comments = Comment.all
    render json: comments
  end

  def userComments
    comment = Comment.find_by(id: params[:id])
    render json: comment.user
  end

end
