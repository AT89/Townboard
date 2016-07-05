class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  def show
    @board = Board.find(params[:id])
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
    @comments = Comment.all
  end
  def new
    @post = Post.new
  end
  def create
    @board = Board.find(params[:id])
    @post = Post.create(post_params)
    @post.save
    redirect_to board_post_path(@board, @post)
  end

  def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to @posts
  end

  private
  def post_params
    params.require(:post).permit(:title, :author, :description, :value, :image)
  end

end
