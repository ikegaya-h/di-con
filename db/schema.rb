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

ActiveRecord::Schema.define(version: 2022_05_20_063220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_desks", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_infos", force: :cascade do |t|
    t.bigint "api_objects_id", null: false
    t.bigint "api_infos_id", null: false
    t.string "value", null: false
    t.bigint "api_layers_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["api_infos_id"], name: "index_api_infos_on_api_infos_id"
    t.index ["api_layers_id"], name: "index_api_infos_on_api_layers_id"
    t.index ["api_objects_id"], name: "index_api_infos_on_api_objects_id"
  end

  create_table "api_layers", force: :cascade do |t|
    t.bigint "api_versions_id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["api_versions_id"], name: "index_api_layers_on_api_versions_id"
  end

  create_table "api_object_relationships", force: :cascade do |t|
    t.string "relationship", null: false
    t.bigint "from_obj_id_id", null: false
    t.bigint "to_obj_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["from_obj_id_id"], name: "index_api_object_relationships_on_from_obj_id_id"
    t.index ["to_obj_id_id"], name: "index_api_object_relationships_on_to_obj_id_id"
  end

  create_table "api_objects", force: :cascade do |t|
    t.string "name", null: false
    t.string "x"
    t.string "y"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_properties", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_versions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "api_infos", "api_infos", column: "api_infos_id"
  add_foreign_key "api_infos", "api_layers", column: "api_layers_id"
  add_foreign_key "api_infos", "api_objects", column: "api_objects_id"
  add_foreign_key "api_layers", "api_versions", column: "api_versions_id"
  add_foreign_key "api_object_relationships", "api_objects", column: "from_obj_id_id"
  add_foreign_key "api_object_relationships", "api_objects", column: "to_obj_id_id"
end
