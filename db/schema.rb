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

ActiveRecord::Schema.define(version: 20160622074840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "name"
    t.string   "mail"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "mail"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "selection_status_id"
    t.datetime "start_date"
    t.datetime "interview_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "job_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_types_jobs", force: :cascade do |t|
    t.integer  "job_type_id"
    t.integer  "job_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "job_types_users", force: :cascade do |t|
    t.integer  "job_type_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "shop_id"
    t.integer  "recommend_point"
    t.string   "title"
    t.integer  "prefecture_id"
    t.string   "city"
    t.string   "salary"
    t.text     "message"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "search_list_photo"
    t.string   "top_photo"
  end

  create_table "keeps", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "keeps", ["job_id"], name: "index_keeps_on_job_id", using: :btree
  add_index "keeps", ["user_id", "job_id"], name: "index_keeps_on_user_id_and_job_id", unique: true, using: :btree
  add_index "keeps", ["user_id"], name: "index_keeps_on_user_id", using: :btree

  create_table "message_statuses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "entry_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "entry_id"
    t.text     "body"
    t.string   "message_status_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scouts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "scout_status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "selection_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "mail"
    t.string   "password"
    t.string   "password_confirmation"
    t.integer  "prefecture_id"
    t.string   "city"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
