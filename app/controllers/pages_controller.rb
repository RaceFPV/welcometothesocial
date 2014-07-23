class PagesController < ApplicationController
  
  def index
    if signed_in?
      return redirect_to personal_path
    end
  end
  
end
