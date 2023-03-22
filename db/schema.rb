# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_22_095721) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "friend_id", null: false
    t.integer "total_price"
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_bookings_on_friend_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "friends", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.integer "price"
    t.string "genre"
    t.string "address"
    t.boolean "activity_wedding"
    t.boolean "activity_sam"
    t.boolean "activity_diner"
    t.boolean "activity_birthday"
    t.boolean "activity_bowling"
    t.boolean "activity_hike"
    t.boolean "activity_movie"
    t.boolean "activity_picnic"
    t.boolean "activity_concert"
    t.boolean "activity_karaoke"
    t.boolean "activity_shopping"
    t.boolean "activity_sport"
    t.boolean "activity_barbecue"
    t.boolean "activity_camping"
    t.boolean "activity_paintball"
    t.boolean "default_complotist"
    t.boolean "default_impatient"
    t.boolean "default_disorganized"
    t.boolean "default_cheap"
    t.boolean "default_arrogant"
    t.boolean "quality_funny"
    t.boolean "quality_reliable"
    t.boolean "quality_honest"
    t.boolean "quality_good_looking"
    t.boolean "quality_brave"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.text "description"
    t.index ["user_id"], name: "index_friends_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "review_content"
    t.string "review_rating"
    t.bigint "user_id", null: false
    t.bigint "booking_id", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
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
    t.string "pseudo"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "friends"
  add_foreign_key "bookings", "users"
  add_foreign_key "friends", "users"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "users"
end
