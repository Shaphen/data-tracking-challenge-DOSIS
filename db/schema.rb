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

ActiveRecord::Schema.define(version: 20200813225735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comb_staff_members", force: :cascade do |t|
    t.integer "comb_id"
    t.integer "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comb_id"], name: "index_comb_staff_members_on_comb_id"
    t.index ["worker_id"], name: "index_comb_staff_members_on_worker_id"
  end

  create_table "combs", force: :cascade do |t|
    t.string "name", null: false
    t.integer "supervisor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "sweet_spot", null: false
    t.index ["supervisor_id"], name: "index_combs_on_supervisor_id"
  end

  create_table "data_entries", force: :cascade do |t|
    t.integer "worker_id", null: false
    t.date "date", null: false
    t.integer "nectar", null: false
    t.integer "advisement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "pollen_globs", null: false
    t.index ["date"], name: "index_data_entries_on_date"
    t.index ["worker_id"], name: "index_data_entries_on_worker_id"
  end

  create_table "worker_bees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "favorite_food"
  end

end
