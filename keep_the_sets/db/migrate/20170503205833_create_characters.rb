class CreateCharacters < ActiveRecord::Migration[5.0]
  def up
    create_table :characters do |t|
        t.string "name"
      t.timestamps
    end
  end
  
  def down
      drop_table :characters
  end
end
