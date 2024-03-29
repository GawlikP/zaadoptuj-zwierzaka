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

ActiveRecord::Schema.define(version: 2021_05_25_054133) do

  create_table "adoption_offerts", force: :cascade do |t|
    t.boolean "readed"
    t.string "context"
    t.integer "receiver_id", null: false
    t.integer "sender_id", null: false
    t.boolean "aproved"
    t.string "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "dog_id", null: false
    t.index ["dog_id"], name: "index_adoption_offerts_on_dog_id"
    t.index ["receiver_id"], name: "index_adoption_offerts_on_receiver_id"
    t.index ["sender_id"], name: "index_adoption_offerts_on_sender_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.datetime "birth_date"
    t.string "breed"
    t.text "description"
    t.boolean "gender"
    t.integer "vaccination"
    t.integer "size"
    t.decimal "weight"
    t.decimal "height"
    t.integer "apartment_size"
    t.integer "childrens"
    t.integer "time_to_spent"
    t.integer "owner_with_dogs"
    t.integer "animals"
    t.integer "noise"
    t.integer "energy"
    t.integer "disposition"
    t.text "localization"
    t.integer "coat"
    t.integer "drooling"
    t.integer "obedience"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "apartment"
    t.integer "garden"
    t.integer "age"
    t.integer "animal_experience"
    t.integer "time_to_spent"
    t.integer "finance"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "dog_id", null: false
    t.text "question"
    t.boolean "hiden"
    t.boolean "blocked"
    t.boolean "reported"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "answer"
    t.index ["dog_id"], name: "index_questions_on_dog_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
  end

  add_foreign_key "adoption_offerts", "dogs"
  add_foreign_key "dogs", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "questions", "dogs"
  add_foreign_key "questions", "users"
end
