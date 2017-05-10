class AddScaleToDecimals < ActiveRecord::Migration[5.0]
  def change
      change_column :items, :health, :decimal, :precision => 6, :scale => 2
      change_column :items, :magic_resist, :decimal, :precision => 6, :scale => 2
      change_column :items, :health_regen, :decimal, :precision => 6, :scale => 2
      change_column :items, :armor, :decimal, :precision => 6, :scale => 2
      change_column :items, :damage, :decimal, :precision => 6, :scale => 2
      change_column :items, :crit_strike, :decimal, :precision => 6, :scale => 2
      change_column :items, :attack_speed, :decimal, :precision => 6, :scale => 2
      change_column :items, :life_steal, :decimal, :precision => 6, :scale => 2
      change_column :items, :spell_vamp, :decimal, :precision => 6, :scale => 2
      change_column :items, :ability_power, :decimal, :precision => 6, :scale => 2
      change_column :items, :cooldown_reduction, :decimal, :precision => 6, :scale => 2
      change_column :items, :mana, :decimal, :precision => 6, :scale => 2
      change_column :items, :mana_regen, :decimal, :precision => 6, :scale => 2
      change_column :items, :movement_speed, :decimal, :precision => 6, :scale => 2
      change_column :items, :armor_pen, :decimal, :precision => 6, :scale => 2
      change_column :items, :magic_pen, :decimal, :precision => 6, :scale => 2
      change_column :items, :tenacity, :decimal, :precision => 6, :scale => 2
      
      change_column :base_stats, :health, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :magic_resist, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :health_regen, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :armor, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :damage, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :critical_strike, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :attack_speed, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :life_steal, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :spell_vamp, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :ability_power, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :cooldown_reduction, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :mana, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :mana_regen, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :movement_speed, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :armor_pen, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :magic_pen, :decimal, :precision => 6, :scale => 2
      change_column :base_stats, :tenacity, :decimal, :precision => 6, :scale => 2
      
      change_column :stat_per_levels, :health, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :magic_resist, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :health_regen, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :armor, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :damage, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :critical_strike, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :attack_speed, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :life_steal, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :spell_vamp, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :ability_power, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :cooldown_reduction, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :mana, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :mana_regen, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :movement_speed, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :armor_pen, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :magic_pen, :decimal, :precision => 6, :scale => 2
      change_column :stat_per_levels, :tenacity, :decimal, :precision => 6, :scale => 2
      
      change_column :skill_info, :health_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :magic_resist_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :health_regen_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :armor_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :damage_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :critical_strike_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :attack_speed_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :life_steal_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :spell_vamp_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :ability_power_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :cooldown_reduction_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :mana_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :mana_regen_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :movement_speed_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :armor_pen_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :magic_pen_scaling, :decimal, :precision => 6, :scale => 2
      change_column :skill_info, :tenacity_scaling, :decimal, :precision => 6, :scale => 2
  end
end
