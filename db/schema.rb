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

ActiveRecord::Schema[7.0].define(version: 2022_12_12_040632) do
  create_table "constraints", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.integer "subject"
    t.string "value_token"
    t.string "operator"
    t.boolean "optional"
    t.boolean "default"
    t.string "units"
    t.boolean "agreggate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "constrainable_id"
    t.string "constrainable_type"
    t.index ["constrainable_type", "constrainable_id"], name: "index_constraints_on_constrainable_type_and_constrainable_id"
  end

  create_table "coverage_groups", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_coverage_groups_on_product_id"
  end

  create_table "coverage_groups_coverages", id: false, charset: "utf8mb3", force: :cascade do |t|
    t.bigint "coverage_id", null: false
    t.bigint "coverage_group_id", null: false
  end

  create_table "coverages", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "version"
    t.string "ctype"
    t.string "carrier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "policy_value_tokens", charset: "utf8mb3", force: :cascade do |t|
    t.string "token"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "jurisdiction"
    t.string "code"
    t.integer "status"
    t.string "ftype"
    t.date "in_force"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "value_configs", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "constraint_id", null: false
    t.integer "default_value"
    t.integer "max_value"
    t.integer "min_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constraint_id"], name: "index_value_configs_on_constraint_id"
  end

  add_foreign_key "coverage_groups", "products"
  add_foreign_key "value_configs", "constraints"
end
