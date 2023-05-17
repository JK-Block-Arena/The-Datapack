# 暂离游戏
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 暂离游戏","color":"light_purple"},"\n     如果要暂时离开，请在复活时选中紫水晶块，再按 [",{"keybind":"key.swapOffhand"},"] 返回大厅。\n     停留在战场上不动会拖队友的后腿，也会给大家带来困扰……\n"]
scoreboard players set @s tip_cd 0
scoreboard players add @s tip_1_afk 1
tag @s remove tip_1_afk