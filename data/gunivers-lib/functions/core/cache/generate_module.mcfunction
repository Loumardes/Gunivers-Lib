# NAME: Generate Module
# PATH: gunivers-lib:core/cache/init_generate_module

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CODE:
execute as @e[tag=GenerateCacheGlib] at @s run setblock ~1 ~ ~-1 minecraft:structure_block[mode=load]{posZ:-4,name:"gunivers-lib:utils/cache",rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
execute as @e[tag=GenerateCacheGlib] at @s run setblock ~1 ~1 ~-1 redstone_block
execute at @e[tag=HeadGlibCache] positioned ~1 ~ ~-1 run forceload add ~ ~
execute at @e[tag=HeadGlibCache] positioned ~1 ~ ~3 run forceload add ~ ~
execute at @e[tag=HeadGlibCache] positioned ~-2 ~ ~3 run forceload add ~ ~
execute at @e[tag=HeadGlibCache] positioned ~-2 ~ ~-1 run forceload add ~ ~

execute as @e[tag=ASGlibCache] at @s run function gunivers-lib:entity/location/get

tag @s add Glib_Menu_Cache_Cancel