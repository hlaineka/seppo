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

ActiveRecord::Schema[7.1].define(version: 2024_04_17_084419) do
  create_table "games", force: :cascade do |t|
    t.integer "instructors_id", null: false
    t.integer "players_id"
    t.string "name"
    t.text "description"
    t.integer "tasks_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instructors_id"], name: "index_games_on_instructors_id"
    t.index ["players_id"], name: "index_games_on_players_id"
    t.index ["tasks_id"], name: "index_games_on_tasks_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.integer "games_id"
    t.integer "tasks_id"
    t.integer "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_instructors_on_games_id"
    t.index ["tasks_id"], name: "index_instructors_on_tasks_id"
    t.index ["users_id"], name: "index_instructors_on_users_id"
  end

  create_table "multiple_choices", force: :cascade do |t|
    t.string "aswer"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "games_id"
    t.integer "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_players_on_games_id"
    t.index ["users_id"], name: "index_players_on_users_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "instructors_id", null: false
    t.string "name"
    t.text "description"
    t.text "feedback"
    t.integer "type", default: 0
    t.integer "multiple_choices_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instructors_id"], name: "index_tasks_on_instructors_id"
    t.index ["multiple_choices_id"], name: "index_tasks_on_multiple_choices_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "instructors_id"
    t.integer "players_id"
    t.integer "games_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_users_on_games_id"
    t.index ["instructors_id"], name: "index_users_on_instructors_id"
    t.index ["players_id"], name: "index_users_on_players_id"
  end

  add_foreign_key "games", "instructors", column: "instructors_id"
  add_foreign_key "games", "players", column: "players_id"
  add_foreign_key "games", "tasks", column: "tasks_id"
  add_foreign_key "instructors", "games", column: "games_id"
  add_foreign_key "instructors", "tasks", column: "tasks_id"
  add_foreign_key "instructors", "users", column: "users_id"
  add_foreign_key "players", "games", column: "games_id"
  add_foreign_key "players", "users", column: "users_id"
  add_foreign_key "tasks", "instructors", column: "instructors_id"
  add_foreign_key "tasks", "multiple_choices", column: "multiple_choices_id"
  add_foreign_key "users", "games", column: "games_id"
  add_foreign_key "users", "instructors", column: "instructors_id"
  add_foreign_key "users", "players", column: "players_id"
end
