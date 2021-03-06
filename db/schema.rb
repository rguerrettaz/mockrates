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

ActiveRecord::Schema.define(:version => 20130408022933) do

  create_table "attempts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.string   "github_url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "status"
  end

  add_index "attempts", ["challenge_id"], :name => "index_attempts_on_challenge_id"
  add_index "attempts", ["user_id"], :name => "index_attempts_on_user_id"

  create_table "challenges", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "interactive", :default => false
    t.integer  "week_id"
    t.integer  "phase_id"
  end

  create_table "cohorts", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "start_date"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cohorts", ["user_id"], :name => "index_cohorts_on_user_id"

  create_table "interactive_attempts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.text     "code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "phases", :force => true do |t|
    t.integer  "week_id"
    t.integer  "phase_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "challenge_id"
    t.string   "phase_number"
  end

  create_table "posts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specs", :force => true do |t|
    t.string   "content"
    t.integer  "challenge_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "oauth_token"
    t.string   "uid"
    t.integer  "cohort_id"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["oauth_token"], :name => "index_users_on_oauth_token"
  add_index "users", ["uid"], :name => "index_users_on_uid"

  create_table "weeks", :force => true do |t|
    t.integer  "phase_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "challenge_id"
    t.string   "name"
  end

end
