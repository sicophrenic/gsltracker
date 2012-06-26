class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :player_id
      t.integer :match_id
      t.string :race
      t.string :team

      t.timestamps
    end
  end
end
