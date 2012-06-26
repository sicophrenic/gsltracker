class Group < ActiveRecord::Base
  belongs_to :round

  has_many :matches, :limit => 5
end
