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

ActiveRecord::Schema.define(version: 20140109050902) do

  create_table "media", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "size"
    t.integer  "service_request_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "media", ["service_request_id"], name: "index_media_on_service_request_id"
  add_index "media", ["user_id"], name: "index_media_on_user_id"

  create_table "negotiations", force: true do |t|
    t.integer  "quata_id"
    t.text     "message"
    t.integer  "from_id"
    t.integer  "to_id"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "negotiations", ["from_id"], name: "index_negotiations_on_from_id"
  add_index "negotiations", ["quata_id"], name: "index_negotiations_on_quata_id"
  add_index "negotiations", ["to_id"], name: "index_negotiations_on_to_id"

  create_table "quata", force: true do |t|
    t.integer  "service_request_id"
    t.integer  "user_id"
    t.float    "amount"
    t.integer  "duration"
    t.datetime "when"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quata", ["service_request_id"], name: "index_quata_on_service_request_id"
  add_index "quata", ["user_id"], name: "index_quata_on_user_id"

  create_table "reviews", force: true do |t|
    t.integer  "rank"
    t.integer  "user_id"
    t.integer  "service_id"
    t.integer  "service_request_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["service_id"], name: "index_reviews_on_service_id"
  add_index "reviews", ["service_request_id"], name: "index_reviews_on_service_request_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "service_requests", force: true do |t|
    t.string   "geolat"
    t.string   "geolng"
    t.string   "address"
    t.text     "desc"
    t.string   "title"
    t.string   "state"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_requests", ["user_id"], name: "index_service_requests_on_user_id"

  create_table "service_types", force: true do |t|
    t.string   "name",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "service_types", ["name"], name: "index_service_types_on_name", unique: true
  add_index "service_types", ["slug"], name: "index_service_types_on_slug"

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.integer  "rank"
    t.string   "contact_address"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.integer  "service_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["service_type_id"], name: "index_services_on_service_type_id"

  create_table "services_users", force: true do |t|
    t.integer "service_id"
    t.integer "user_id"
  end

  add_index "services_users", ["service_id"], name: "index_services_users_on_service_id"
  add_index "services_users", ["user_id"], name: "index_services_users_on_user_id"

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["uid"], name: "index_users_on_uid"

end
