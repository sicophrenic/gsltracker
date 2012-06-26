class CreateMapPools < ActiveRecord::Migration
  def change
    create_table :map_pools do |t|
      t.string :name

      t.timestamps
    end
  end
end
