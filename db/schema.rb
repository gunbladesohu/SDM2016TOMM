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

ActiveRecord::Schema.define(version: 20160927073302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "author_name"
    t.string   "author_gender"
    t.text     "title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "username"
    t.datetime "submitted_date"
    t.string   "paper_status"
    t.integer  "moderated_id"
    t.datetime "moderated_date"
    t.integer  "analysed_id"
    t.datetime "analysed_date"
    t.string   "authors"
    t.text     "title"
    t.text     "journal"
    t.integer  "publish_year"
    t.integer  "publish_volume"
    t.integer  "publish_pages"
    t.string   "publish_month"
    t.string   "credibility_rate"
    t.string   "research_metrix"
    t.text     "research_aim"
    t.string   "research_method"
    t.string   "participant"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "evidence_methods", force: :cascade do |t|
    t.integer  "evidence_id"
    t.integer  "method_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "evidences", force: :cascade do |t|
    t.string   "evidence_result"
    t.integer  "paper_id"
    t.text     "context"
    t.integer  "confidence_rate"
    t.string   "method_implementation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "methodologies", force: :cascade do |t|
    t.string   "methodology_name"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "paper_authors", force: :cascade do |t|
    t.integer  "paper_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "papers", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "submitted_date"
    t.string   "paper_status"
    t.integer  "moderator_id"
    t.datetime "moderated_time"
    t.integer  "analyst_id"
    t.datetime "analysed_time"
    t.string   "authors"
    t.string   "title"
    t.string   "journal"
    t.integer  "publish_year"
    t.integer  "publish_volume"
    t.integer  "publish_pages"
    t.text     "publish_month"
    t.string   "credibility_rate"
    t.string   "research_metrix"
    t.text     "research_aim"
    t.boolean  "research_method_field1"
    t.boolean  "research_method_field2"
    t.boolean  "research_method_field3"
    t.boolean  "research_method_field4"
    t.boolean  "participant1"
    t.boolean  "participant2"
    t.boolean  "participant3"
    t.boolean  "participant4"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "se_methods", force: :cascade do |t|
    t.integer  "methodology_id"
    t.string   "method_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sousuo1s", force: :cascade do |t|
    t.string   "title"
    t.string   "research_method"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "min_year"
    t.integer  "max_year"
    t.string   "authors"
    t.string   "journal"
    t.string   "participant"
    t.integer  "rate"
    t.integer  "min_rate"
    t.integer  "max_rate"
    t.boolean  "notincludemethod"
    t.boolean  "notinludeparticipant"
    t.boolean  "notincludeparticipant"
    t.string   "selectfield"
    t.string   "selectoperator"
    t.string   "selecttext"
  end

  create_table "uselesstables", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_role"
    t.string   "user_status"
    t.string   "user_name"
    t.string   "user_password_hash"
    t.text     "user_fullname"
    t.text     "user_email"
    t.string   "user_gender"
    t.integer  "user_age"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "evidence_methods", "evidences"
  add_foreign_key "evidence_methods", "se_methods", column: "method_id"
  add_foreign_key "paper_authors", "authors"
  add_foreign_key "paper_authors", "papers"
  add_foreign_key "papers", "users"
  add_foreign_key "se_methods", "methodologies"
end
