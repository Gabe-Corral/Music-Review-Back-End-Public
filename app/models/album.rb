class Album < ApplicationRecord
  has_many :reviews
  belongs_to :artist

  validates_uniqueness_of :title
end
