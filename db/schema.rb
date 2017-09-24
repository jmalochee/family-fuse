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

ActiveRecord::Schema.define(version: 20170924213446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emails", force: :cascade do |t|
    t.string  "email",     null: false
    t.integer "member_id"
    t.index ["member_id"], name: "index_emails_on_member_id", using: :btree
  end

  create_table "families", force: :cascade do |t|
    t.string "surname",     null: false
    t.string "matriarch",   null: false
    t.string "patriarch",   null: false
    t.string "state",       null: false
    t.string "city"
    t.date   "anniversary"
  end

  create_table "families_members", id: false, force: :cascade do |t|
    t.integer "family_id", null: false
    t.integer "member_id", null: false
    t.index ["family_id"], name: "index_families_members_on_family_id", using: :btree
    t.index ["member_id"], name: "index_families_members_on_member_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name",  null: false
    t.string "mid_name"
    t.string "aka"
    t.date   "birthdate"
  end

end
