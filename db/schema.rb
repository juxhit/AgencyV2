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

ActiveRecord::Schema.define(version: 20161006092314) do

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes_skills", id: false, force: :cascade do |t|
    t.integer "resume_id"
    t.integer "skill_id"
  end

  add_index "resumes_skills", ["resume_id"], name: "index_resumes_skills_on_resume_id"
  add_index "resumes_skills", ["skill_id"], name: "index_resumes_skills_on_skill_id"

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills_vacancies", id: false, force: :cascade do |t|
    t.integer "vacancy_id"
    t.integer "skill_id"
  end

  add_index "skills_vacancies", ["skill_id"], name: "index_skills_vacancies_on_skill_id"
  add_index "skills_vacancies", ["vacancy_id"], name: "index_skills_vacancies_on_vacancy_id"

  create_table "vacancies", force: :cascade do |t|
    t.string   "name"
    t.datetime "validity"
    t.integer  "price"
    t.string   "contacts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
