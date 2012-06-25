class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :type
      t.integer :group_id
      t.integer :match_id

      t.timestamps
    end
  end
end
