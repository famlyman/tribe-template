class SetScore < ApplicationRecord
  belongs_to :player_score
  belongs_to :team_match

  validates :set_number, presence: true
  validates :player1_games, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :player2_games, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
