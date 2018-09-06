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

ActiveRecord::Schema.define(version: 2018_09_06_164352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.integer "time_period_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "semester_id"
    t.index ["semester_id"], name: "index_branches_on_semester_id"
  end

  create_table "results", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_results_on_semester_id"
    t.index ["student_id"], name: "index_results_on_student_id"
  end

  create_table "semester_branch_subjects", force: :cascade do |t|
    t.bigint "semester_id"
    t.bigint "branch_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_semester_branch_subjects_on_branch_id"
    t.index ["semester_id"], name: "index_semester_branch_subjects_on_semester_id"
    t.index ["subject_id"], name: "index_semester_branch_subjects_on_subject_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.bigint "student_id"
    t.integer "sem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_semesters_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "batch_id"
    t.bigint "branch_id"
    t.bigint "semester_id"
    t.index ["batch_id"], name: "index_students_on_batch_id"
    t.index ["branch_id"], name: "index_students_on_branch_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
    t.index ["semester_id"], name: "index_students_on_semester_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "marks_of"
    t.integer "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subject_id"
    t.index ["subject_id"], name: "index_subjects_on_subject_id"
  end

  add_foreign_key "branches", "semesters"
  add_foreign_key "results", "semesters"
  add_foreign_key "results", "students"
  add_foreign_key "semester_branch_subjects", "branches"
  add_foreign_key "semester_branch_subjects", "semesters"
  add_foreign_key "semester_branch_subjects", "subjects"
  add_foreign_key "semesters", "students"
  add_foreign_key "students", "batches"
  add_foreign_key "students", "branches"
  add_foreign_key "students", "semesters"
  add_foreign_key "subjects", "subjects"
end
