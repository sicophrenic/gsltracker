class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :map_id
      t.integer :player_id

      t.timestamps
    end
  end
end
