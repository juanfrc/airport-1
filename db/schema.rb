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

ActiveRecord::Schema.define(version: 20150310162512) do

  create_table "airlines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arrivals", force: true do |t|
    t.integer  "flight_id"
    t.datetime "date"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "arrivals", ["flight_id"], name: "index_arrivals_on_flight_id"

  create_table "departures", force: true do |t|
    t.integer  "flight_id"
    t.datetime "date"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departures", ["flight_id"], name: "index_departures_on_flight_id"

  create_table "flights", force: true do |t|
    t.integer  "airline_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "flights", ["airline_id"], name: "index_flights_on_airline_id"

end
