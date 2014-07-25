class BoardsController < ApplicationController
  
  def personal
    if !signed_in?
      return redirect_to root_path
    end
    @user = User.find(current_user)
    @boards = Board.where('name != ? AND user_id == ?', "NULL", @user.id)
    @posts = Post.where('title != ? AND user_id == ?', "NULL", @user.id)
  end
  
  def show
    @board = Board.find(params[:id])
    @boardname = @board.name
    @boarddescription = @board.description
    @posts = @board.posts.where('title != ? AND content != ?', "NULL", "NULL")
  end
  
  def new
    @user = User.find(current_user.id)
    @board = @user.boards.new
  end
  
  def create
    @user = User.find(current_user.id)
    @board = @user.boards.new
    @board[:name] = params[:boardform][:name]
    @board[:description] = params[:boardform][:description]
    if @board.save
      return redirect_to board_path(@board.name)
    else
      return redirect_to new_board_path
    end
  end
  
  def discover
    @boards = Board.where('name != ?', "NULL")
  end
  
end
