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

ActiveRecord::Schema.define(version: 20180919180657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string  "line1",     null: false
    t.string  "line2"
    t.string  "city",      null: false
    t.string  "state",     null: false
    t.string  "zip",       null: false
    t.string  "kind",      null: false
    t.integer "member_id"
    t.index ["member_id"], name: "index_addresses_on_member_id", using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "kind",                      null: false
    t.string  "point",                     null: false
    t.string  "name",                      null: false
    t.boolean "preferred", default: false, null: false
    t.integer "member_id"
    t.index ["member_id"], name: "index_contacts_on_member_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.string  "first_name",        null: false
    t.string  "last_name",         null: false
    t.string  "mid_name"
    t.string  "aka"
    t.string  "sex"
    t.integer "father_id"
    t.integer "mother_id"
    t.integer "current_spouse_id"
    t.date    "birth_date"
    t.date    "death_date"
  end

end
