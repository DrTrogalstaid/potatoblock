# Configuration Options Scoreboards:
# NOTE: When a player has a score either of these values, then chose a island generation type

execute in minecraft:potato run forceload add 8 -1 -3 11 
say loadtest
# Initial Island genration
scoreboard objectives add skyblock.generate_init_island dummy
# NOTE: This is just inital code. I have no idea how this will effect mutiplayer.
execute unless score $generated skyblock.generate_init_island matches 1 run schedule function potatoblock:initial_island_multiplayer_buffer 2s

# Main Island Generation
# $seed_generation = 1
# $classic_generation = 2
scoreboard objectives add skyblock.main_island_generation dummy
scoreboard players set $seed_generation skyblock.main_island_generation 1
scoreboard players set $classic_generation skyblock.main_island_generation 2
execute unless score $player_choice skyblock.main_island_generation matches 1.. run scoreboard players set $player_choice skyblock.main_island_generation 1

scoreboard objectives add skyblock.main_island_biome dummy


# Outer Island Generation
# $seed_generation = 1
# $classic_generation = 2
scoreboard objectives add skyblock.outer_island_generation dummy
scoreboard players set $seed_generation skyblock.outer_island_generation 1
scoreboard players set $classic_generation skyblock.outer_island_generation 2
execute unless score $player_choice skyblock.outer_island_generation matches 1.. run scoreboard players set $player_choice skyblock.outer_island_generation 1


# End Portal
# $nether_fortress = 1 
# $stronghold = 2
scoreboard objectives add skyblock.end_portal_generation dummy
scoreboard players set $nether_fortress skyblock.end_portal_generation 1
scoreboard players set $stronghold skyblock.end_portal_generation 2
execute unless score $player_choice skyblock.end_portal_generation matches 1.. run scoreboard players set $player_choice skyblock.end_portal_generation 0

# Updating world
# $yes = 1
# $no = 2
scoreboard objectives add skyblock.new_world dummy
scoreboard players set $yes skyblock.new_world 1
scoreboard players set $no skyblock.new_world 2
execute unless score $player_choice skyblock.new_world matches 1.. run scoreboard players set $player_choice skyblock.new_world 1

# Config finish tracker
scoreboard objectives add skyblock.config_finished dummy
execute unless score $is_setup skyblock.config_finished matches 1 run scoreboard players set $is_setup skyblock.config_finished 0
scoreboard players set $warning_timer skyblock.config_finished 0

# Outer island checklist
# NOTE: This is here in order to keep it all in one file in stead of spread into multiple
scoreboard objectives add skyblock.outer_island_checklist dummy
execute unless score $badlands skyblock.outer_island_checklist matches 1 run scoreboard players set $badlands skyblock.outer_island_checklist 0
execute unless score $birch skyblock.outer_island_checklist matches 1 run scoreboard players set $birch skyblock.outer_island_checklist 0
execute unless score $cherry_grove skyblock.outer_island_checklist matches 1 run scoreboard players set $cherry_grove skyblock.outer_island_checklist 0
execute unless score $deep_frozen_ocean skyblock.outer_island_checklist matches 1 run scoreboard players set $deep_frozen_ocean skyblock.outer_island_checklist 0
execute unless score $desert skyblock.outer_island_checklist matches 1 run scoreboard players set $desert skyblock.outer_island_checklist 0
execute unless score $dripstone_cave skyblock.outer_island_checklist matches 1 run scoreboard players set $dripstone_cave skyblock.outer_island_checklist 0
execute unless score $flower_forest skyblock.outer_island_checklist matches 1 run scoreboard players set $flower_forest skyblock.outer_island_checklist 0
execute unless score $ice_spikes skyblock.outer_island_checklist matches 1 run scoreboard players set $ice_spikes skyblock.outer_island_checklist 0
execute unless score $jagged_peaks skyblock.outer_island_checklist matches 1 run scoreboard players set $jagged_peaks skyblock.outer_island_checklist 0
execute unless score $jungle skyblock.outer_island_checklist matches 1 run scoreboard players set $jungle skyblock.outer_island_checklist 0
execute unless score $lush_cave skyblock.outer_island_checklist matches 1 run scoreboard players set $lush_cave skyblock.outer_island_checklist 0
execute unless score $mangrove skyblock.outer_island_checklist matches 1 run scoreboard players set $mangrove skyblock.outer_island_checklist 0
execute unless score $mushroom_island skyblock.outer_island_checklist matches 1 run scoreboard players set $mushroom_island skyblock.outer_island_checklist 0
execute unless score $roofed_forest skyblock.outer_island_checklist matches 1 run scoreboard players set $roofed_forest skyblock.outer_island_checklist 0
execute unless score $savanna skyblock.outer_island_checklist matches 1 run scoreboard players set $savanna skyblock.outer_island_checklist 0
execute unless score $sunflower_forest skyblock.outer_island_checklist matches 1 run scoreboard players set $sunflower_forest skyblock.outer_island_checklist 0
execute unless score $taiga skyblock.outer_island_checklist matches 1 run scoreboard players set $taiga skyblock.outer_island_checklist 0
execute unless score $basalt_deltas skyblock.outer_island_checklist matches 1 run scoreboard players set $basalt_deltas skyblock.outer_island_checklist 0
execute unless score $crimson_forest skyblock.outer_island_checklist matches 1 run scoreboard players set $crimson_forest skyblock.outer_island_checklist 0
execute unless score $soul_sand_valley skyblock.outer_island_checklist matches 1 run scoreboard players set $soul_sand_valley skyblock.outer_island_checklist 0
execute unless score $warped_forest skyblock.outer_island_checklist matches 1 run scoreboard players set $warped_forest skyblock.outer_island_checklist 0

# Seed based outer island generation
scoreboard objectives add skyblock.outer_island_biome_distance_checker dummy
scoreboard players set $temp_distance skyblock.outer_island_biome_distance_checker 9999999

# Render Distance Detection (in chunks) - Used for placing outer islands 
scoreboard objectives add skyblock.render_distance_check dummy
scoreboard players set $render_distance skyblock.render_distance_check 0

# Remove lava
scoreboard objectives add skyblock.removed_lava_active dummy
scoreboard players set $active skyblock.removed_lava_active 0


## Function Scheduling
# 5 ticks
schedule function potatoblock:tick_5 5t replace