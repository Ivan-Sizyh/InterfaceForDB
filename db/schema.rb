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

ActiveRecord::Schema[7.0].define(version: 2023_10_04_172823) do
  create_table "employees", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.date "birt_day"
    t.date "start_work_date"
    t.decimal "salary"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_employees_on_library_id"
  end

  create_table "founds", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "title"
    t.integer "books"
    t.integer "magazines"
    t.integer "newspapers"
    t.integer "collections"
    t.integer "dessertations"
    t.integer "essays"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_founds_on_library_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "city"
    t.integer "library_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_type_id"], name: "index_libraries_on_library_type_id"
  end

  create_table "replenishments", force: :cascade do |t|
    t.integer "library_id", null: false
    t.integer "employee_id", null: false
    t.integer "found_id", null: false
    t.date "data_receipt"
    t.string "source_title"
    t.date "data_publication"
    t.string "publishing_house"
    t.integer "instances"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_replenishments_on_employee_id"
    t.index ["found_id"], name: "index_replenishments_on_found_id"
    t.index ["library_id"], name: "index_replenishments_on_library_id"
  end

  create_table "types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_library"
  end

  add_foreign_key "employees", "libraries"
  add_foreign_key "founds", "libraries"
  add_foreign_key "libraries", "library_types"
  add_foreign_key "replenishments", "employees"
  add_foreign_key "replenishments", "founds"
  add_foreign_key "replenishments", "libraries"
end
