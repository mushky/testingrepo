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

ActiveRecord::Schema.define(version: 20150929202448) do

  create_table "documents", force: :cascade do |t|
    t.string   "filename"
    t.string   "content_type"
    t.binary   "file_contents"
    t.date     "string"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "inspect_items", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.text     "description"
    t.string   "date"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.string   "date"
    t.text     "description"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "user"
    t.integer  "expiration"
    t.string   "key"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "receive_items", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.string   "date"
    t.text     "description"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requisitions", force: :cascade do |t|
    t.string   "requestor"
    t.string   "pr_number"
    t.integer  "pr_date"
    t.string   "company"
    t.string   "address"
    t.integer  "phone"
    t.string   "contact"
    t.text     "comments"
    t.boolean  "for_export"
    t.string   "to_where"
    t.text     "description_of_use"
    t.integer  "quantity"
    t.string   "uom"
    t.string   "part_number"
    t.text     "description"
    t.float    "unit_cost"
    t.float    "total"
    t.integer  "req_date"
    t.string   "acct_number"
    t.string   "usage"
    t.string   "approval"
    t.integer  "approval_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "ship_items", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.string   "date"
    t.text     "description"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
