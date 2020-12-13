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

ActiveRecord::Schema.define(version: 2020_12_12_211626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creditors", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "transaction_id", null: false
    t.boolean "confirmed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["transaction_id"], name: "index_creditors_on_transaction_id"
    t.index ["user_id"], name: "index_creditors_on_user_id"
  end

  create_table "deals", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "credit_sum", precision: 8, scale: 2
  end

  create_table "debtors", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "transaction_id", null: false
    t.decimal "sum", precision: 8, scale: 2
    t.boolean "confirmed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["transaction_id"], name: "index_debtors_on_transaction_id"
    t.index ["user_id"], name: "index_debtors_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "user"
    t.string "references"
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_members_on_group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "given_name"
    t.string "family_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "transactions", default: [], array: true
  end

  add_foreign_key "creditors", "deals", column: "transaction_id"
  add_foreign_key "debtors", "deals", column: "transaction_id"
  add_foreign_key "debtors", "users"
  add_foreign_key "members", "groups"
end
