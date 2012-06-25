class Game < ActiveRecord::Base
  attr_accessible :map_id, :player_id
  
  validates :map_id, :presence => true
  validates :player_id, :presence => true
  
  belongs_to :match
  
  has_one :map
  has_one :player
end
