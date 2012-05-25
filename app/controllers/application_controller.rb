class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #overriding devise default redirect
  def after_sign_in_path_for(resource)
		user_bookmarks_path
	end
end
