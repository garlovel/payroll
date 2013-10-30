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

ActiveRecord::Schema.define(version: 20131029022345) do

  create_table "employees", force: true do |t|
    t.string   "employee_identifier"
    t.string   "full_name"
    t.string   "status"
    t.integer  "exemptions"
    t.decimal  "additional",          precision: 15, scale: 0
    t.integer  "schedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paychecks", force: true do |t|
    t.integer  "employee_id"
    t.integer  "schedule_id"
    t.integer  "units"
    t.date     "date"
    t.decimal  "gross",       precision: 15, scale: 0
    t.decimal  "css",         precision: 15, scale: 0
    t.decimal  "cmc",         precision: 15, scale: 0
    t.decimal  "net",         precision: 15, scale: 0
    t.decimal  "fit",         precision: 15, scale: 0
    t.decimal  "ess",         precision: 15, scale: 0
    t.decimal  "emc",         precision: 15, scale: 0
    t.decimal  "rate",        precision: 15, scale: 0
    t.integer  "check_no"
    t.date     "issued"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: true do |t|
    t.string   "period"
    t.decimal  "bracket",    precision: 10, scale: 0
    t.decimal  "base",       precision: 10, scale: 0
    t.float    "rate"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "code"
    t.string   "description"
    t.string   "period"
    t.float    "factor"
    t.decimal  "rate",        precision: 15, scale: 0
    t.integer  "occur"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
