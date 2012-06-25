class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.integer :year
      t.string :type
      t.integer :season
      t.string :banner
      
      t.integer :mappool_id
      t.integer :round_id

      t.timestamps
    end
  end
end
