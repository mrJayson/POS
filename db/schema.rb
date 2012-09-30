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


ActiveRecord::Schema.define(:version => 20120930140005) do

  create_table "order_to_warehouses", :force => true do |t|
    t.string   "order_status",              :default => "waiting"
    t.datetime "time_stamp"
    t.integer  "warehouse_id"
    t.integer  "store_id"
    t.integer  "warehouse_product_info_id"
    t.integer  "store_product_info_id"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "order_to_warehouses", ["store_id"], :name => "index_order_to_warehouses_on_store_id"
  add_index "order_to_warehouses", ["store_product_info_id"], :name => "index_order_to_warehouses_on_store_product_info_id"
  add_index "order_to_warehouses", ["warehouse_id"], :name => "index_order_to_warehouses_on_warehouse_id"
  add_index "order_to_warehouses", ["warehouse_product_info_id"], :name => "index_order_to_warehouses_on_warehouse_product_info_id"


  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "barcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shelf_product_infos", :force => true do |t|
    t.integer  "product_id"
    t.integer  "shelf_id"
    t.integer  "quantity",   :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "shelf_product_infos", ["product_id"], :name => "index_shelf_product_infos_on_product_id"

  create_table "shelves", :force => true do |t|
    t.integer  "aisle"
    t.integer  "max_capacity"
    t.integer  "current_capacity", :default => 0
    t.integer  "store_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "shelves", ["store_id"], :name => "index_shelves_on_store_id"

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

  create_table "warehouse_product_infos", :force => true do |t|
    t.integer  "quantity",     :default => 0
    t.integer  "product_id"
    t.integer  "warehouse_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "warehouse_product_infos", ["product_id"], :name => "index_warehouse_product_infos_on_product_id"
  add_index "warehouse_product_infos", ["warehouse_id"], :name => "index_warehouse_product_infos_on_warehouse_id"

  create_table "warehouses", :force => true do |t|
    t.integer  "max_capacity"
    t.integer  "current_capacity", :default => 0
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

end
