class Character < ApplicationRecord
    has_one :base_stat
    has_many :abilities
    has_many :stats_per_levels
    has_many :set_creations
    
    has_many :item_sets, :through => :set_creations
    
    scope :getByName, lambda {|name| where(:name => name)}
end
