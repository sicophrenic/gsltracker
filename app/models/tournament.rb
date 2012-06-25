class Tournament < ActiveRecord::Base
  attr_accessible :season, :type, :year, :banner, :mappool_id
  
  validates :season, :presence => true
  validates :type, :presence => true, :inclusion => { :in => %q[GSL GSTL] }
  validates :year, :presence => true
  
  has_one :mappool
  has_many :rounds, :limit => 5
end
