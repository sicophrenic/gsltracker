class Participant < ActiveRecord::Base
  attr_accessible :race, :team
  
  validates :player_id, :presence => true
  validates :match_id, :presence => true
  validates :race, :presence => true
  validates :team, :presence => true
  
  belongs_to :player
  belongs_to :match
end
