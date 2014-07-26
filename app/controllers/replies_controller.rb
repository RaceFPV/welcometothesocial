class RepliesController < ApplicationController
  def new
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:id])
  end

  def create
    @reply = Replies.new
    @reply[:post_id] = params[:post_id]
    @reply[:user_id] = current_user.id
    @reply[:content] = params[:replyform][:content]
    if @reply.save
      return redirect_to board_post_path(params[:board_id], params[:post_id])
    else
      return redirect_to board_post_path(params[:board_id], params[:post_id])
    end
  end
  
  def show
  end
end
