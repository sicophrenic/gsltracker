class CreateMappools < ActiveRecord::Migration
  def change
    create_table :mappools do |t|
      t.integer :tournament_id

      t.timestamps
    end
  end
end
