class PostsController < ApplicationController
  
  def new
    @board = Board.find(params[:board_id])
    @post = @board.posts.new
  end
  
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.new
    @post[:title] = params[:postform][:title]
    @post[:content] = params[:postform][:content]
    @post[:user_id] = current_user.id
    if @post.save
      return redirect_to board_post_path(@board.name, @post.id)
    else
      return redirect_to new_board_post_path(@board.name)
    end
  end
  
  def show
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:id])
    @replies = Replies.where('post_id == ? AND content != ?', @post.id, "NULL")
  end
  
end
