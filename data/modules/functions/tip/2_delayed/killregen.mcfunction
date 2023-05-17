# 击杀治疗
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 击杀治疗","color":"light_purple"},"\n     当你完成击杀时，你会恢复 3 颗心的生命值！\n"]
scoreboard players set @s tip_cd 0
scoreboard players add @s tip_2_killregen 1
tag @s remove tip_2_killregen
