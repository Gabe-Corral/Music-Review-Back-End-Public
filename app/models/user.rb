class User < ApplicationRecord
  has_many :reviews
  has_many :comments
  has_many :followings
  has_many :followers, through: :followings
  has_secure_password

  validates_uniqueness_of :username
end
