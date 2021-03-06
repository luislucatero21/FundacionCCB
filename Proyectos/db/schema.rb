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

ActiveRecord::Schema.define(version: 20170419130414) do

  create_table "encuesta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "etapa"
  end

  create_table "pregunta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "valor"
    t.string  "area"
  end

  create_table "preguntas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "texto_pregunta"
    t.integer  "valor"
    t.string   "area"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "area"
    t.decimal  "importe",                             precision: 10
    t.datetime "periodo"
    t.text     "descripcion",           limit: 65535
    t.text     "ubicacion",             limit: 65535
    t.integer  "voluntarios"
    t.string   "problematica"
    t.integer  "atiende_num_personas"
    t.text     "titulo",                limit: 65535
    t.datetime "fecha_de_creacion"
    t.datetime "fecha_de_modificacion"
    t.integer  "user_id"
  end

  create_table "respuesta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "respuesta"
    t.integer "valor"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "nombre"
    t.string  "correo"
    t.string  "numero_telefono"
    t.text    "apellido_paterno",  limit: 65535
    t.text    "apellido_materno",  limit: 65535
    t.text    "nombre_de_usuario", limit: 65535
    t.string  "password_digest"
    t.boolean "admin",                           default: false
  end

end
