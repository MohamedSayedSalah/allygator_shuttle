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

ActiveRecord::Schema.define(version: 2019_11_15_154336) do

  create_table "locations", force: :cascade do |t|
    t.float "lng"
    t.float "lat"
    t.datetime "at"
    t.integer "vehicle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vehicle_id"], name: "index_locations_on_vehicle_id"
  end

  create_table "vehicles", id: false, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "id"
    t.string "#<ActiveRecord::ConnectionAdapters::SQLite3::TableDefinition:0x00007fd15f1114c0>"
  end

  add_foreign_key "locations", "vehicles"
end
