class Round < ActiveRecord::Base
  attr_accessible :type
  
  validates :type, :presence => true, :inclusion => { :in => %q[RO32 RO16 RO8 RO4 RO2] }
  
  belongs_to :tournament
  
  has_many :players
  has_many :players, :through => :participants
  has_many :groups, :limit => 8
  has_many :matches, :limit => 4
end
