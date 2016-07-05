class CommentsController < ApplicationController

  def show
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end
  def show
    @board = Board.find(params[:id])
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
  end

end
