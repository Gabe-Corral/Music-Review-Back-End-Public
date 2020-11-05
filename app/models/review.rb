class Review < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  validates_uniqueness_of :album_id
end
