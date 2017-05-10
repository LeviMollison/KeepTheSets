class CreateItems < ActiveRecord::Migration[5.0]
  def up
    create_table :items do |t|
        t.string "name", :null => false
        t.decimal "health"
        t.decimal "magic_resist"
        t.decimal "health_regen"
        t.decimal "armor"
        t.decimal "damage"
        t.decimal "crit_strike"
        t.decimal "attack_speed"
        t.decimal "life_steal"
        t.decimal "spell_vamp"
        t.decimal "ability_power"
        t.decimal "cooldown_reduction"
        t.decimal "mana"
        t.decimal "mana_regen"
        t.decimal "movement_speed"
        t.decimal "armor_pen"
        t.decimal "magic_pen"
        t.decimal "tenacity"
        t.boolean "isConsumable"
        t.string "description"
        
      t.timestamps
    end
  end
  
  def down
      drop_table :items
  end
  
end
