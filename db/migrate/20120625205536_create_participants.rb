class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :player_id
      t.references :advances, :polymorphic => true

      t.timestamps
    end
  end
end
