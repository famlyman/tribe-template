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

ActiveRecord::Schema[7.0].define(version: 2023_09_05_165059) do
  create_table "memberships", force: :cascade do |t|
    t.integer "players_id", null: false
    t.integer "teams_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["players_id"], name: "index_memberships_on_players_id"
    t.index ["teams_id"], name: "index_memberships_on_teams_id"
  end

  create_table "player_scores", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "team_match_id", null: false
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_scores_on_player_id"
    t.index ["team_match_id"], name: "index_player_scores_on_team_match_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_players_on_email", unique: true
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true
  end

  create_table "set_scores", force: :cascade do |t|
    t.integer "player_score_id", null: false
    t.integer "team_match_id", null: false
    t.integer "set_number"
    t.integer "player1_games"
    t.integer "player2_games"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_score_id"], name: "index_set_scores_on_player_score_id"
    t.index ["team_match_id"], name: "index_set_scores_on_team_match_id"
  end

  create_table "team_matches", force: :cascade do |t|
    t.date "date"
    t.integer "home_team_id", null: false
    t.integer "away_team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_team_matches_on_away_team_id"
    t.index ["home_team_id"], name: "index_team_matches_on_home_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "facility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "memberships", "players", column: "players_id"
  add_foreign_key "memberships", "teams", column: "teams_id"
  add_foreign_key "player_scores", "players"
  add_foreign_key "player_scores", "team_matches"
  add_foreign_key "set_scores", "player_scores"
  add_foreign_key "set_scores", "team_matches"
  add_foreign_key "team_matches", "away_teams"
  add_foreign_key "team_matches", "home_teams"
end
