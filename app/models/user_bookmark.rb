# project name is Bookmark so model name set to UserBookmark (avoid ambigius)
class UserBookmark < ActiveRecord::Base
	belongs_to :user
end
