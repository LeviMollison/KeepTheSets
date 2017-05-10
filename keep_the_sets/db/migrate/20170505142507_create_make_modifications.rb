class CreateMakeModifications < ActiveRecord::Migration[5.0]
  def up
    create_table :make_modifications do |t|
        t.integer "base_stat_id"
        t.integer "skill_info_id"
      t.timestamps
    end
    add_index('make_modifications', ['base_stat_id', 'skill_info_id'])
  end
  def down
      drop_table :make_modifications
  end
end
