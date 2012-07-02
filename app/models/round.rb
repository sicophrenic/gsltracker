class Round < ActiveRecord::Base
  attr_accessible :roundof
  
  validates :roundof, :presence => true, :inclusion => { :in => %q[RO32 RO16 RO8 RO4 RO2] }
  
  belongs_to :tournament
  
  has_many :players, :through => :participants
  has_many :participants, :as => :advances
  has_many :groups, :limit => 8
  has_many :matches, :limit => 4
end
