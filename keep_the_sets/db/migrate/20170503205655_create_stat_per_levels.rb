class CreateStatPerLevels < ActiveRecord::Migration[5.0]
  def up
    create_table :stat_per_levels do |t|
        t.decimal "health_regen"
        t.decimal "mana_regen"
        t.decimal "armor_pen"
        t.decimal "magic_pen"
        t.decimal "life_steal"
        t.decimal "spell_vamp"
        t.decimal "attack_range"
        t.decimal "tenacity"
        t.decimal "damage"
        t.decimal "ability_power"
        t.decimal "armor"
        t.decimal "magic_resist"
        t.decimal "attack_speed"
        t.decimal "cooldown_reduction"
        t.decimal "critical_strike"
        t.decimal "movement_speed"
        t.decimal "health"
        t.decimal "mana"
        t.integer "character_id"
      t.timestamps
    end
    add_index('stat_per_levels', 'character_id')
  end
  
  def down
      drop_table :stat_per_levels
  end
end
