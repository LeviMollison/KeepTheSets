class CreateStoreIns < ActiveRecord::Migration[5.0]
  def up
    create_table :store_ins do |t|
        t.integer 'item_id'
        t.integer 'row_id'
      t.timestamps
    end
    add_index('store_ins', ['item_id', 'row_id'])
  end
  def down
      drop_table :store_ins
  end
end
