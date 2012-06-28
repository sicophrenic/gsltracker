class Map < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, :presence => true
  
  has_and_belongs_to_many :map_pool
  has_many :map_assignments
  has_many :games, :through => :map_assignments
end
