# 效果
title @s actionbar {"color":"aqua","text":"⚜  召唤中……"}
execute if score @s statPlayerLevel matches 1 run playsound minecraft:block.beacon.activate neutral @a[distance=..4] ~ ~ ~ 0.8 1.3
execute if score @s statPlayerLevel matches 2 run playsound minecraft:block.beacon.activate neutral @a[distance=..5] ~ ~ ~ 0.8 1.3
execute if score @s statPlayerLevel matches 3 run playsound minecraft:block.beacon.activate neutral @a[distance=..6] ~ ~ ~ 0.8 1.3
execute if score @s statPlayerLevel matches 4 run playsound minecraft:block.beacon.activate neutral @a[distance=..7] ~ ~ ~ 0.8 1.3
scoreboard players set @s[scores={statPlayerLevel=1}] 4_guardian_cast 6
scoreboard players set @s[scores={statPlayerLevel=2}] 4_guardian_cast 7
scoreboard players set @s[scores={statPlayerLevel=3}] 4_guardian_cast 8
scoreboard players set @s[scores={statPlayerLevel=4}] 4_guardian_cast 9

# 减少仓储
scoreboard players remove @s 4_heart_storage 1
execute if score $is_day mem matches 1 run scoreboard players set @s 4_heart_cd 40000
execute if score $is_day mem matches 0 run scoreboard players set @s 4_heart_cd 25000

# 刷新物品，打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
