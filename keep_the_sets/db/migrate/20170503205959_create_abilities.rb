class CreateAbilities < ActiveRecord::Migration[5.0]
  def up
    create_table :abilities do |t|
        t.string "name", :limit => 25
        t.string "description"
        t.string "type"
        t.integer "character_id"
      t.timestamps
    end
    add_index('abilities', 'character_id')
  end
  
  def down
      drop_table :abilities
  end
end
