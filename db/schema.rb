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

ActiveRecord::Schema.define(version: 20160930224536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analysts", force: :cascade do |t|
    t.string   "research_method"
    t.string   "reseach_participants"
    t.string   "benefit_from_test"
    t.string   "context"
    t.string   "result"
    t.string   "se_methodology"
    t.string   "se_method"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "paperposts", force: :cascade do |t|
    t.string   "username"
    t.string   "articlecategory"
    t.string   "author"
    t.string   "title"
    t.string   "journalname"
    t.string   "description"
    t.string   "publishername"
    t.integer  "pages"
    t.string   "volume"
    t.datetime "publish_date"
    t.datetime "submitted_date"
    t.string   "status_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "serlerusers", force: :cascade do |t|
  create_table "authors", force: :cascade do |t|
    t.string   "author_name"
    t.string   "author_gender"
    t.text     "title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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

  create_table "userentries", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end


  create_table "userserlers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_visitors_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_visitors_on_reset_password_token", unique: true, using: :btree
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
end
