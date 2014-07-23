class BoardsController < ApplicationController
  
  def personal
    if !signed_in?
      return redirect_to root_path
    end
    @user = User.find(current_user)
  end
end
