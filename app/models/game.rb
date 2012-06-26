class Game < ActiveRecord::Base
  belongs_to :match
  
  has_one :map
  has_one :player
end
