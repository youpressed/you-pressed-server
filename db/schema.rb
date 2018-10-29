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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nodes", force: :cascade do |t|
    t.string   "label", null: false
    t.string   "description", null: false
    t.string   "tag", default: 'ingredient', null: false
    t.integer  "position", default: 0, null: false
    t.decimal  "yield",   default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edges", force: :cascade do |t|
    t.integer  "parent_id",                 null: false
    t.integer  "child_id",                  null: false
    t.decimal  "quantity",   default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "edges", ["parent_id"], name: "index_edges_on_parent_id", using: :btree
  add_index "edges", ["child_id"], name: "index_edges_on_child_id", using: :btree
end
