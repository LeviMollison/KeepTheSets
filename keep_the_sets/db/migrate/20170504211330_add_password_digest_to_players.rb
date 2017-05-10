class AddPasswordDigestToPlayers < ActiveRecord::Migration[5.0]
  def up
      add_column "players", "password_digest", :string
  end
  
  def down
      remove_column "players", "password_digest"
  end
end
