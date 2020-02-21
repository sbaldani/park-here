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

ActiveRecord::Schema.define(version: 2020_02_21_170302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "registration_plate"
    t.string "type_of_car"
    t.string "model"
    t.integer "year"
    t.string "color"
    t.string "brand"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "geolocalization"
    t.integer "types_of_vehicles"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rents", force: :cascade do |t|
    t.bigint "owner_id"
    t.bigint "client_id"
    t.bigint "car_id"
    t.bigint "park_id"
    t.float "price"
    t.datetime "date_from"
    t.datetime "date_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_rents_on_car_id"
    t.index ["client_id"], name: "index_rents_on_client_id"
    t.index ["owner_id"], name: "index_rents_on_owner_id"
    t.index ["park_id"], name: "index_rents_on_park_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.integer "id_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "rents", "users", column: "client_id"
  add_foreign_key "rents", "users", column: "owner_id"
end
