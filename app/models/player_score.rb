class PlayerScore < ApplicationRecord
  belongs_to :player
  belongs_to :team_match

  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
