class CreateSkillInfos < ActiveRecord::Migration[5.0]
  def up
    create_table :skill_info do |t|
        t.integer "level"
        t.string "part", :limit => 10
        t.decimal "max_base_number"
        t.decimal "min_base_number"
        t.string "duration", :limit => 25
        t.decimal "health_regen_scaling"
        t.decimal "mana_regen_scaling"
        t.decimal "armor_pen_scaling"
        t.decimal "magic_pen_scaling"
        t.decimal "life_steal_scaling"
        t.decimal "spell_vamp_scaling"
        t.decimal "attack_range_scaling"
        t.decimal "tenacity_scaling"
        t.decimal "damage_scaling"
        t.decimal "ability_power_scaling"
        t.decimal "armor_scaling"
        t.decimal "magic_resist_scaling"
        t.decimal "attack_speed_scaling"
        t.decimal "cooldown_reduction_scaling"
        t.decimal "critical_strike_scaling"
        t.decimal "movement_speed_scaling"
        t.decimal "health_scaling"
        t.decimal "mana_scaling"
        t.integer "ability_id"
      t.timestamps
    end
    add_index('skill_info', 'ability_id')
  end
  
  def down
      drop_table :skill_info
  end
end
