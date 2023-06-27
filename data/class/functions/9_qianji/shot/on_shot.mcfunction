scoreboard players reset @s 9_shot
scoreboard players set @s 9_arrow 0
tag @s remove 9_arrow

# 打断静息治疗
tag @s add brRegenBreak
tag @s add refresh_inventory

execute if score $mutation mem matches 8 run effect give @s[scores={state=2,team=1..4}] glowing 3