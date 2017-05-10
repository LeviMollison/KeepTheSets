class BaseStat < ApplicationRecord
    belongs_to :character
    has_many :make_modifications
    has_many :item_interactions
    
    has_many :items, :through => :item_interactions
    has_many :skill_info, :through => :make_modifications
end
