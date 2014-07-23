class BoardsController < ApplicationController
  
  def personal
    @user = User.find(current_user)
  end
end
