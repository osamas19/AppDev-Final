# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_08_141204) do

  create_table "cards", force: :cascade do |t|
    t.text "card_name"
    t.string "providor"
    t.string "network"
    t.float "cashback"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cat1"
    t.integer "cat2"
    t.integer "cat3"
    t.integer "cat4"
    t.integer "cat5"
    t.integer "cat6"
    t.integer "cat7"
    t.integer "cat8"
    t.integer "cat9"
    t.integer "cat10"
    t.integer "cat1_cashback"
    t.integer "cat2_cashback"
    t.integer "cat3_cashback"
    t.integer "cat4_cashback"
    t.integer "cat5_cashback"
    t.integer "cat6_cashback"
    t.integer "cat7_cashback"
    t.integer "cat8_cashback"
    t.integer "cat9_cashback"
    t.integer "cat10_cashback"
    t.integer "cat1_cash_limit"
    t.integer "cat2_cash_limit"
    t.integer "cat3_cash_limit"
    t.integer "cat4_cash_limit"
    t.integer "cat5_cash_limit"
    t.integer "cat6_cash_limit"
    t.integer "cat7_cash_limit"
    t.integer "cat8_cash_limit"
    t.integer "cat9_cash_limit"
    t.integer "cat10_cash_limit"
    t.integer "cash_limit"
    t.integer "no_of_cats"
    t.integer "annual_fee"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "merchant_name"
    t.integer "amount"
    t.string "cashback"
    t.integer "user_id"
    t.integer "user_card_id"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_cards", force: :cascade do |t|
    t.integer "card_4_digits"
    t.date "validity"
    t.text "name_as_shown"
    t.integer "user_id"
    t.integer "card_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password_digest"
    t.text "phone"
    t.integer "savings"
    t.integer "spending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.text "picture"
  end

end
