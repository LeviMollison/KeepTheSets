 class CreateItemSets < ActiveRecord::Migration[5.0]
  def up
    create_table :item_sets do |t|
        t.string "name", :limit => 25, :null => false
        t.boolean "special_condition"
        t.integer "player_id"
        t.timestamps
    end
    add_index('item_sets', 'player_id')
  end
  
  def down
      drop_table :item_sets
  end
end
