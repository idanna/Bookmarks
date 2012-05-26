class BookmarksController < ApplicationController
  def index
  	@bookmark = UserBookmark.new
  end
end
