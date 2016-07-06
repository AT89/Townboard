class CommentsController < ApplicationController

  def show
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
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
  def create
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      redirect_to [@board, @post]
    else
      render 'new'
    end
  end

  def destroy

  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to board_post_path
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :description, :image)
  end

end
