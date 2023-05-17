# 遇水即化
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 遇水即化","color":"light_purple"},"\n     水是剧毒的！任何东西掉进水中都会融化！\n"]
scoreboard players set @s tip_cd 0
scoreboard players add @s tip_1_waterkill 1
tag @s remove tip_1_waterkill