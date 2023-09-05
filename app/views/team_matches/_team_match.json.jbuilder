json.extract! team_match, :id, :date, :home_team_id, :away_team_id, :created_at, :updated_at
json.url team_match_url(team_match, format: :json)
