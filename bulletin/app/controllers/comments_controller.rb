class CommentsController < ApplicationController

  def show
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

end
