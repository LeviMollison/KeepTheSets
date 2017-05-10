class CreatePlayers < ActiveRecord::Migration[5.0]
  def up
    create_table :players do |t|
        t.string "username", :limit=>20
      t.timestamps
    end
    add_index("players", ["username"])
  end
  
  def down
      drop_table :players
  end
end
