class CreatePlayerScores < ActiveRecord::Migration[7.0]
  def change
    create_table :player_scores do |t|
      t.references :player, null: false, foreign_key: true
      t.references :team_match, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
