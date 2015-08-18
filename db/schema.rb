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

ActiveRecord::Schema.define(version: 20150818031805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bike_loans", force: :cascade do |t|
    t.integer  "bike_id"
    t.integer  "loan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bike_loans", ["bike_id"], name: "index_bike_loans_on_bike_id", using: :btree
  add_index "bike_loans", ["loan_id"], name: "index_bike_loans_on_loan_id", using: :btree

  create_table "bikes", force: :cascade do |t|
    t.string   "photo"
    t.string   "name"
    t.string   "description"
    t.string   "size"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "loans", force: :cascade do |t|
    t.date     "date_due"
    t.string   "contribution_status"
    t.string   "contribution_notes"
    t.string   "loan_status"
    t.string   "helmet"
    t.string   "lock"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "search_string"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
