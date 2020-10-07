class Album < ApplicationRecord
  has_many :reviews
  has_one :artist

end
