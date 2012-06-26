class MapPool < ActiveRecord::Base  
  has_many :tournament
  has_many :maps
end
