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

  create_table "api_desks", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_infos", force: :cascade do |t|
    t.integer "object_id", null: false
    t.integer "info_id", null: false
    t.string "value", null: false
    t.integer "layer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["info_id"], name: "index_api_infos_on_info_id"
    t.index ["layer_id"], name: "index_api_infos_on_layer_id"
    t.index ["object_id"], name: "index_api_infos_on_object_id"
  end

  create_table "api_layers", force: :cascade do |t|
    t.integer "version_id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["version_id"], name: "index_api_layers_on_version_id"
  end

  create_table "api_object_relationships", force: :cascade do |t|
    t.string "relationship", null: false
    t.integer "from_obj_id_id", null: false
    t.integer "to_obj_id_id", null: false
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

  add_foreign_key "api_infos", "infos"
  add_foreign_key "api_infos", "layers"
  add_foreign_key "api_infos", "objects"
  add_foreign_key "api_layers", "versions"
  add_foreign_key "api_object_relationships", "objects", column: "from_obj_id_id"
  add_foreign_key "api_object_relationships", "objects", column: "to_obj_id_id"
end
