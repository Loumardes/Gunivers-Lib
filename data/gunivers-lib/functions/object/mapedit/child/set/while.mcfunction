#Sortie du while

execute as @e[name=SetAS] at @s if score @s Set_Y > @s Set_Pos_yf run function gunivers-lib:object/mapedit/child/set/end


#A chaque iteration
execute as @e[name=SetAS] at @s if score @s Set_Y <= @s Set_Pos_yf run function gunivers-lib:object/mapedit/child/set/run

#fct recusive pour fair un while a change apres car peux cose des pbr 
execute as @e[name=SetAS] at @s if score @s Set_Y <= @s Set_Pos_yf run function gunivers-lib:object/mapedit/child/set/while