# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091222093219) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "task_id"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "qty",        :default => 1, :null => false
    t.string   "type_item"
    t.text     "desc"
    t.float    "price"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.decimal  "summ"
    t.decimal  "rate"
    t.integer  "user_id"
    t.datetime "deleted_at"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.datetime "deleted_at"
    t.string   "title"
    t.text     "desc"
    t.integer  "user_id"
    t.integer  "project_id"
    t.decimal  "rate"
    t.decimal  "summ"
    t.boolean  "status"
    t.boolean  "billable"
    t.integer  "timer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
