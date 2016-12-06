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

ActiveRecord::Schema.define(version: 20161206033705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commitments", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "favorited_id"
    t.string   "favorited_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "favorites", ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "org_tags", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "tag_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "email"
    t.string   "website"
    t.string   "facebook"
    t.string   "youtube"
    t.string   "image"
    t.string   "bridge"
    t.string   "contactname"
    t.string   "contactemail"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.float    "hour_commitment"
    t.text     "description"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "dorm"
    t.integer  "class_year"
    t.integer  "user_id"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "role"
    t.boolean  "active"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
