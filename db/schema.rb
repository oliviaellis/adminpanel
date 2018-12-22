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

ActiveRecord::Schema.define(version: 2018_12_21_224419) do

  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.boolean "admin"
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohorts_courses", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "course_id"
    t.index ["cohort_id"], name: "index_cohorts_courses_on_cohort_id"
    t.index ["course_id"], name: "index_cohorts_courses_on_course_id"
  end

  create_table "cohorts_instructors", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "instructor_id"
    t.index ["cohort_id"], name: "index_cohorts_instructors_on_cohort_id"
    t.index ["instructor_id"], name: "index_cohorts_instructors_on_instructor_id"
  end

  create_table "cohorts_students", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "student_id"
    t.index ["cohort_id"], name: "index_cohorts_students_on_cohort_id"
    t.index ["student_id"], name: "index_cohorts_students_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "instructors" because of following StandardError
#   Unknown type 'password_digest' for column 'string'

# Could not dump table "students" because of following StandardError
#   Unknown type 'password_digest' for column 'string'

end