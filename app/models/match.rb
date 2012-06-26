class Match < ActiveRecord::Base  
  belongs_to :group
  belongs_to :round
  
  has_many :participants
  has_many :players, :through => :participants, :limit => 2
  has_many :games, :limit => 7
end
