class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :match_id

      t.timestamps
    end
  end
end
