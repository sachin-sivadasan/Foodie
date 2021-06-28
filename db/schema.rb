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

ActiveRecord::Schema.define(version: 2021_06_14_094338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blorgh_articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "author_id"
    t.integer "house_id"
  end

  create_table "blorgh_comments", force: :cascade do |t|
    t.integer "article_id"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hengine_houses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tik_appointments", force: :cascade do |t|
    t.text "app_name"
    t.bigint "patient_id", null: false
    t.bigint "physician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_tik_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_tik_appointments_on_physician_id"
  end

  create_table "tik_authors", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tik_books", force: :cascade do |t|
    t.text "book_name"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_tik_books_on_author_id"
  end

  create_table "tik_children", force: :cascade do |t|
    t.text "c_name"
    t.bigint "parent_id"
    t.bigint "school_id"
    t.string "entity_type"
    t.bigint "entity_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_type", "entity_id"], name: "index_tik_children_on_entity"
    t.index ["parent_id"], name: "index_tik_children_on_parent_id"
    t.index ["school_id"], name: "index_tik_children_on_school_id"
  end

  create_table "tik_employees", force: :cascade do |t|
    t.text "e_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tik_parents", force: :cascade do |t|
    t.text "p_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tik_patients", force: :cascade do |t|
    t.text "pat_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tik_physicians", force: :cascade do |t|
    t.text "phy_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tik_pictures", force: :cascade do |t|
    t.text "p_name"
    t.string "imageable_type", null: false
    t.bigint "imageable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["imageable_type", "imageable_id"], name: "index_tik_pictures_on_imageable"
  end

  create_table "tik_products", force: :cascade do |t|
    t.text "p_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tik_ticket_mappings", force: :cascade do |t|
    t.text "association_type", null: false
    t.boolean "active", default: true, null: false
    t.bigint "ticket_id", null: false
    t.string "entity_type", null: false
    t.bigint "entity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["active"], name: "index_tik_ticket_mappings_on_active"
    t.index ["association_type"], name: "index_tik_ticket_mappings_on_association_type"
    t.index ["entity_type", "entity_id"], name: "index_tik_ticket_mappings_on_entity"
    t.index ["ticket_id"], name: "index_tik_ticket_mappings_on_ticket_id"
  end

  create_table "tik_tickets", force: :cascade do |t|
    t.text "ticket_no", null: false
    t.text "ticket_type", null: false
    t.text "description"
    t.string "status", default: "New"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["status"], name: "index_tik_tickets_on_status"
    t.index ["ticket_no"], name: "index_tik_tickets_on_ticket_no"
    t.index ["ticket_type"], name: "index_tik_tickets_on_ticket_type"
  end

  create_table "tik_users", force: :cascade do |t|
    t.text "u_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "tik_children", "tik_children", column: "school_id"
end
