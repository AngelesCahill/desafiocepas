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

ActiveRecord::Schema[7.0].define(version: 2022_07_20_225746) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "winemaker_winetasteds", force: :cascade do |t|
    t.bigint "winetasted_id", null: false
    t.bigint "winemaker_id", null: false
    t.boolean "available", default: true
    t.index ["winemaker_id", "winetasted_id"], name: "index_winemaker_winetasteds_on_winemaker_id_and_winetasted_id"
    t.index ["winetasted_id", "winemaker_id"], name: "index_winemaker_winetasteds_on_winetasted_id_and_winemaker_id"
  end

  create_table "winemakers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nationality"
    t.integer "record"
    t.string "position"
    t.string "magazine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winetasteds", force: :cascade do |t|
    t.string "name"
    t.string "strain"
    t.string "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
