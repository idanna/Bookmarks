class User < ActiveRecord::Base
	has_many :user_bookmarks

  devise :database_authenticatable, :registerable, :rememberable
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
