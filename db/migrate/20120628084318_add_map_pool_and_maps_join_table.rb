class AddMapPoolAndMapsJoinTable < ActiveRecord::Migration
  def change
    create_table :map_pools_maps do |t|
      t.integer :map_pool_id
      t.integer :map_id
    end
  end
end
