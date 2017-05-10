class Item < ApplicationRecord
    has_many :item_interactions
    has_many :store_ins
    has_many :rows, :through => :store_ins
    has_many :base_stats, :through => :item_interactions
    
    scope :getItemByName, lambda {|name| where(:name => name )}
end
