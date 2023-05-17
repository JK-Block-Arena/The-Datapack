# 治疗异常状态
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 治疗负面效果","color":"light_purple"},"\n     静息治疗开始时会清除所有负面效果，例如凋零、发光等。\n     被施加负面效果后，只有及时治疗才能保证安全！\n"]
scoreboard players set @s tip_cd 0
scoreboard players add @s tip_1_regen_effect 1
tag @s remove tip_1_regen_effect