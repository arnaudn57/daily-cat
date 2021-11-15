class Transaction < ApplicationRecord
  belongs_to :cat
  belongs_to :product
end
