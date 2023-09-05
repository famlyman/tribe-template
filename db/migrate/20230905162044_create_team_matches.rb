class CreateTeamMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :team_matches do |t|
      t.date :date
      t.references :home_team, null: false, foreign_key: true
      t.references :away_team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
