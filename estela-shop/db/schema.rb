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

ActiveRecord::Schema[7.0].define(version: 2022_07_19_053057) do
  create_table "fees", force: :cascade do |t|
    t.datetime "date_init"
    t.datetime "date_fin"
    t.decimal "amount"
    t.integer "percentage"
    t.integer "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_fees_on_order_id"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.string "email_string"
    t.string "cif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "amount"
    t.integer "merchant_id", null: false
    t.integer "shopper_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchant_id"], name: "index_orders_on_merchant_id"
    t.index ["shopper_id"], name: "index_orders_on_shopper_id"
  end

  create_table "report_fees", force: :cascade do |t|
    t.datetime "date_init"
    t.datetime "date_fin"
    t.decimal "amount"
    t.integer "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoppers", force: :cascade do |t|
    t.string "name"
    t.string "email_string"
    t.string "nif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fees", "orders"
  add_foreign_key "orders", "merchants"
  add_foreign_key "orders", "shoppers"
end
