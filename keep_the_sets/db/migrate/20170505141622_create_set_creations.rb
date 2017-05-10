class CreateSetCreations < ActiveRecord::Migration[5.0]
  def up
    create_table :set_creations do |t|
        t.integer "item_set_id"
        t.integer "character_id"
      t.timestamps
    end
    add_index('set_creations', ['item_set_id', 'character_id'])
  end
  
  def down
      drop_table :set_creations
  end
end
