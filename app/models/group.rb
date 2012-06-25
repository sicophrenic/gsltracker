class Group < ActiveRecord::Base
  attr_accessible :match_id

  belongs_to :round

  has_many :matches, :limit => 5
end
