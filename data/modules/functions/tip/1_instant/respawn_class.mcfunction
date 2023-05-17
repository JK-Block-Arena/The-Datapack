# 在复活时切换职业
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 在复活时切换职业","color":"light_purple"},"\n     在复活时，选中对应物品然后按 [",{"keybind":"key.swapOffhand"},"]，即可快速切换职业。\n     此外，你也可以使用紫水晶块返回大厅。\n"]
scoreboard players set @s tip_cd 0
# 由其他系统添加次数
tag @s remove tip_1_respawn_class