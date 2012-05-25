class WelcomeController < ApplicationController
  def index
  	if current_user
  		redirect_to user_bookmarks_path
		end
  end
end
