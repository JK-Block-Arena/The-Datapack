# 召唤
summon minecraft:iron_golem ^ ^ ^-0.6 {PersistenceRequired:true,CustomName:'"铁哥"',Health:40f,CustomNameVisible:true,Tags:["new_minion"]}
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
effect give @e[tag=new_minion] weakness infinite 2 true
# 清理
tag @e remove new_minion
# 减少存储
scoreboard players remove @s 10_golem_st 1
scoreboard players remove @s 10_mana 4000
# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory