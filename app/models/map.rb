class Map < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, :presence => true
  
  belongs_to :mappool
end
