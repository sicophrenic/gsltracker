class Player < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, :presence => true
  
  has_many :participants
  has_many :matches, :through => :participants
end
