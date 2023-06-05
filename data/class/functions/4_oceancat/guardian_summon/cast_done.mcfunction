# 效果
title @s actionbar ""
execute if score @s statPlayerLevel matches 1 run playsound minecraft:item.trident.thunder player @a[distance=..6] ~ ~ ~ 0.7
execute if score @s statPlayerLevel matches 2 run playsound minecraft:item.trident.thunder player @a[distance=..7] ~ ~ ~ 0.7
execute if score @s statPlayerLevel matches 3 run playsound minecraft:item.trident.thunder player @a[distance=..8] ~ ~ ~ 0.7
execute if score @s statPlayerLevel matches 4 run playsound minecraft:item.trident.thunder player @a[distance=..10] ~ ~ ~ 0.7

# 召唤
execute align xyz run summon minecraft:guardian ~0.5 ~1.1 ~0.5 {PersistenceRequired:true,CustomName:'"辉煌裂片"',Health:0.1f,CustomNameVisible:true,Tags:["new_minion"],NoAI:1b,Silent:1b,NoGravity:1b}
effect give @e[tag=new_minion] invisibility infinite 0 true
execute if score @s statPlayerLevel matches 1 run effect give @e[tag=new_minion] resistance 3 5 true
execute if score @s statPlayerLevel matches 2..3 run effect give @e[tag=new_minion] resistance 2 5 true
execute if score @s statPlayerLevel matches 4.. run effect give @e[tag=new_minion] resistance 1 5 true

# 设置玩家信息
scoreboard players operation @e[tag=new_minion] player_id = @s player_id
scoreboard players operation @e[tag=new_minion] team = @s team
scoreboard players operation @e[tag=new_minion] statPlayerLevel = @s statPlayerLevel
execute as @s[team=lobby] run team join lobby @e[tag=new_minion]
execute as @s[team=red] run team join red @e[tag=new_minion]
execute as @s[team=blue] run team join blue @e[tag=new_minion]
execute as @s[team=green] run team join green @e[tag=new_minion]
execute as @s[team=yellow] run team join yellow @e[tag=new_minion]
execute as @s[team=red_v1] run team join red_v1 @e[tag=new_minion]
execute as @s[team=blue_v1] run team join blue_v1 @e[tag=new_minion]

# 设置寿命
execute if score @s statPlayerLevel matches 1 run scoreboard players set @e[tag=new_minion] 4_guardian_life 61
execute if score @s statPlayerLevel matches 2 run scoreboard players set @e[tag=new_minion] 4_guardian_life 59
execute if score @s statPlayerLevel matches 3 run scoreboard players set @e[tag=new_minion] 4_guardian_life 56
execute if score @s statPlayerLevel matches 4 run scoreboard players set @e[tag=new_minion] 4_guardian_life 54

# 清理
tag @e remove new_minion
