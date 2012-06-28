class MapAssignment < ActiveRecord::Base
  belongs_to :game
  belongs_to :map
end
