class ItemSet < ApplicationRecord
    has_many :rows
    belongs_to :player
    has_many :set_creations
    
    has_many :characters, :through => :set_creations
end
