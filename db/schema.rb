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

ActiveRecord::Schema.define(:version => 20110502004943) do

  create_table "contacts", :force => true do |t|
    t.string   "email"
    t.string   "first"
    t.string   "last"
    t.date     "birthday",   :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "schedule_time", :limit => 255
    t.string   "subject"
    t.text     "message"
    t.text     "contacts"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
    t.integer  "status",                       :default => 0
  end

  create_table "smtp_infos", :force => true do |t|
    t.string   "user_id"
    t.string   "user_name"
    t.string   "password"
    t.string   "host"
    t.integer  "port"
    t.string   "authentication"
    t.boolean  "starttls"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
