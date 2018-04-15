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

ActiveRecord::Schema.define(version: 20180405222443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eventhandlers", force: :cascade do |t|
    t.text "name"
    t.string "response_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.text "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wordhandlers", force: :cascade do |t|
    t.text "name"
    t.bigint "keyword_id"
    t.bigint "eventhandler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eventhandler_id"], name: "index_wordhandlers_on_eventhandler_id"
    t.index ["keyword_id"], name: "index_wordhandlers_on_keyword_id"
  end

  add_foreign_key "wordhandlers", "eventhandlers", column: "eventhandler_id"
  add_foreign_key "wordhandlers", "keywords", column: "keyword_id"
end
