class WelcomeController < ApplicationController
  def index
  	if current_user
  		redirect_to bookmarks_path
		end
  end
end
