class Group < ActiveRecord::Base
  belongs_to :round

  has_many :players, :through => :participants
  has_many :participants, :as => :advances
  has_many :players, :through => :participants, :limit => 4
  has_many :matches, :limit => 5
end
