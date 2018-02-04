# NAME: Get Location
# PATH: Gunivers-Lib:Entity/Location/Get

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Gunivers-Lib:utils/import/Var
# - Gunivers-Lib:utils/import/Location

# INPUT:

# OUTPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
execute store result score @s Output1 run data get entity @s Pos[0] 1
execute store result score @s Output2 run data get entity @s Pos[1] 1
execute store result score @s Output3 run data get entity @s Pos[2] 1