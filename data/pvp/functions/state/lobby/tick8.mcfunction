# 旁观者
execute as @s[gamemode=spectator] run function pvp:state/lobby/spectator
scoreboard players reset @s[gamemode=adventure] back_spawn
scoreboard players reset @s[gamemode=adventure] switch_bossbar
scoreboard players reset @s believer_book

# rick
execute as @s[advancements={pvp:rickroll/rick5=false},x=8,y=300,z=8,distance=..20] run function pvp:state/lobby/rick_nope
execute as @s[advancements={pvp:rickroll/rick5=true}] run function pvp:state/lobby/rick_check

# 状态效果
effect give @s weakness infinite 0 true
effect give @s speed infinite 0 true
effect give @s[x=8,y=235,z=8,scores={hp=..19},distance=..16] instant_health 1 9 true
effect give @s[x=-888,y=38,z=8,scores={hp=..19},distance=..50] minecraft:instant_health 1 9 true
execute if block ~ ~-1 ~ diamond_block run effect give @s[gamemode=!spectator,x=-888,y=38,z=8,distance=..50] minecraft:speed 1 4 true

# 检查、刷新物品栏
execute as @s[gamemode=adventure] run function pvp:state/lobby/tick1
execute as @s[gamemode=adventure] run function pvp:state/lobby/refresh_inventory

# 职业类型重置
execute unless score @s class_type matches 1.. run scoreboard players set @s class_type 0