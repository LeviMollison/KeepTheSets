# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170508005257) do

  create_table "abilities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",         limit: 25
    t.string   "description"
    t.string   "type"
    t.integer  "character_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["character_id"], name: "index_abilities_on_character_id", using: :btree
  end

  create_table "base_stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal  "health_regen",       precision: 6,  scale: 2
    t.decimal  "mana_regen",         precision: 6,  scale: 2
    t.decimal  "armor_pen",          precision: 6,  scale: 2
    t.decimal  "magic_pen",          precision: 6,  scale: 2
    t.decimal  "life_steal",         precision: 6,  scale: 2
    t.decimal  "spell_vamp",         precision: 6,  scale: 2
    t.decimal  "attack_range",       precision: 10
    t.decimal  "tenacity",           precision: 6,  scale: 2
    t.decimal  "damage",             precision: 6,  scale: 2
    t.decimal  "ability_power",      precision: 6,  scale: 2
    t.decimal  "armor",              precision: 6,  scale: 2
    t.decimal  "magic_resist",       precision: 6,  scale: 2
    t.decimal  "attack_speed",       precision: 6,  scale: 2
    t.decimal  "cooldown_reduction", precision: 6,  scale: 2
    t.decimal  "critical_strike",    precision: 6,  scale: 2
    t.decimal  "movement_speed",     precision: 6,  scale: 2
    t.decimal  "health",             precision: 6,  scale: 2
    t.decimal  "mana",               precision: 6,  scale: 2
    t.integer  "character_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.index ["character_id"], name: "index_base_stats_on_character_id", using: :btree
  end

  create_table "base_stats_skill_information_per_levels", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "base_stats_id"
    t.integer "skill_information_per_level_id"
  end

  create_table "characters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_interactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "base_stat_id"
    t.integer  "item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["base_stat_id", "item_id"], name: "index_item_interactions_on_base_stat_id_and_item_id", using: :btree
  end

  create_table "item_sets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",              limit: 25, null: false
    t.boolean  "special_condition"
    t.integer  "player_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["player_id"], name: "index_item_sets_on_player_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",                                        null: false
    t.decimal  "health",             precision: 6,  scale: 2
    t.decimal  "magic_resist",       precision: 6,  scale: 2
    t.decimal  "health_regen",       precision: 6,  scale: 2
    t.decimal  "armor",              precision: 6,  scale: 2
    t.decimal  "damage",             precision: 6,  scale: 2
    t.decimal  "crit_strike",        precision: 6,  scale: 2
    t.decimal  "attack_speed",       precision: 6,  scale: 2
    t.decimal  "life_steal",         precision: 6,  scale: 2
    t.decimal  "spell_vamp",         precision: 6,  scale: 2
    t.decimal  "ability_power",      precision: 6,  scale: 2
    t.decimal  "cooldown_reduction", precision: 6,  scale: 2
    t.decimal  "mana",               precision: 6,  scale: 2
    t.decimal  "mana_regen",         precision: 6,  scale: 2
    t.decimal  "movement_speed",     precision: 6,  scale: 2
    t.decimal  "armor_pen",          precision: 6,  scale: 2
    t.decimal  "magic_pen",          precision: 6,  scale: 2
    t.decimal  "tenacity",           precision: 6,  scale: 2
    t.boolean  "isConsumable"
    t.string   "description"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.decimal  "cost",               precision: 10
  end

  create_table "make_modifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "base_stat_id"
    t.integer  "skill_info_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["base_stat_id", "skill_info_id"], name: "index_make_modifications_on_base_stat_id_and_skill_info_id", using: :btree
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "username",        limit: 20
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "password_digest"
    t.index ["username"], name: "index_players_on_username", using: :btree
  end

  create_table "rows", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "item_set_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.index ["item_set_id"], name: "index_rows_on_item_set_id", using: :btree
  end

  create_table "set_creations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "item_set_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["item_set_id", "character_id"], name: "index_set_creations_on_item_set_id_and_character_id", using: :btree
  end

  create_table "skill_info", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "level"
    t.string   "part",                       limit: 10
    t.decimal  "max_base_number",                       precision: 10
    t.decimal  "min_base_number",                       precision: 10
    t.string   "duration",                   limit: 25
    t.decimal  "health_regen_scaling",                  precision: 6,  scale: 2
    t.decimal  "mana_regen_scaling",                    precision: 6,  scale: 2
    t.decimal  "armor_pen_scaling",                     precision: 6,  scale: 2
    t.decimal  "magic_pen_scaling",                     precision: 6,  scale: 2
    t.decimal  "life_steal_scaling",                    precision: 6,  scale: 2
    t.decimal  "spell_vamp_scaling",                    precision: 6,  scale: 2
    t.decimal  "attack_range_scaling",                  precision: 10
    t.decimal  "tenacity_scaling",                      precision: 6,  scale: 2
    t.decimal  "damage_scaling",                        precision: 6,  scale: 2
    t.decimal  "ability_power_scaling",                 precision: 6,  scale: 2
    t.decimal  "armor_scaling",                         precision: 6,  scale: 2
    t.decimal  "magic_resist_scaling",                  precision: 6,  scale: 2
    t.decimal  "attack_speed_scaling",                  precision: 6,  scale: 2
    t.decimal  "cooldown_reduction_scaling",            precision: 6,  scale: 2
    t.decimal  "critical_strike_scaling",               precision: 6,  scale: 2
    t.decimal  "movement_speed_scaling",                precision: 6,  scale: 2
    t.decimal  "health_scaling",                        precision: 6,  scale: 2
    t.decimal  "mana_scaling",                          precision: 6,  scale: 2
    t.integer  "ability_id"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.index ["ability_id"], name: "index_skill_info_on_ability_id", using: :btree
  end

  create_table "stat_per_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal  "health_regen",       precision: 6,  scale: 2
    t.decimal  "mana_regen",         precision: 6,  scale: 2
    t.decimal  "armor_pen",          precision: 6,  scale: 2
    t.decimal  "magic_pen",          precision: 6,  scale: 2
    t.decimal  "life_steal",         precision: 6,  scale: 2
    t.decimal  "spell_vamp",         precision: 6,  scale: 2
    t.decimal  "attack_range",       precision: 10
    t.decimal  "tenacity",           precision: 6,  scale: 2
    t.decimal  "damage",             precision: 6,  scale: 2
    t.decimal  "ability_power",      precision: 6,  scale: 2
    t.decimal  "armor",              precision: 6,  scale: 2
    t.decimal  "magic_resist",       precision: 6,  scale: 2
    t.decimal  "attack_speed",       precision: 6,  scale: 2
    t.decimal  "cooldown_reduction", precision: 6,  scale: 2
    t.decimal  "critical_strike",    precision: 6,  scale: 2
    t.decimal  "movement_speed",     precision: 6,  scale: 2
    t.decimal  "health",             precision: 6,  scale: 2
    t.decimal  "mana",               precision: 6,  scale: 2
    t.integer  "character_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.index ["character_id"], name: "index_stat_per_levels_on_character_id", using: :btree
  end

  create_table "store_ins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "item_id"
    t.integer  "row_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id", "row_id"], name: "index_store_ins_on_item_id_and_row_id", using: :btree
  end

end
