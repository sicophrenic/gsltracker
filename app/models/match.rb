class Match < ActiveRecord::Base
  attr_accessible :game_id, :player_id
  
  belongs_to :group
  belongs_to :round
  
  has_many :players, :limit => 2
  has_many :games, :limit => 7
end
