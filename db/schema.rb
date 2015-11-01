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

ActiveRecord::Schema.define(version: 20151025040737) do

  create_table "birth_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "blood_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "child_development_periods", force: :cascade do |t|
    t.date     "date_contol"
    t.string   "weight",               limit: 255
    t.string   "size",                 limit: 255
    t.string   "head_circunference",   limit: 255
    t.integer  "child_id",             limit: 4
    t.integer  "child_development_id", limit: 4
    t.integer  "medical_center_id",    limit: 4
    t.integer  "doctor_id",            limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "child_development_periods", ["child_development_id"], name: "index_child_development_periods_on_child_development_id", using: :btree
  add_index "child_development_periods", ["child_id"], name: "index_child_development_periods_on_child_id", using: :btree
  add_index "child_development_periods", ["doctor_id"], name: "index_child_development_periods_on_doctor_id", using: :btree
  add_index "child_development_periods", ["medical_center_id"], name: "index_child_development_periods_on_medical_center_id", using: :btree

  create_table "child_developments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "months",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "children", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.date     "date_of_birth"
    t.time     "time_of_birth"
    t.string   "weight",               limit: 255
    t.string   "size",                 limit: 255
    t.string   "idcard",               limit: 255
    t.integer  "customer_id",          limit: 4
    t.integer  "medical_insurance_id", limit: 4
    t.integer  "blood_type_id",        limit: 4
    t.integer  "birth_type_id",        limit: 4
    t.integer  "medical_center_id",    limit: 4
    t.integer  "doctor_id",            limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "children", ["birth_type_id"], name: "index_children_on_birth_type_id", using: :btree
  add_index "children", ["blood_type_id"], name: "index_children_on_blood_type_id", using: :btree
  add_index "children", ["customer_id"], name: "index_children_on_customer_id", using: :btree
  add_index "children", ["doctor_id"], name: "index_children_on_doctor_id", using: :btree
  add_index "children", ["medical_center_id"], name: "index_children_on_medical_center_id", using: :btree
  add_index "children", ["medical_insurance_id"], name: "index_children_on_medical_insurance_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "tax_identification", limit: 255
    t.string   "address",            limit: 255
    t.string   "phone",              limit: 255
    t.string   "website",            limit: 255
    t.text     "description",        limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "idcard",        limit: 255
    t.string   "name",          limit: 255
    t.string   "last_name",     limit: 255
    t.string   "sec_last_name", limit: 255
    t.date     "date_of_birth"
    t.string   "address",       limit: 255
    t.string   "email",         limit: 255
    t.integer  "company_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "customers", ["company_id"], name: "index_customers_on_company_id", using: :btree

  create_table "doctors", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "last_name",         limit: 255
    t.string   "sec_last_name",     limit: 255
    t.integer  "medical_center_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "doctors", ["medical_center_id"], name: "index_doctors_on_medical_center_id", using: :btree

  create_table "health_problems", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medical_centers", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "tax_identification", limit: 255
    t.string   "address",            limit: 255
    t.string   "phone",              limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "medical_exams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medical_histories", force: :cascade do |t|
    t.date     "date_register"
    t.text     "description",          limit: 65535
    t.string   "weight_picture",       limit: 255
    t.string   "height_picture",       limit: 255
    t.string   "type_picture",         limit: 255
    t.string   "picture",              limit: 255
    t.integer  "medical_insurance_id", limit: 4
    t.integer  "medical_center_id",    limit: 4
    t.integer  "medicine_id",          limit: 4
    t.integer  "medical_exam_id",      limit: 4
    t.integer  "doctor_id",            limit: 4
    t.integer  "child_id",             limit: 4
    t.integer  "health_problem_id",    limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "medical_histories", ["child_id"], name: "index_medical_histories_on_child_id", using: :btree
  add_index "medical_histories", ["doctor_id"], name: "index_medical_histories_on_doctor_id", using: :btree
  add_index "medical_histories", ["health_problem_id"], name: "index_medical_histories_on_health_problem_id", using: :btree
  add_index "medical_histories", ["medical_center_id"], name: "index_medical_histories_on_medical_center_id", using: :btree
  add_index "medical_histories", ["medical_exam_id"], name: "index_medical_histories_on_medical_exam_id", using: :btree
  add_index "medical_histories", ["medical_insurance_id"], name: "index_medical_histories_on_medical_insurance_id", using: :btree
  add_index "medical_histories", ["medicine_id"], name: "index_medical_histories_on_medicine_id", using: :btree

  create_table "medical_insurances", force: :cascade do |t|
    t.string   "nom_seguro",         limit: 255
    t.string   "name",               limit: 255
    t.string   "tax_identification", limit: 255
    t.string   "address",            limit: 255
    t.string   "website",            limit: 255
    t.string   "email",              limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vaccine_children", force: :cascade do |t|
    t.date     "date_suggested"
    t.date     "date_register"
    t.string   "dosis_vacune",      limit: 255
    t.string   "status",            limit: 255
    t.integer  "weight_picture",    limit: 4
    t.integer  "height_picture",    limit: 4
    t.string   "type_picture",      limit: 255
    t.string   "picture",           limit: 255
    t.integer  "medical_center_id", limit: 4
    t.integer  "vaccine_plan_id",   limit: 4
    t.integer  "child_id",          limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "vaccine_children", ["child_id"], name: "index_vaccine_children_on_child_id", using: :btree
  add_index "vaccine_children", ["medical_center_id"], name: "index_vaccine_children_on_medical_center_id", using: :btree
  add_index "vaccine_children", ["vaccine_plan_id"], name: "index_vaccine_children_on_vaccine_plan_id", using: :btree

  create_table "vaccine_plans", force: :cascade do |t|
    t.integer  "nmes",       limit: 4
    t.integer  "vaccine_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "vaccine_plans", ["vaccine_id"], name: "index_vaccine_plans_on_vaccine_id", using: :btree

  create_table "vaccines", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "composition", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_foreign_key "child_development_periods", "child_developments"
  add_foreign_key "child_development_periods", "children"
  add_foreign_key "child_development_periods", "doctors"
  add_foreign_key "child_development_periods", "medical_centers"
  add_foreign_key "children", "birth_types"
  add_foreign_key "children", "blood_types"
  add_foreign_key "children", "customers"
  add_foreign_key "children", "doctors"
  add_foreign_key "children", "medical_centers"
  add_foreign_key "children", "medical_insurances"
  add_foreign_key "customers", "companies"
  add_foreign_key "doctors", "medical_centers"
  add_foreign_key "medical_histories", "children"
  add_foreign_key "medical_histories", "doctors"
  add_foreign_key "medical_histories", "health_problems"
  add_foreign_key "medical_histories", "medical_centers"
  add_foreign_key "medical_histories", "medical_exams"
  add_foreign_key "medical_histories", "medical_insurances"
  add_foreign_key "medical_histories", "medicines"
  add_foreign_key "vaccine_children", "children"
  add_foreign_key "vaccine_children", "medical_centers"
  add_foreign_key "vaccine_children", "vaccine_plans"
  add_foreign_key "vaccine_plans", "vaccines"
end
