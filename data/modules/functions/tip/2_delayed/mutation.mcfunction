# 突变
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 突变","color":"light_purple"},"\n     突变是一种随机的全局效果，它会在循环重置时结束。\n     你可以在屏幕顶部查看当前的突变。\n"]
scoreboard players set @s tip_cd 0
scoreboard players add @s tip_2_mutation 1
tag @s remove tip_2_mutation
