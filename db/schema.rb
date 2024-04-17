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
    t.integer "instructor_id_id", null: false
    t.integer "player_id_id"
    t.string "name"
    t.text "description"
    t.integer "tasks_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instructor_id_id"], name: "index_games_on_instructor_id_id"
    t.index ["player_id_id"], name: "index_games_on_player_id_id"
    t.index ["tasks_id"], name: "index_games_on_tasks_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.integer "game_id_id"
    t.integer "task_id_id"
    t.integer "user_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id_id"], name: "index_instructors_on_game_id_id"
    t.index ["task_id_id"], name: "index_instructors_on_task_id_id"
    t.index ["user_id_id"], name: "index_instructors_on_user_id_id"
  end

  create_table "multiple_choices", force: :cascade do |t|
    t.string "aswer"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "game_id_id"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id_id"], name: "index_players_on_game_id_id"
    t.index ["user_id_id"], name: "index_players_on_user_id_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "instructor_id_id", null: false
    t.integer "player_id_id"
    t.string "name"
    t.text "description"
    t.text "feedback"
    t.integer "tasks_id"
    t.integer "type", default: 0
    t.integer "multiple_choice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instructor_id_id"], name: "index_tasks_on_instructor_id_id"
    t.index ["multiple_choice_id"], name: "index_tasks_on_multiple_choice_id"
    t.index ["player_id_id"], name: "index_tasks_on_player_id_id"
    t.index ["tasks_id"], name: "index_tasks_on_tasks_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "instructor_id_id"
    t.integer "player_id_id"
    t.integer "game_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id_id"], name: "index_users_on_game_id_id"
    t.index ["instructor_id_id"], name: "index_users_on_instructor_id_id"
    t.index ["player_id_id"], name: "index_users_on_player_id_id"
  end

  add_foreign_key "games", "instructor_ids"
  add_foreign_key "games", "player_ids"
  add_foreign_key "games", "tasks", column: "tasks_id"
  add_foreign_key "instructors", "game_ids"
  add_foreign_key "instructors", "task_ids"
  add_foreign_key "instructors", "user_ids"
  add_foreign_key "players", "game_ids"
  add_foreign_key "players", "user_ids"
  add_foreign_key "tasks", "instructor_ids"
  add_foreign_key "tasks", "multiple_choices"
  add_foreign_key "tasks", "player_ids"
  add_foreign_key "tasks", "tasks", column: "tasks_id"
  add_foreign_key "users", "game_ids"
  add_foreign_key "users", "instructor_ids"
  add_foreign_key "users", "player_ids"
end
