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

ActiveRecord::Schema.define(:version => 20140714085759) do

  create_table "Statuses", :force => true do |t|
    t.string "name"
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cars", :force => true do |t|
    t.string   "model"
    t.string   "vin"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "dealer_id"
    t.integer  "customer_id"
    t.integer  "brand_id"
  end

  add_index "cars", ["brand_id"], :name => "index_cars_on_brand_id"
  add_index "cars", ["customer_id"], :name => "index_cars_on_customer_id"
  add_index "cars", ["dealer_id"], :name => "index_cars_on_dealer_id"

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.string   "phone_code"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "manager_id"
    t.string   "phone_prefix"
    t.string   "comment"
    t.integer  "status_id",    :default => 1
  end

  add_index "customers", ["manager_id"], :name => "index_customers_on_employee_id"

  create_table "dealers", :force => true do |t|
    t.string   "title"
    t.string   "address"
    t.string   "phone"
    t.string   "site"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.boolean  "fired",              :default => false
    t.string   "encrypted_password"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "dealer_id"
  end

  add_index "managers", ["dealer_id"], :name => "index_employees_on_dealer_id"

end
