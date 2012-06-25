class Mappool < ActiveRecord::Base
  attr_accessible :tournament_id
  
  validates :tournament_id, :presence => true
  
  belongs_to :tournament
end
