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

ActiveRecord::Schema.define(version: 20150721073825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "accesses", force: :cascade do |t|
    t.integer   "location_id"
    t.string    "name"
    t.text      "blurb"
    t.geography "geolocation", limit: {:srid=>4326, :type=>"point", :geographic=>true}, null: false
    t.datetime  "created_at",                                                           null: false
    t.datetime  "updated_at",                                                           null: false
  end

  add_index "accesses", ["location_id"], name: "index_accesses_on_location_id", using: :btree

  create_table "animal_locations", force: :cascade do |t|
    t.integer  "animal_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "animal_locations", ["animal_id"], name: "index_animal_locations_on_animal_id", using: :btree
  add_index "animal_locations", ["location_id"], name: "index_animal_locations_on_location_id", using: :btree

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.text     "blurb"
    t.text     "guidelines"
    t.string   "ext_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "dog_statuses", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "status",      null: false
    t.text     "guidelines",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dog_statuses", ["location_id"], name: "index_dog_statuses_on_location_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.datetime  "created_at",                                                                    null: false
    t.datetime  "updated_at",                                                                    null: false
    t.integer   "category",                                                                      null: false
    t.string    "name",                                                                          null: false
    t.text      "blurb",                                                                         null: false
    t.geography "geolocation",        limit: {:srid=>4326, :type=>"point", :geographic=>true},   null: false
    t.geography "geofence",           limit: {:srid=>4326, :type=>"polygon", :geographic=>true}
    t.string    "image_file_name"
    t.string    "image_content_type"
    t.integer   "image_file_size"
    t.datetime  "image_updated_at"
  end

  create_table "reports", force: :cascade do |t|
    t.integer   "location_id"
    t.text      "blurb"
    t.geography "geolocation",        limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.datetime  "created_at",                                                                  null: false
    t.datetime  "updated_at",                                                                  null: false
    t.string    "image_file_name"
    t.string    "image_content_type"
    t.integer   "image_file_size"
    t.datetime  "image_updated_at"
    t.integer   "animal_id"
    t.string    "animal_type",                                                                 null: false
  end

  add_index "reports", ["animal_id"], name: "index_reports_on_animal_id", using: :btree
  add_index "reports", ["location_id"], name: "index_reports_on_location_id", using: :btree

  add_foreign_key "accesses", "locations"
  add_foreign_key "animal_locations", "animals"
  add_foreign_key "animal_locations", "locations"
  add_foreign_key "dog_statuses", "locations"
  add_foreign_key "reports", "animals"
  add_foreign_key "reports", "locations"
end
