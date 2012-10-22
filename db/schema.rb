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

ActiveRecord::Schema.define(:version => 20121022080622) do

  create_table "circles", :force => true do |t|
    t.integer  "database_id"
    t.integer  "table_id"
    t.string   "circle_desc"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "circles", ["table_id"], :name => "index_circles_on_table_id"

  create_table "columns", :force => true do |t|
    t.string   "column_name"
    t.string   "column_type"
    t.string   "column_size"
    t.string   "column_desc"
    t.integer  "table_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "column_null"
    t.string   "column_key"
    t.string   "column_default"
  end

  add_index "columns", ["table_id"], :name => "index_columns_on_table_id"

  create_table "databases", :force => true do |t|
    t.string   "db_name"
    t.string   "db_project"
    t.string   "db_user"
    t.string   "db_pm"
    t.string   "db_desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dbs", :force => true do |t|
    t.string   "db_name"
    t.string   "db_project"
    t.string   "db_user"
    t.string   "db_pm"
    t.string   "db_desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dbtables", :force => true do |t|
    t.integer  "database_id"
    t.integer  "table_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "dbtables", ["table_id"], :name => "index_dbtables_on_table_id"

  create_table "tables", :force => true do |t|
    t.string   "table_name"
    t.string   "table_desc"
    t.integer  "database_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tables", ["database_id"], :name => "index_tables_on_database_id"

end
