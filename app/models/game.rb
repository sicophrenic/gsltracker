class Game < ActiveRecord::Base  
  belongs_to :match
  
  has_one :map_assignment
  has_one :map, :through => :map_assignment
  has_one :game_participant
  has_one :player, :through => :game_participant
end
