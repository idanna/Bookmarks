class UserBookmarksController < ApplicationController
	def index
		@bookmark = UserBookmark.new
		@bookmarks = current_user.user_bookmarks.all
	end
	
  def create
    @bookmark = current_user.user_bookmarks.new(params[:user_bookmark])
    if @bookmark.save
      redirect_to root_path, notice: 'Bookmark was successfully created.'
    else # actualy no reason for a link to fails, cause no validations
      redirect_to root_path, notice: 'You have an error.'
    end
  end
	
	def destroy
		@bookmark = current_user.user_bookmarks.find(params[:id])
		@bookmark.delete		
		redirect_to user_bookmarks_path, :notice => 'Bookmark was succesfully deleted !' 
	end
end
