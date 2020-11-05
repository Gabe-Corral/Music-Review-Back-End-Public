class User < ApplicationRecord
  has_many :reviews
  has_many :comments
  has_many :followings
  has_many :followers, through: :followings

  validates_uniqueness_of :username
end
