# 旁观者
execute as @s[gamemode=spectator] run function debug:jkuse/spectator
scoreboard players reset @s[gamemode=adventure] lobby
scoreboard players reset @s[gamemode=adventure] switch_bossbar
scoreboard players reset @s believer_book
scoreboard players reset @s suicide

# rick
execute as @s[advancements={pvp:rickroll/rick5=false},x=8,y=318,z=8,distance=..20] run function debug:jkuse/rickroll/nope
execute as @s[advancements={pvp:rickroll/rick5=true}] run function debug:jkuse/rickroll/check

# 状态效果
effect give @s[team=!creator] weakness infinite 0 true
effect give @s speed infinite 0 true
execute unless entity @p[distance=..200,scores={state=2}] unless block ~ ~-.1 ~ #modules:harmful run effect give @s[scores={hp=..19}] instant_health 1 9 true
execute if block ~ ~-1 ~ diamond_block run effect give @s[gamemode=adventure] speed 1 4 true

# 检查、刷新物品栏
execute as @s[gamemode=adventure] run function pvp:state/lobby/tick1
execute as @s[gamemode=adventure] run function pvp:state/lobby/refresh_inventory

# 职业类型重置
execute unless score @s class_type matches 1.. run scoreboard players set @s class_type 0