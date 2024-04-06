execute in minecraft:potato positioned 4 57 5 run place template potatoblock:potatoblock
scoreboard players set $plaines skyblock.outer_island_checklist 1

# No stealing items (if its a new world)
execute as @a run clear @s
execute positioned 6 64 6 run kill @e[type=minecraft:item,distance=..20]

execute in minecraft:potato run forceload add 199 8
schedule function potatoblock:place_wastelands 40t

# Tp and spawnpoint
execute in minecraft:potato run tp @a 6 64 6
execute in minecraft:potato run setworldspawn 6 64 6
execute in minecraft:potato as @a at @s run spawnpoint @s ~ ~ ~

scoreboard players set $generated skyblock.generate_init_island 1

