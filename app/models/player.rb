class Player < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, :presence => true
  
  belongs_to :game
  
  has_many :rounds
  has_many :rounds, :through => :participants
end
