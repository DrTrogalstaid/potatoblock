# Check for a player
execute store result score $found_player skyblock.generate_init_island run data get entity @p
# If there is a player run island generation
execute if score $found_player skyblock.generate_init_island matches 1.. run function potatoblock:main_island
# If there is no player run this function again
execute unless score $found_player skyblock.generate_init_island matches 1.. run schedule function potatoblock:initial_island_multiplayer_buffer 1t