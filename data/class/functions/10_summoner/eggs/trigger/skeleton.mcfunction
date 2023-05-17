# 召唤
summon minecraft:skeleton ^0.4 ^ ^ {PersistenceRequired:true,CustomName:'"骷髅弓手"',Health:20f,CustomNameVisible:true,Tags:["new_minion"]}
summon minecraft:skeleton ^-0.4 ^ ^ {PersistenceRequired:true,CustomName:'"骷髅弓手"',Health:20f,CustomNameVisible:true,Tags:["new_minion"]}
item replace entity @e[tag=new_minion] armor.head with leather_helmet{NeedColor:1b,Unbreakable:1,AttributeModifiers:[]}
item replace entity @e[tag=new_minion] weapon.mainhand with bow{Unbreakable:1}
execute if score @s statPlayerLevel matches 1 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.46
execute if score @s statPlayerLevel matches 2 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.42
execute if score @s statPlayerLevel matches 3 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.38
execute if score @s statPlayerLevel matches 4 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.34
effect give @e[tag=new_minion] weakness infinite 0 true
# 设置玩家信息
scoreboard players operation @e[tag=new_minion] player_id = @s player_id
scoreboard players operation @e[tag=new_minion] team = @s team
scoreboard players operation @e[tag=new_minion] statPlayerLevel = @s statPlayerLevel
execute as @s[team=lobby] run team join lobby @e[tag=new_minion]
execute as @s[team=red] run team join red @e[tag=new_minion]
execute as @s[team=blue] run team join blue @e[tag=new_minion]
execute as @s[team=green] run team join green @e[tag=new_minion]
execute as @s[team=yellow] run team join yellow @e[tag=new_minion]
execute as @e[tag=new_minion] at @s run function class:modules/inventory/color
execute as @e[tag=new_minion] at @s run function modules:anti_stuck/sub/ravager
# 清理
tag @e remove new_minion
# 减少存储
scoreboard players remove @s 10_skeleton_st 1
# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
scoreboard players remove @s 10_mana 2000