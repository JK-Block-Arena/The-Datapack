# 效果
effect give @s[scores={statPlayerLevel=1}] speed 1 24 true
effect give @s[scores={statPlayerLevel=2}] speed 1 22 true
effect give @s[scores={statPlayerLevel=3}] speed 1 21 true
effect give @s[scores={statPlayerLevel=4}] speed 1 19 true
effect give @s resistance 1 2 true
execute if score @s 3_dash_last matches ..0 run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.8 1.7
execute if score @s 3_dash_last matches ..0 run playsound minecraft:entity.ravager.stunned player @a ~ ~ ~ 1.5 0.6
scoreboard players add @s[scores={3_dash_last=1..,statPlayerLevel=1}] 3_dash_last 11
scoreboard players add @s[scores={3_dash_last=1..,statPlayerLevel=2}] 3_dash_last 10
scoreboard players add @s[scores={3_dash_last=1..,statPlayerLevel=3}] 3_dash_last 9
scoreboard players add @s[scores={3_dash_last=1..,statPlayerLevel=4}] 3_dash_last 8
scoreboard players set @s[scores={3_dash_last=..0,statPlayerLevel=1}] 3_dash_last 11
scoreboard players set @s[scores={3_dash_last=..0,statPlayerLevel=2}] 3_dash_last 10
scoreboard players set @s[scores={3_dash_last=..0,statPlayerLevel=3}] 3_dash_last 9
scoreboard players set @s[scores={3_dash_last=..0,statPlayerLevel=4}] 3_dash_last 8

# 减少次数
scoreboard players remove @s 3_dash_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
