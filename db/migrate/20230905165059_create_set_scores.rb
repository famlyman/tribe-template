class CreateSetScores < ActiveRecord::Migration[7.0]
  def change
    create_table :set_scores do |t|
      t.references :player_score, null: false, foreign_key: true
      t.references :team_match, null: false, foreign_key: true
      t.integer :set_number
      t.integer :player1_games
      t.integer :player2_games

      t.timestamps
    end
  end
end
