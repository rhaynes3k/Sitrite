# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_21_031951) do

  create_table "devises", force: :cascade do |t|
    t.string "User"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guardians", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "num_kids"
    t.string "st_addr_1"
    t.string "st_addr_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ph_num"
    t.string "reviews"
  end

  create_table "jobs", force: :cascade do |t|
    t.datetime "date"
    t.integer "num_of_kids"
    t.string "st_addr"
    t.string "sitter"
    t.string "duration"
    t.string "guardian"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sitters", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "zip"
    t.string "ph_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "age"
    t.string "reviews"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
