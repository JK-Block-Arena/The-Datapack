# 训练场
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 训练场","color":"light_purple"},"\n     在训练场中，所有能力的冷却速度都会大幅提升。\n     你可以在这里实验职业技能、练习使用武器。\n"]
scoreboard players set @s tip_cd 0
scoreboard players add @s tip_1_train 1
tag @s remove tip_1_train