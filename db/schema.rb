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

ActiveRecord::Schema.define(version: 20150316184013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blabs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blabs", ["user_id"], name: "index_blabs_on_user_id", using: :btree

  create_table "oauths", force: :cascade do |t|
    t.string "token",  null: false
    t.string "secret", null: false
  end

  add_index "oauths", ["token"], name: "index_oauths_on_token", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "uid",        null: false
    t.string   "handle",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

end
