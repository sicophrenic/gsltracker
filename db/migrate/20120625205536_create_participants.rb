class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :player_id
      t.integer :round_id

      t.timestamps
    end
  end
end
