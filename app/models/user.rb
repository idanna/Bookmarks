class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable

  attr_accessible :email, :password, :password_confirmation, :remember_me
end
