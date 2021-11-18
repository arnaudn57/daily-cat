class Product < ApplicationRecord
  include PgSearch::Model
  belongs_to :cat
  has_one_attached :image
  AUTHORIZED_CATEGORIES = ["Hygiène 🧼", "Miam 🤤", "Jouet 🪀", "Maison 🛋"]
  validates :category, inclusion: { in: AUTHORIZED_CATEGORIES }

  # pg_search_scope :search_by_category,
  #   against: :category

  pg_search_scope :search_global,
    against: [:title, :category],
    associated_against: {
      cat: :address
    },
    using: {
        tsearch: { prefix: true }
      }
  # pg_search_scope :search_by_addrezss,
  # against: :address,
  # using: {
  #     tsearch: { prefix: true }
  #   }
end
