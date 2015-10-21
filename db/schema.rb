# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151020160147) do

  create_table "baskets", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "paid",       default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "baskets", ["user_id"], name: "index_baskets_on_user_id"

  create_table "classes", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "name",                   null: false
    t.string   "item",                   null: false
    t.string   "location",               null: false
    t.string   "material",               null: false
    t.integer  "level",      default: 1, null: false
    t.integer  "price",      default: 0, null: false
    t.string   "bonus"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "basket_id"
    t.integer  "equipment_id"
    t.integer  "quantity",     default: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "orders", ["basket_id"], name: "index_orders_on_basket_id"
  add_index "orders", ["equipment_id"], name: "index_orders_on_equipment_id"

  create_table "users", force: :cascade do |t|
    t.string   "nickname",               null: false
    t.integer  "level",      default: 1
    t.integer  "loot",       default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
