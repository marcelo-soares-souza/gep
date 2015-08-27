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

ActiveRecord::Schema.define(version: 20150827182310) do

  create_table "emprestimos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "equipamento_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "situacao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "emprestimos", ["equipamento_id"], name: "index_emprestimos_on_equipamento_id"
  add_index "emprestimos", ["user_id"], name: "index_emprestimos_on_user_id"

  create_table "equipamentos", force: :cascade do |t|
    t.string   "patrimonio"
    t.string   "numero_serie"
    t.text     "observacao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "local_retirada"
    t.integer  "tipo_id"
    t.integer  "modelo_id"
    t.integer  "marca_id"
  end

  add_index "equipamentos", ["marca_id"], name: "index_equipamentos_on_marca_id"
  add_index "equipamentos", ["modelo_id"], name: "index_equipamentos_on_modelo_id"
  add_index "equipamentos", ["tipo_id"], name: "index_equipamentos_on_tipo_id"

  create_table "equipes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "projeto_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "situacao"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "equipes", ["projeto_id"], name: "index_equipes_on_projeto_id"
  add_index "equipes", ["user_id"], name: "index_equipes_on_user_id"

  create_table "marcas", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modelos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pontos", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "data_hora"
    t.integer  "situacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pontos", ["user_id"], name: "index_pontos_on_user_id"

  create_table "projetos", force: :cascade do |t|
    t.string   "titulo"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nome"
    t.string   "cpf"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
