class Album < ApplicationRecord
  has_many :reviews
  belongs_to :artist

end
