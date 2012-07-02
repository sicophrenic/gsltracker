class Registration < ActiveRecord::Base
	attr_accessible :race, :team
	
  belongs_to :player
  belongs_to :tournament
end
