TOURNAMENT
  :league
  :banner
  has_one :map_pool
  has_many :maps, :through => :map_pool
  has_and_belongs_to_many :players
  # has_many :rounds
  has_one :ro32
  has_one :ro16
  has_one :ro8
  has_one :ro4
  has_one :ro2
  
MAP_POOL
  belongs_to :tournament
  has_many :maps
  
MAP
  :name
  belongs_to :map_pool
  has_many :games

PLAYER
  :name
  belongs_to :race
  belongs_to :team
  has_and_belongs_to_many :tournaments
  has_many :games
  
RACE
  :type {"Protoss", "Terran", "Zerg"}
  has_many :players

TEAM
  :name
  has_many :players
  
RO32
  belongs_to :tournament
  has_many :groups, :as => :round,
                    :limit => 8

RO16
  belongs_to :tournament
  has_many :groups, :as => :round,
                    :limit => 4

RO8
  belongs_to :tournament
  has_many :matches, :as => :matchup,
                      :limit => 4

RO4
  belongs_to :tournament
  has_many :matches, :as => :matchup,
                      :limit => 2

RO2
  belongs_to :tournament
  has_many :matches, :as => :matchup,
                      :limit => 1

GROUP
  :name
  belongs_to :round, :polymorphic => true
  has_many :matchups, :as => :matchup
  
MATCH
  :type {"bo3", "bo5", "bo7"}
  has_many :games
  belongs_to :matchup, :polymorphic => true

GAME
  belongs_to :match
  has_one :map
  has_one :player

# G_ROUND
#   :type {"ro32", "ro16"}
#   has_many :groups, :limit => 8/4/0
# 
# T_ROUND
#   :type {"ro8", "ro4", "ro2"}
#   has_many :matches, :limit => 4/2/1/0