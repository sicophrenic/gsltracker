class Game < ActiveRecord::Base  
  belongs_to :match
  
  has_one :map_assignment
  has_one :map, :through => :map_assignment
  has_one :player, :through => :participant
  has_one :participant, :as => :advances
end
