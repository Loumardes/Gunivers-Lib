# CONFIG
#   Init Menu Refresh Frenquency (20 = 1 seconde). If you use the lib in solo, you can refresh the menu all ticks.

# Import constants
function gunivers-lib:core/import/constants

# Init menu refresh
scoreboard objectives add Data dummy
scoreboard players set @a[scores={Data=5..}] Data 0
scoreboard objectives add Data dummy
scoreboard players add @a Data 1
execute as @a[tag=Glib_Init_Menu,scores={Data=1}] at @s run function gunivers-lib:core/menu/main
function gunivers-lib:utils/cache/cache_loop

# Loop Schedule
execute as @e[tag=HeadGlibCache] at @s run function gunivers-lib:utils/schedule/child/loop_schedule

# Debug recorder
execute as @a[tag=Glib_Debug_Stick] run function gunivers-lib:core/menu/debug/debug_record
execute as @p[tag=Glib_Debug,tag=!Glib_Init_Menu,tag=Glib_Debug_Disp_Tick] run function gunivers-lib:core/menu/debug/display_tick
execute as @p[tag=Glib_Debug,tag=Debug_Entity_Management,tag=!Glib_Init_Menu] at @s run function gunivers-lib:core/menu/debug/entity/target_entity_manager