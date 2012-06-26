class Mappool < ActiveRecord::Base  
  belongs_to :tournament
  has_many :maps
end
