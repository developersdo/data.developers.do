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

ActiveRecord::Schema.define(version: 20140106171111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ciudades", force: true do |t|
    t.string   "nombre"
    t.integer  "municipio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detalles", force: true do |t|
    t.text     "descripcion"
    t.string   "verbo"
    t.string   "url"
    t.boolean  "formato_json"
    t.boolean  "formato_xml"
    t.boolean  "formato_csv"
    t.boolean  "formato_xls"
    t.integer  "servicio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalles", ["servicio_id"], name: "index_detalles_on_servicio_id", using: :btree

  create_table "empresas", force: true do |t|
    t.string   "rnc"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feriados", force: true do |t|
    t.date     "fecha_original"
    t.date     "fecha_movido"
    t.string   "motivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", force: true do |t|
    t.string   "nombre"
    t.integer  "provincia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "municipios", ["provincia_id"], name: "index_municipios_on_provincia_id", using: :btree

  create_table "provincias", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.boolean  "publicado"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
