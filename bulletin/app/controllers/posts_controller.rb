class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  def show
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:id])
  end
  def new
    @board = Board.find(params[:board_id])
    @post = @board.posts.new
  end
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.create(post_params)
    if
      @post.save
      redirect_to board_path(@board)
    else
      render 'new'
    end
  end

  def edit
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:id])
  end

  def update
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to board_path(@board)
  end

  def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to board_path(@post.board)
  end

  private
  def post_params
    params.require(:post).permit(:title, :author, :description, :value, :image)
  end

end
