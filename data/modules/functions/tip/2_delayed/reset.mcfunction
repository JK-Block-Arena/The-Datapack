# 循环重置
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 循环重置","color":"light_purple"},"\n     当上方进度条填满，游戏将会自动重置。\n     每次循环重置都会清空右侧的击杀数记录、重置突变，并更换新的战场！\n"]
scoreboard players set @s tip_cd 0
scoreboard players add @s tip_2_reset 1
tag @s remove tip_2_reset
