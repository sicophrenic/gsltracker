class Tournament < ActiveRecord::Base
  attr_accessible :season, :type, :year, :banner
  
  validates :year, :presence => true
  validates :league, :presence => true, :inclusion => { :in => %q[GSL GSTL] }
  validates :season, :presence => true
  validates :banner, :presence => true
  
  belongs_to :map_pool
  
  has_many :rounds, :limit => 5
  has_many :registrations
  has_many :players, :through => :registrations
end
