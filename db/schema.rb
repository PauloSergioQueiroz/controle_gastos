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

ActiveRecord::Schema.define(version: 20160822000527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_registro_diarios", force: :cascade do |t|
    t.float    "valor"
    t.integer  "item_id"
    t.integer  "registro_diario_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["item_id"], name: "index_item_registro_diarios_on_item_id", using: :btree
    t.index ["registro_diario_id"], name: "index_item_registro_diarios_on_registro_diario_id", using: :btree
  end

  create_table "itens", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "descricao"
    t.string   "frequencia"
    t.string   "dia_semana"
    t.string   "dia_mes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_diarios", force: :cascade do |t|
    t.datetime "data_registro"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "item_registro_diarios", "itens"
  add_foreign_key "item_registro_diarios", "registro_diarios"
end
