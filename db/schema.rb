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

ActiveRecord::Schema.define(version: 2018_12_25_075340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "creator_id", null: false
    t.bigint "page_id", null: false
    t.bigint "question_id", null: false
    t.integer "rating", limit: 2, null: false
    t.text "quote", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_answers_on_creator_id"
    t.index ["page_id"], name: "index_answers_on_page_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["updated_at"], name: "index_answers_on_updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.bigint "creator_id", null: false
    t.bigint "parent_page_id"
    t.string "name", null: false
    t.string "url", null: false
    t.text "html", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_pages_on_creator_id"
    t.index ["name"], name: "index_pages_on_name"
    t.index ["parent_page_id", "name"], name: "index_pages_on_parent_page_id_and_name", unique: true
    t.index ["parent_page_id"], name: "index_pages_on_parent_page_id"
    t.index ["updated_at"], name: "index_pages_on_updated_at"
    t.index ["url"], name: "index_pages_on_url"
  end

  create_table "previous_passwords", force: :cascade do |t|
    t.string "salt"
    t.string "encrypted_password"
    t.bigint "user_id", null: false
    t.index ["encrypted_password"], name: "index_previous_passwords_on_encrypted_password"
    t.index ["salt"], name: "index_previous_passwords_on_salt"
    t.index ["user_id"], name: "index_previous_passwords_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "value", null: false
    t.integer "position", limit: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position"], name: "index_questions_on_position"
    t.index ["updated_at"], name: "index_questions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer "role", limit: 2, default: 0, null: false
    t.text "private_notes", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role"], name: "index_users_on_role"
    t.index ["updated_at"], name: "index_users_on_updated_at"
  end

  add_foreign_key "answers", "pages"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users", column: "creator_id"
  add_foreign_key "pages", "pages", column: "parent_page_id"
  add_foreign_key "pages", "users", column: "creator_id"
  add_foreign_key "previous_passwords", "users"
end
