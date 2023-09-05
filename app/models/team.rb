class Team < ApplicationRecord
  has_many :memberships
  has_many :players, through: :memberships

  has_many :home_teams, class_name: 'Team', foreign_key: 'home_team_id'
  has_many :away_teams, class_name: 'Team', foreign_key: 'away_team_id'
  
  has_many :home_team_matches, class_name: 'TeamMatch', foreign_key: 'home_team_id'
  has_many :away_team_matches, class_name: 'TeamMatch', foreign_key: 'away_team_id'
end
