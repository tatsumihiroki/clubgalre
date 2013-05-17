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

ActiveRecord::Schema.define(:version => 20130515024830) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "place_id"
    t.integer  "del_flg"
    t.string   "image_url"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.date     "updated_at",          :null => false
    t.date     "created_at",          :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "name"
    t.integer  "club_id"
    t.text     "description"
    t.integer  "del_flg"
    t.string   "tweet_tag"
    t.string   "user_token"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.date     "updated_at",          :null => false
    t.date     "created_at",          :null => false
    t.integer  "like"
    t.integer  "prefecture_id"
    t.integer  "look"
  end

  create_table "prefectures", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
