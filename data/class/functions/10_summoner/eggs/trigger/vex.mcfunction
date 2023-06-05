# 召唤
summon minecraft:vex ~ ~3 ~ {PersistenceRequired:true,CustomName:'"恼鬼"',Health:20f,CustomNameVisible:true,Tags:["new_minion"]}
summon minecraft:vex ~ ~3 ~ {PersistenceRequired:true,CustomName:'"恼鬼"',Health:20f,CustomNameVisible:true,Tags:["new_minion"]}
item replace entity @e[tag=new_minion] weapon.mainhand with iron_sword{Unbreakable:1}

# 设置玩家信息
#tag @s add vex_owner
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
effect give @e[tag=new_minion] weakness infinite 0 true
#execute as @e[tag=new_minion] at @s run data modify entity @s Leash.UUID set from entity @p[tag=vex_owner] UUID

# 清理
tag @e remove new_minion
tag @a remove vex_owner

# 减少存储
scoreboard players remove @s 10_vex_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory