# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_16_102432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.integer "age"
    t.string "address"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_cats_on_email", unique: true
    t.index ["reset_password_token"], name: "index_cats_on_reset_password_token", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.string "subject"
    t.text "content"
    t.bigint "cat_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_id"], name: "index_messages_on_cat_id"
    t.index ["product_id"], name: "index_messages_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "price"
    t.string "category"
    t.string "image"
    t.bigint "cat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_id"], name: "index_products_on_cat_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "cat_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "validate", default: false
    t.index ["cat_id"], name: "index_transactions_on_cat_id"
    t.index ["product_id"], name: "index_transactions_on_product_id"
  end

  add_foreign_key "messages", "cats"
  add_foreign_key "messages", "products"
  add_foreign_key "products", "cats"
  add_foreign_key "transactions", "cats"
  add_foreign_key "transactions", "products"
end
