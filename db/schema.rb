# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_15_233133) do

  create_table "frames", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "about", limit: 30
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "space_id", null: false
    t.string "name", limit: 24
    t.index ["space_id"], name: "index_frames_on_space_id"
    t.index ["user_id"], name: "index_frames_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "stream_id", null: false
    t.index ["stream_id"], name: "index_messages_on_stream_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_spaces_on_user_id"
  end

  create_table "streams", force: :cascade do |t|
    t.string "name", limit: 15
    t.string "about", limit: 48
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "frame_id", null: false
    t.index ["frame_id"], name: "index_streams_on_frame_id"
    t.index ["user_id"], name: "index_streams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 30
    t.string "about", limit: 120
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "frames", "spaces"
  add_foreign_key "frames", "users"
  add_foreign_key "messages", "streams"
  add_foreign_key "messages", "users"
  add_foreign_key "spaces", "users"
  add_foreign_key "streams", "frames"
  add_foreign_key "streams", "users"
end
