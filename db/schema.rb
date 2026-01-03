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

ActiveRecord::Schema[7.1].define(version: 2014_01_06_171111) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ciudades", force: :cascade do |t|
    t.string "nombre"
    t.bigint "municipio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["municipio_id"], name: "index_ciudades_on_municipio_id"
  end

  create_table "detalles", force: :cascade do |t|
    t.text "descripcion"
    t.string "verbo"
    t.string "url"
    t.boolean "formato_json"
    t.boolean "formato_xml"
    t.boolean "formato_csv"
    t.boolean "formato_xls"
    t.bigint "servicio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["servicio_id"], name: "index_detalles_on_servicio_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "rnc"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feriados", force: :cascade do |t|
    t.date "fecha_original"
    t.date "fecha_movido"
    t.string "motivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.string "nombre"
    t.bigint "provincia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provincia_id"], name: "index_municipios_on_provincia_id"
  end

  create_table "provincias", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.boolean "publicado"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
