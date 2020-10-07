class Review < ApplicationRecord
  has_one :album
  has_one :user
end
