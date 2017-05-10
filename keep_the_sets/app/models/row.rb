class Row < ApplicationRecord
    has_many :store_ins
    belongs_to :item_set
    
    has_many :items, :through => :store_ins
end
