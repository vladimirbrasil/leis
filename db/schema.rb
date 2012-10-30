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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121030000248) do

  create_table "areas", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "areas", ["content"], :name => "index_areas_on_content", :unique => true

  create_table "assuntos", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "assuntos", ["content"], :name => "index_assuntos_on_content", :unique => true

  create_table "atribuicaos", :force => true do |t|
    t.integer  "verbo_id"
    t.integer  "area_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "atribuicaos", ["area_id"], :name => "index_atribuicaos_on_area_id"
  add_index "atribuicaos", ["verbo_id", "area_id"], :name => "index_atribuicaos_on_verbo_id_and_area_id", :unique => true
  add_index "atribuicaos", ["verbo_id"], :name => "index_atribuicaos_on_verbo_id"

  create_table "atts", :force => true do |t|
    t.text     "area"
    t.string   "v1"
    t.string   "v2"
    t.string   "v3"
    t.string   "v4"
    t.string   "v5"
    t.string   "v6"
    t.string   "v7"
    t.string   "v8"
    t.string   "v9"
    t.boolean  "apf"
    t.boolean  "epf"
    t.boolean  "ppf"
    t.boolean  "opf"
    t.boolean  "dpf"
    t.boolean  "pcf"
    t.boolean  "clesp"
    t.boolean  "cl1"
    t.boolean  "cl2"
    t.boolean  "cl3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "atts", ["area", "v1", "v2", "v3", "v4", "v5", "v6"], :name => "index_atts_on_area_and_v1_and_v2_and_v3_and_v4_and_v5_and_v6", :unique => true

  create_table "cargo_atribuicaos", :force => true do |t|
    t.integer  "cargo_id"
    t.integer  "atribuicao_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "cargo_atribuicaos", ["atribuicao_id"], :name => "index_cargo_atribuicaos_on_atribuicao_id"
  add_index "cargo_atribuicaos", ["cargo_id", "atribuicao_id"], :name => "index_cargo_atribuicaos_on_cargo_id_and_atribuicao_id", :unique => true
  add_index "cargo_atribuicaos", ["cargo_id"], :name => "index_cargo_atribuicaos_on_cargo_id"

  create_table "cargos", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cargos", ["content"], :name => "index_cargos_on_content", :unique => true

  create_table "classe_atribuicaos", :force => true do |t|
    t.integer  "classe_id"
    t.integer  "atribuicao_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "classe_atribuicaos", ["atribuicao_id"], :name => "index_classe_atribuicaos_on_atribuicao_id"
  add_index "classe_atribuicaos", ["classe_id", "atribuicao_id"], :name => "index_classe_atribuicaos_on_classe_id_and_atribuicao_id", :unique => true
  add_index "classe_atribuicaos", ["classe_id"], :name => "index_classe_atribuicaos_on_classe_id"

  create_table "classes", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "classes", ["content"], :name => "index_classes_on_content", :unique => true

  create_table "verbos", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "verbos", ["content"], :name => "index_verbos_on_content", :unique => true

end
