class Participant < ActiveRecord::Base
  attr_accessible :player_id, :round_id
  
  validates :player_id, :presence => true
  validates :round_id, :presence => true
  
  belongs_to :player
  belongs_to :round
end
