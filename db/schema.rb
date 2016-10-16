# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161015150329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.string   "image_url"
    t.string   "cuisine"
    t.integer  "count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "section_id"
    t.index ["section_id"], name: "index_foods_on_section_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "food_id"
    t.integer  "num_of_food"
    t.datetime "delivery"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["food_id"], name: "index_orders_on_food_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.integer  "total_bill"
    t.string   "order_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "foods", "sections"
  add_foreign_key "orders", "foods"
  add_foreign_key "orders", "users"
end
