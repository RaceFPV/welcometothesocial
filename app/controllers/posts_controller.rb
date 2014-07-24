class PostsController < ApplicationController
  
  def new
    @board = Board.find(params[:board_id])
    @post = @board.posts.new
  end
  
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.new
    
    if @post.save
      return redirect_to board_post_path(@board.name, @post.id)
    else
      return redirect_to new_board_post_path(@board.name)
    end
  end
  
  def show
    @board = Board.find(params[:board_id])
  end
  
end
