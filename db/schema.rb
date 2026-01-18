# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_01_18_034511) do
  create_table "stories", force: :cascade do |t|
    t.string "author"
    t.boolean "completed"
    t.text "content"
    t.datetime "created_at", null: false
    t.integer "progress"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "vocabs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "rating"
    t.integer "story_id", null: false
    t.datetime "updated_at", null: false
    t.integer "word_id", null: false
    t.index ["story_id"], name: "index_vocabs_on_story_id"
    t.index ["word_id"], name: "index_vocabs_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "meaning"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "vocabs", "stories"
  add_foreign_key "vocabs", "words"
end
