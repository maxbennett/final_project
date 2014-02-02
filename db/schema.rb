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

ActiveRecord::Schema.define(version: 20140201201335) do

  create_table "routine_requirements", force: true do |t|
    t.string   "input"
    t.string   "req_type"
    t.integer  "routine_todo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routine_todos", force: true do |t|
    t.date     "due_date"
    t.boolean  "completed"
    t.datetime "completed_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "routine_id"
  end

  create_table "routines", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "text_requirements"
    t.integer  "link_requirements"
    t.integer  "min_words"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.date     "due_date"
    t.boolean  "completed"
    t.date     "completed_time"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
