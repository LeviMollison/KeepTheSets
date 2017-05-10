class AddColumnsToItems < ActiveRecord::Migration[5.0]
  def up
      add_column('items', 'cost', :decimal)
    #   add_column('items', '')
  end
  
  def down
      drop_column('items', 'cost')
  end
end
