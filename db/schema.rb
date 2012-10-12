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

ActiveRecord::Schema.define(:version => 20121006074912) do

  create_table "employees", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "status"
    t.integer  "transaction_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "location_id"
  end

  add_index "employees", ["location_id"], :name => "index_employees_on_location_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.integer  "max_capacity"
    t.string   "location_type"
    t.integer  "location_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "user_name"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "barcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stocks", :force => true do |t|
    t.integer  "location_id"
    t.integer  "product_id"
    t.integer  "benchmark"
    t.integer  "standard_quantity"
    t.integer  "quantity",          :default => 0
    t.decimal  "price"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "stocks", ["location_id"], :name => "index_stocks_on_location_id"
  add_index "stocks", ["product_id"], :name => "index_stocks_on_product_id"

  create_table "transactions", :force => true do |t|
    t.integer  "loyalty_points_to_add"
    t.string   "payment_type"
    t.string   "product_list"
    t.decimal  "total_price"
    t.integer  "location_id"
    t.integer  "member_id"
    t.integer  "employee_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "transactions", ["employee_id"], :name => "index_transactions_on_employee_id"
  add_index "transactions", ["location_id"], :name => "index_transactions_on_location_id"
  add_index "transactions", ["member_id"], :name => "index_transactions_on_member_id"

end
