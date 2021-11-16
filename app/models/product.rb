class Product < ApplicationRecord
  belongs_to :cat
  has_many :products
end
