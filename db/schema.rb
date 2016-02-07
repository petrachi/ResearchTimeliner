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

ActiveRecord::Schema.define(version: 20160206225358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "literatures", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "references", force: :cascade do |t|
    t.integer  "literature_id"
    t.integer  "referencee_id"
    t.string   "referencee_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "references", ["literature_id"], name: "index_references_on_literature_id", using: :btree
  add_index "references", ["referencee_type", "referencee_id"], name: "index_references_on_referencee_type_and_referencee_id", using: :btree

  create_table "relations", force: :cascade do |t|
    t.integer  "investigator_id"
    t.string   "investigator_type"
    t.integer  "relative_id"
    t.string   "relative_type"
    t.string   "date"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "relations", ["investigator_type", "investigator_id"], name: "index_relations_on_investigator_type_and_investigator_id", using: :btree
  add_index "relations", ["relative_type", "relative_id"], name: "index_relations_on_relative_type_and_relative_id", using: :btree

  create_table "things", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "references", "literatures"
end
