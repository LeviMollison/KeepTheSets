class CreateRows < ActiveRecord::Migration[5.0]
  def up
    create_table :rows do |t|
        t.integer "item_set_id"
      t.timestamps
    end
    add_index('rows', 'item_set_id')
  end
  
  def down
      drop_table :rows
  end
  
end
