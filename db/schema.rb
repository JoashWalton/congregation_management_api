# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_12_035854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_informations", force: :cascade do |t|
    t.string "mailing_address"
    t.string "apartment"
    t.string "mailing_city"
    t.string "mailing_state"
    t.string "mailing_zip_code"
    t.string "country"
    t.string "home_phone_number"
    t.string "mobile_phone_number"
    t.string "personal_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "theocratic_email"
    t.string "post_office_box_number"
    t.string "post_office_box_city"
    t.string "post_office_box_state"
    t.string "post_office_box_zip_code"
    t.bigint "publisher_id", null: false
    t.index ["publisher_id"], name: "index_contact_informations_on_publisher_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.boolean "baptized"
    t.date "baptism_date"
    t.boolean "other_sheep"
    t.boolean "anointed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "soul_id", null: false
    t.index ["soul_id"], name: "index_publishers_on_soul_id"
  end

  create_table "souls", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "unique_identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gender"
    t.date "baptism_date"
    t.date "death_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contact_informations", "publishers"
  add_foreign_key "publishers", "souls"
end
