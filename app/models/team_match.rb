class TeamMatch < ApplicationRecord
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  has_many :player_scores

  validates_presence_of :date
end
