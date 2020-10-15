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

ActiveRecord::Schema.define(version: 2020_10_14_193012) do

  create_table "alcohols", force: :cascade do |t|
    t.string "name"
    t.integer "proof"
  end

  create_table "bartenders", force: :cascade do |t|
    t.string "name"
    t.integer "yrs_of_exp"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.boolean "ice"
    t.string "instructions"
    t.string "ingredients"
    t.string "mixers"
    t.integer "bartender_id", null: false
    t.integer "alcohol_id", null: false
    t.index ["alcohol_id"], name: "index_recipes_on_alcohol_id"
    t.index ["bartender_id"], name: "index_recipes_on_bartender_id"
  end

  add_foreign_key "recipes", "alcohols"
  add_foreign_key "recipes", "bartenders"
end
