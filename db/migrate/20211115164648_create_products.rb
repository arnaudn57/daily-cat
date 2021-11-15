class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :category
      t.string :image
      t.references :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
