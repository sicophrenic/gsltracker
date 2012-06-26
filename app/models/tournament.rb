class Tournament < ActiveRecord::Base
  attr_accessible :season, :type, :year, :banner
  
  validates :year, :presence => true
  validates :league, :presence => true, :inclusion => { :in => %q[GSL GSTL] }
  validates :season, :presence => true
  validates :banner, :presence => true
  
  has_one :mappool
  has_many :rounds, :limit => 5
end
