class GameParticipant < ActiveRecord::Base
  attr_accessible :race, :team
  
  belongs_to :player
  belongs_to :game
end
