class CommentsController < ApplicationController

  def show
    @comments = Comment.all
  end
  def new
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end
  def show
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

end
