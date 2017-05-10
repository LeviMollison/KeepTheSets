class MakeModification < ApplicationRecord
    belongs_to :base_stat
    belongs_to :skill_info
end
