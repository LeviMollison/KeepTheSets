class Ability < ApplicationRecord
    has_many :skill_info
    belongs_to :character
end
