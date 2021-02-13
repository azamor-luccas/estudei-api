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

ActiveRecord::Schema.define(version: 2021_02_13_211554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commentaries", force: :cascade do |t|
    t.string "commentary"
    t.integer "total_likes"
    t.integer "total_deslikes"
    t.bigint "student_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_commentaries_on_question_id"
    t.index ["student_id"], name: "index_commentaries_on_student_id"
  end

  create_table "course_students", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_students_on_course_id"
    t.index ["student_id"], name: "index_course_students_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exam_question_students", force: :cascade do |t|
    t.boolean "is_correct"
    t.bigint "question_id", null: false
    t.bigint "question_alternative_id"
    t.bigint "student_id", null: false
    t.bigint "exam_question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exam_question_id"], name: "index_exam_question_students_on_exam_question_id"
    t.index ["question_alternative_id"], name: "index_exam_question_students_on_question_alternative_id"
    t.index ["question_id"], name: "index_exam_question_students_on_question_id"
    t.index ["student_id"], name: "index_exam_question_students_on_student_id"
  end

  create_table "exam_questions", force: :cascade do |t|
    t.bigint "exam_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exam_id"], name: "index_exam_questions_on_exam_id"
    t.index ["question_id"], name: "index_exam_questions_on_question_id"
  end

  create_table "exam_students", force: :cascade do |t|
    t.float "progress"
    t.integer "number_of_correct_answers"
    t.bigint "student_id", null: false
    t.bigint "exam_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exam_id"], name: "index_exam_students_on_exam_id"
    t.index ["student_id"], name: "index_exam_students_on_student_id"
  end

  create_table "exams", force: :cascade do |t|
    t.integer "exam_type"
    t.bigint "lesson_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_exams_on_lesson_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_fields_on_course_id"
  end

  create_table "lesson_questions", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_lesson_questions_on_lesson_id"
    t.index ["question_id"], name: "index_lesson_questions_on_question_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.bigint "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.integer "priority"
    t.index ["subject_id"], name: "index_lessons_on_subject_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string "url"
    t.bigint "course_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_logs_on_course_id"
    t.index ["student_id"], name: "index_logs_on_student_id"
  end

  create_table "material_students", force: :cascade do |t|
    t.bigint "material_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_material_students_on_material_id"
    t.index ["student_id"], name: "index_material_students_on_student_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "download_link"
    t.string "status"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_materials_on_lesson_id"
  end

  create_table "oauth_access_grants", force: :cascade do |t|
    t.bigint "resource_owner_id", null: false
    t.bigint "application_id", null: false
    t.string "token", null: false
    t.integer "expires_in", null: false
    t.text "redirect_uri", null: false
    t.datetime "created_at", null: false
    t.datetime "revoked_at"
    t.string "scopes", default: "", null: false
    t.index ["application_id"], name: "index_oauth_access_grants_on_application_id"
    t.index ["resource_owner_id"], name: "index_oauth_access_grants_on_resource_owner_id"
    t.index ["token"], name: "index_oauth_access_grants_on_token", unique: true
  end

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.bigint "resource_owner_id"
    t.bigint "application_id", null: false
    t.string "token", null: false
    t.string "refresh_token"
    t.integer "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at", null: false
    t.string "scopes"
    t.string "previous_refresh_token", default: "", null: false
    t.index ["application_id"], name: "index_oauth_access_tokens_on_application_id"
    t.index ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true
    t.index ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id"
    t.index ["token"], name: "index_oauth_access_tokens_on_token", unique: true
  end

  create_table "oauth_applications", force: :cascade do |t|
    t.string "name", null: false
    t.string "uid", null: false
    t.string "secret", null: false
    t.text "redirect_uri", null: false
    t.string "scopes", default: "", null: false
    t.boolean "confidential", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uid"], name: "index_oauth_applications_on_uid", unique: true
  end

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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level"
  end

  create_table "ranking_actions", force: :cascade do |t|
    t.string "action_type"
    t.float "points"
    t.float "multiplier"
    t.bigint "ranking_id", null: false
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_ranking_actions_on_course_id"
    t.index ["ranking_id"], name: "index_ranking_actions_on_ranking_id"
    t.index ["student_id"], name: "index_ranking_actions_on_student_id"
  end

  create_table "rankings", force: :cascade do |t|
    t.string "student_name"
    t.float "score"
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_rankings_on_course_id"
    t.index ["student_id"], name: "index_rankings_on_student_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.integer "reaction_type"
    t.bigint "student_id", null: false
    t.bigint "commentary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentary_id"], name: "index_reactions_on_commentary_id"
    t.index ["student_id"], name: "index_reactions_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "gender"
    t.string "status"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.bigint "field_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.index ["field_id"], name: "index_subjects_on_field_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "video_students", force: :cascade do |t|
    t.float "progress_percentage"
    t.integer "progress_in_seconds"
    t.boolean "finished"
    t.bigint "video_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_video_students_on_student_id"
    t.index ["video_id"], name: "index_video_students_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.integer "duration_in_seconds"
    t.string "status"
    t.string "video_url"
    t.string "vimeo_id"
    t.bigint "lesson_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "teacher_id"
    t.index ["lesson_id"], name: "index_videos_on_lesson_id"
    t.index ["teacher_id"], name: "index_videos_on_teacher_id"
  end

  add_foreign_key "course_students", "courses"
  add_foreign_key "course_students", "students"
  add_foreign_key "exam_questions", "exams"
  add_foreign_key "exam_questions", "questions"
  add_foreign_key "fields", "courses"
  add_foreign_key "lesson_questions", "lessons"
  add_foreign_key "lesson_questions", "questions"
  add_foreign_key "lessons", "subjects"
  add_foreign_key "logs", "courses"
  add_foreign_key "logs", "students"
  add_foreign_key "material_students", "materials"
  add_foreign_key "material_students", "students"
  add_foreign_key "materials", "lessons"
  add_foreign_key "oauth_access_grants", "oauth_applications", column: "application_id"
  add_foreign_key "oauth_access_tokens", "oauth_applications", column: "application_id"
  add_foreign_key "question_alternatives", "questions"
  add_foreign_key "ranking_actions", "courses"
  add_foreign_key "ranking_actions", "rankings"
  add_foreign_key "ranking_actions", "students"
  add_foreign_key "rankings", "courses"
  add_foreign_key "rankings", "students"
  add_foreign_key "subjects", "fields"
  add_foreign_key "video_students", "students"
  add_foreign_key "video_students", "videos"
end
