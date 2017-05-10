class Player < ApplicationRecord
    has_many :item_sets
    has_secure_password
end
