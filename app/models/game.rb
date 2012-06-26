class Game < ActiveRecord::Base
  belongs_to :match
  
  has_one :map
  has_many :participants
  has_many :players, :through => :participants
end
