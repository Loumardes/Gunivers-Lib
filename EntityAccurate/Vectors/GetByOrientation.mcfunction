# TITLE: Calcul Vectors
# PATH: Gunivers-Lib:Entity/Vectors/GetByOrientation

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# - LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENT:
# - Gunivers-Lib:Utils/MathAccurate/Cos (function)
# - Gunivers-Lib:Utils/MathAccurate/Sin (function)
# - Phi (score dummy)
# - Theta (score dummy)
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# INPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# NOTE:
# - The Phi input must be in interval [0;360000] and the Theta input must be in interval [0;180000]

# CONFIGURATION:
scoreboard players set @s VectorSpeed 1000

# CODE 

#Calcul Vector Y

scoreboard players operation @s Tmp1 = @s Theta
function Gunivers-Lib:Utils/MathAccurate/Cos
scoreboard players operation @s VectorY = @s Res

#Calcul Vector Z

scoreboard players operation @s Tmp1 = @s Phi
function Gunivers-Lib:Utils/MathAccurate/Cos
scoreboard players operation @s VectorZ = @s Res

scoreboard players operation @s Tmp1 = @s Theta
function Gunivers-Lib:Utils/MathAccurate/Sin
scoreboard players operation @s VectorZ *= @s Res

#Calcul Vector X

scoreboard players operation @s VectorX = @s Res

scoreboard players operation @s Tmp1 = @s Phi
function Gunivers-Lib:Utils/MathAccurate/Sin
scoreboard players operation @s VectorX *= @s Res

# Retranscription of Phi on interval [0;1000]
scoreboard players operation @s VectorX /= 1000 Constant
scoreboard players operation @s VectorX /= Neg Constant
scoreboard players operation @s VectorZ /= 1000 Constant
