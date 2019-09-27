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

ActiveRecord::Schema.define(version: 20190927141451) do

  create_table "drivers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "city"
    t.string   "phone_number"
    t.boolean  "available",    default: true
    t.datetime "deleted_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["city"], name: "index_drivers_on_city", using: :btree
    t.index ["name"], name: "index_drivers_on_name", using: :btree
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "city"
    t.decimal  "longitude",  precision: 10, scale: 6
    t.decimal  "latitude",   precision: 10, scale: 6
    t.datetime "deleted_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["city"], name: "index_places_on_city", using: :btree
    t.index ["name"], name: "index_places_on_name", using: :btree
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "driver_id"
    t.integer  "state",                       default: 0
    t.integer  "source_id"
    t.integer  "destination_id"
    t.integer  "last_location_id"
    t.integer  "seats",                       default: 0
    t.float    "price",            limit: 24, default: 0.0
    t.datetime "deleted_at"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["city"], name: "index_trips_on_city", using: :btree
    t.index ["name"], name: "index_trips_on_name", using: :btree
  end

end
