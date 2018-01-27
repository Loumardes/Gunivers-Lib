# NAME: Get Distance To TargetID Advanced
# PATH: Gunivers-Lib:Entity/Location/Advanced/GetDistanceToTargetID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)
# - Tmp1 (score dummy)
# - TargetID (score dummy)
# - Math (Import)
# - Entity/Vectors/GetByTargetID (MCfunction)
# - Entity/Vectors/GetLenght (MCfunction)

# INPUT:
# - TargetID (score dummy) The ID of the Target
# - LocX (score dummy) /!\ must be defined on both entities
# - LocY (score dummy) /!\ must be defined on both entities
# - LocZ (score dummy) /!\ must be defined on both entities

# OUTPUT:
# - Res

# NOTE:
# - The Input must have 3 decimals (Calculated by the Advanced Location Get function OR multiplied by 1000) /!\ THE ADVANCED LOCATION GET FUNCTION DOES'T EXIST FOR THE MOMENT /!\
# - Returns the distance between two entities with 2 decimals
# - The distance must be less than 400 blocks

# CODE:

function Gunivers-Lib:Entity/Vectors/GetByTargetID

scoreboard players operation @s VectorX /= 10 Constant
scoreboard players operation @s VectorY /= 10 Constant
scoreboard players operation @s VectorZ /= 10 Constant

function Gunivers-Lib:Entity/Vectors/GetLength