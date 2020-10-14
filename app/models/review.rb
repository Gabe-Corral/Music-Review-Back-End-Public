class Review < ApplicationRecord
  belongs_to :album
  has_one :user
  has_many :comments
end
