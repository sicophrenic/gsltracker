class Participant < ActiveRecord::Base  
  belongs_to :player
  belongs_to :advances, :polymorphic => true
end
