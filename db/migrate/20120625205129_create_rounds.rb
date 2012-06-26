class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :roundof
      t.integer :tournament_id

      t.timestamps
    end
  end
end
