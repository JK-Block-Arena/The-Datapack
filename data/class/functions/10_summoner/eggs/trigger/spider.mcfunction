# 召唤
summon minecraft:cave_spider ^0.4 ^ ^ {PersistenceRequired:true,CustomName:'"剧毒蜘蛛"',Health:12f,CustomNameVisible:true,Tags:["new_minion"]}
summon minecraft:cave_spider ^-0.4 ^ ^ {PersistenceRequired:true,CustomName:'"剧毒蜘蛛"',Health:12f,CustomNameVisible:true,Tags:["new_minion"]}
effect give @e[tag=new_minion] speed infinite 0 true
# 设置玩家信息
scoreboard players operation @e[tag=new_minion] player_id = @s player_id
scoreboard players operation @e[tag=new_minion] team = @s team
scoreboard players operation @e[tag=new_minion] statPlayerLevel = @s statPlayerLevel
execute as @s[team=lobby] run team join lobby @e[tag=new_minion]
execute as @s[team=red] run team join red @e[tag=new_minion]
execute as @s[team=blue] run team join blue @e[tag=new_minion]
execute as @s[team=green] run team join green @e[tag=new_minion]
execute as @s[team=yellow] run team join yellow @e[tag=new_minion]
execute as @e[tag=new_minion] at @s run function modules:anti_stuck/sub/ravager
# 清理
tag @e remove new_minion
# 减少存储
scoreboard players remove @s 10_spider_st 1
# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory