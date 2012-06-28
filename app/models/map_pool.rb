class MapPool < ActiveRecord::Base  
  has_many :tournaments # Map_Pools can be reused for separate tournaments
  has_and_belongs_to_many :maps
end
