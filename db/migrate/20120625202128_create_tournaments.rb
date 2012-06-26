class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.integer :year
      t.string :league
      t.integer :season
      t.string :banner

      t.timestamps
    end
  end
end
