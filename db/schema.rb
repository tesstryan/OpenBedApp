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

ActiveRecord::Schema.define(version: 20131212173754) do

  create_table "occupants", force: true do |t|
    t.string  "name"
    t.string  "sex"
    t.integer "number_of_beds"
    t.integer "shelter_id"
  end

  create_table "shelters", force: true do |t|
    t.string  "name"
    t.string  "street_address"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "phone_number"
    t.integer "total_beds"
    t.integer "open_beds"
    t.string  "email"
    t.string  "password_digest"
    t.string  "username"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string  "website"
  end

end
