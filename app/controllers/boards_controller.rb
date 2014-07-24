class BoardsController < ApplicationController
  
  def personal
    if !signed_in?
      return redirect_to root_path
    end
    @user = User.find(current_user)
  end
  
  def show
    @board = Board.find(params[:id])
    @boardname = @board.name
    @boarddescription = @board.description
  end
end
