json.extract! player_score, :id, :player_id, :team_match_id, :score, :created_at, :updated_at
json.url player_score_url(player_score, format: :json)
