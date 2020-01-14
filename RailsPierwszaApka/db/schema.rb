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

ActiveRecord::Schema.define(version: 2020_01_14_092503) do

  create_table "comments", force: :cascade do |t|
    t.string "body"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description"
    t.date "due_date"
    t.integer "position"
    t.boolean "done_status"
  end

  create_table "to_do_lists", force: :cascade do |t|
    t.string "name"
    t.string "project_id"
  end

end