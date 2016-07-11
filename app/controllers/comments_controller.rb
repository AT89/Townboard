class CommentsController < ApplicationController
  # NHO: How could you make this controller a little DRYer?
  # Could start by removing the duplication of finding a board and post for each comment action.
  # Thing to google -> "before_action"
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

  def edit
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to board_post_comment_path # NHO: Make sure you pass the appropriate objects to this Path!
  end

  def destroy
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to board_post_path # NHO: Make sure you pass the appropriate objects to this Path!
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :description, :image)
  end

end
