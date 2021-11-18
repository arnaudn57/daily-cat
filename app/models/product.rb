class Product < ApplicationRecord
  belongs_to :cat

  # has_one :transaction
  has_many_attached :photos
end
