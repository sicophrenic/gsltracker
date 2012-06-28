class Match < ActiveRecord::Base  
  belongs_to :group
  belongs_to :round
  
  has_many :players, :through => :participants, :limit => 2
  has_many :participants, :as => :advances
  has_many :games, :limit => 7
end
