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

ActiveRecord::Schema.define(version: 20140217222121) do

  create_table "blog_cats", force: true do |t|
    t.string   "title"
    t.string   "cat_type"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_templates", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "view_count",       limit: 8, default: 0
    t.integer  "comment_count",    limit: 8, default: 0
    t.integer  "blog_template_id"
    t.integer  "blog_cat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogs", ["blog_cat_id"], name: "index_blogs_on_blog_cat_id", using: :btree
  add_index "blogs", ["blog_template_id"], name: "index_blogs_on_blog_template_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "user_name"
    t.string   "email"
    t.text     "comment"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["blog_id"], name: "index_comments_on_blog_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
