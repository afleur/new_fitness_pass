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

ActiveRecord::Schema.define(version: 2019_03_05_134527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "start_time"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_activities_on_course_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_bookings_on_activity_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "coach"
    t.string "city"
    t.integer "likes"
    t.integer "kcal"
    t.integer "duration"
    t.integer "credits_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "studio"
    t.string "photo"
    t.string "street"
    t.integer "npa"
    t.float "latitude"
    t.float "longitude"
    t.string "infos"
  end

  create_table "credits", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "user_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_id"
    t.index ["course_id"], name: "index_credits_on_course_id"
    t.index ["order_id"], name: "index_credits_on_order_id"
    t.index ["user_id"], name: "index_credits_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "friends_email"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_invitations_on_booking_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "state"
    t.jsonb "payment"
    t.integer "amount_cents", default: 0, null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_reviews_on_course_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.integer "NPA"
    t.string "city"
    t.date "birth_date"
    t.integer "credits_amount"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "courses"
  add_foreign_key "bookings", "activities"
  add_foreign_key "bookings", "users"
  add_foreign_key "credits", "orders"
  add_foreign_key "invitations", "bookings"
  add_foreign_key "invitations", "users"
  add_foreign_key "reviews", "courses"
  add_foreign_key "reviews", "users"
end
