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

ActiveRecord::Schema.define(version: 20180814125922) do

  create_table "dailies", force: :cascade do |t|
    t.integer "user_id"
    t.string "daily_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "musicN"
    t.integer "count"
  end

  create_table "musics", force: :cascade do |t|
    t.string "title"
    t.string "singer"
    t.string "fantastic_type"
    t.integer "fantastic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ts"
    t.index ["fantastic_type", "fantastic_id"], name: "index_musics_on_fantastic_type_and_fantastic_id"
  end

  create_table "tapes", force: :cascade do |t|
    t.integer "user_id"
    t.string "tape_title"
    t.integer "m1"
    t.integer "m2"
    t.integer "m3"
    t.integer "m4"
    t.integer "m5"
    t.integer "m6"
    t.integer "m7"
    t.integer "m8"
    t.integer "m9"
    t.integer "m10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "count"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.string "text"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
