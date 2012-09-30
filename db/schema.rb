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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120930005246) do

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "barcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "store_product_infos", :force => true do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.float    "price"
    t.integer  "quantity",   :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "store_product_infos", ["product_id"], :name => "index_store_product_infos_on_product_id"
  add_index "store_product_infos", ["store_id"], :name => "index_store_product_infos_on_store_id"

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.integer  "max_capacity"
    t.integer  "current_capacity", :default => 0
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "password_digest"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "manager",         :default => false
    t.integer  "store_id"
  end

end
