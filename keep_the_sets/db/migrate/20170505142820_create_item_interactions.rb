class CreateItemInteractions < ActiveRecord::Migration[5.0]
  def up
    create_table :item_interactions do |t|
        t.integer "base_stat_id"
        t.integer "item_id"
      t.timestamps
    end
    add_index('item_interactions', ['base_stat_id', "item_id"])
  end
  def down
      drop_table :item_interactions
  end
end
