class SkillInfo < ApplicationRecord
    belongs_to :ability
    has_many :make_modifications
    has_many :base_stats, :through => :make_modifications
end
