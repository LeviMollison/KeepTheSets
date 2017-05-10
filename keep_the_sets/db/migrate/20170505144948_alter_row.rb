class AlterRow < ActiveRecord::Migration[5.0]
  def up
      add_column('rows', 'name', :string)
  end
  
  def down
      remove_column('rows', 'name')
  end
end
