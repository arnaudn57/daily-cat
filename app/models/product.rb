class Product < ApplicationRecord
  belongs_to :cat

  # has_one :transaction

  has_one_attached :image
end
