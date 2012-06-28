class CreateGameParticipants < ActiveRecord::Migration
  def change
    create_table :game_participants do |t|
      t.integer :player_id
      t.integer :game_id
      t.string :race
      t.string :team

      t.timestamps
    end
  end
end
