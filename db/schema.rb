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

ActiveRecord::Schema[7.1].define(version: 2024_01_04_045733) do
  create_table "allergies", force: :cascade do |t|
    t.string "slug"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "slug"
    t.string "label"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "country_code"
    t.string "label"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "label"
    t.string "slug"
    t.string "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "eye_catch_image"
    t.decimal "price"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "menu_items_allergies", id: false, force: :cascade do |t|
    t.integer "menu_item_id"
    t.integer "allergy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_menu_items_allergies_on_allergy_id"
    t.index ["menu_item_id", "allergy_id"], name: "index_menu_items_allergies_on_menu_item_id_and_allergy_id", unique: true
    t.index ["menu_item_id"], name: "index_menu_items_allergies_on_menu_item_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "slug"
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "eye_catch_image"
    t.string "cover_image"
    t.integer "min_order_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants_allergies", id: false, force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "allergy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_restaurants_allergies_on_allergy_id"
    t.index ["restaurant_id", "allergy_id"], name: "index_restaurants_allergies_on_restaurant_id_and_allergy_id", unique: true
    t.index ["restaurant_id"], name: "index_restaurants_allergies_on_restaurant_id"
  end

  create_table "restaurants_categories", id: false, force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_restaurants_categories_on_category_id"
    t.index ["restaurant_id", "category_id"], name: "index_restaurants_categories_on_restaurant_id_and_category_id", unique: true
    t.index ["restaurant_id"], name: "index_restaurants_categories_on_restaurant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "menu_items", "restaurants"
end
