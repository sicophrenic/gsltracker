class CreateMapAssignments < ActiveRecord::Migration
  def change
    create_table :map_assignments do |t|
      t.integer :game_id
      t.integer :map_id

      t.timestamps
    end
  end
end
