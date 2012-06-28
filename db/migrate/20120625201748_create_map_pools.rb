class CreateMapPools < ActiveRecord::Migration
  def change
    create_table :map_pools do |t|

      t.timestamps
    end
  end
end
