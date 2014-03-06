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

ActiveRecord::Schema.define(version: 20140306100433) do

  create_table "budgets", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total"
    t.decimal  "retirement"
    t.decimal  "savings"
    t.decimal  "loans"
    t.decimal  "rent"
    t.decimal  "utilities"
    t.decimal  "cable"
    t.decimal  "phone"
    t.decimal  "cleaning"
    t.decimal  "groceries"
    t.decimal  "dining"
    t.decimal  "entertainment"
    t.decimal  "transportation"
    t.decimal  "clothes"
    t.decimal  "misc"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "amount"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "vend_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "income"
    t.integer  "net_worth"
    t.boolean  "have_goals"
    t.boolean  "have_budget"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
    t.string   "pwd"
  end

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
