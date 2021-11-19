class Product < ApplicationRecord
  include PgSearch::Model
  belongs_to :cat
  has_one :reservation
  has_many_attached :photos
  AUTHORIZED_CATEGORIES = ["Hygiène 🧼", "Miam 🤤", "Jouet 🪀", "Maison 🛋"]
  validates :category, inclusion: { in: AUTHORIZED_CATEGORIES }

  pg_search_scope :search_global,
  against: [:title, :category],
  associated_against: {
    cat: :address
  },
  using: {
      tsearch: { prefix: true }
    }
end
