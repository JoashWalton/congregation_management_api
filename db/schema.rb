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

ActiveRecord::Schema.define(version: 2020_07_12_024137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "congregations", force: :cascade do |t|
    t.string "name"
    t.string "congregation_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

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

  create_table "field_service_groups", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kingdom_halls", force: :cascade do |t|
    t.string "address"
    t.integer "auditorium_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "public_speakers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "congregation_id"
    t.index ["congregation_id"], name: "index_public_speakers_with_congregation_id"
  end

  create_table "public_talks", force: :cascade do |t|
    t.integer "number"
    t.string "public_talk_title"
    t.string "public_talk_note"
    t.date "revision_date"
    t.string "file_pdf_url"
    t.string "file_doc_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.boolean "baptized"
    t.date "baptism_date"
    t.boolean "other_sheep"
    t.boolean "anointed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "soul_id", null: false
    t.boolean "unbaptized"
    t.date "unbaptized_date"
    t.boolean "enrolled_in_school"
    t.date "school_enrollment_date"
    t.integer "congregation_id"
    t.bigint "public_speaker_id"
    t.index ["congregation_id"], name: "index_congregation_id"
    t.index ["public_speaker_id"], name: "index_publishers_on_public_speaker_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "contact_informations", "publishers"
  add_foreign_key "publishers", "souls"
end
