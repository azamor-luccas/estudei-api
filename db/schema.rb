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

ActiveRecord::Schema.define(version: 2021_01_20_234211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "question_alternatives", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.boolean "correct"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "letter"
    t.index ["question_id"], name: "index_question_alternatives_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "statement"
    t.string "subject"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "question_alternatives", "questions"
end