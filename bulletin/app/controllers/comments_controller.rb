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
  def new
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if
      @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def destroy
  @comment = Post.find(params[:id])
  @comment.destroy
  redirect_to post_path(spost)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :description, :image)
  end

end
