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

ActiveRecord::Schema[7.0].define(version: 2023_10_06_113112) do
  create_table "employees", force: :cascade do |t|
    t.integer "library_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "position", null: false
    t.date "birth_date", default: -> { "date('now', '-18 years')" }, null: false
    t.date "start_work_date", default: -> { "date('now')" }, null: false
    t.decimal "salary", default: "0.0", null: false
    t.string "education", null: false
    t.index ["library_id"], name: "index_employees_on_library_id"
  end

  create_table "founds", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "title", null: false
    t.integer "books", default: 0, null: false
    t.integer "magazines", default: 0, null: false
    t.integer "newspapers", default: 0, null: false
    t.integer "collections", default: 0, null: false
    t.integer "dissertations", default: 0, null: false
    t.integer "essays", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_founds_on_library_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.integer "type_id", null: false
    t.string "title", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_libraries_on_type_id"
  end

  create_table "replenishments", force: :cascade do |t|
    t.integer "library_id", null: false
    t.integer "employee_id", null: false
    t.integer "found_id", null: false
    t.date "data_receipt", null: false
    t.string "source_title", null: false
    t.date "data_replenishment", null: false
    t.string "publishing_house", null: false
    t.integer "instances", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_replenishments_on_employee_id"
    t.index ["found_id"], name: "index_replenishments_on_found_id"
    t.index ["library_id"], name: "index_replenishments_on_library_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "library_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "libraries"
  add_foreign_key "founds", "libraries"
  add_foreign_key "libraries", "types"
  add_foreign_key "replenishments", "employees"
  add_foreign_key "replenishments", "founds"
  add_foreign_key "replenishments", "libraries"
end
