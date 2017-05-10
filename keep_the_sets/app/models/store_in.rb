class StoreIn < ApplicationRecord
    belongs_to :item
    belongs_to :row
    
    scope :getByItemRow, lambda {|parms| where("row_id = ? AND item_id = ?", parms[:row_id], parms[:item_id]) }
end
