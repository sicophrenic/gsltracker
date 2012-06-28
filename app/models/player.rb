class Player < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, :presence => true
  
  has_many :registrations
  has_many :tournaments, :through => :registrations
  has_many :participants
  has_many :rounds, :through => :participants, :source => :advances, :source_type => 'Round'
  has_many :groups, :through => :participants, :source => :advances, :source_type => 'Group'
  has_many :matches, :through => :participants, :source => :advances, :source_type => 'Match'
  has_many :game_participants
  has_many :games, :through => :game_participants
end
