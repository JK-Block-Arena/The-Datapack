# 召唤
summon minecraft:zombie ~ ~ ~ {PersistenceRequired:true,CustomName:'"僵尸守卫"',Health:20f,CustomNameVisible:true,Tags:["new_minion"]}
summon minecraft:vex ~ ~3 ~ {PersistenceRequired:true,CustomName:'"👻"',Health:14f,CustomNameVisible:true,Tags:["new_minion"]}
item replace entity @e[tag=new_minion] armor.head with leather_helmet{NeedColor:1b,Unbreakable:1,AttributeModifiers:[]}
item replace entity @e[tag=new_minion] weapon.mainhand with iron_sword{Unbreakable:1,AttributeModifiers:[{UUID:[I;1,1,1,1],Amount:3,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0}]}
execute if score @s statPlayerLevel matches 1 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.45
execute if score @s statPlayerLevel matches 2 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.41
execute if score @s statPlayerLevel matches 3 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.37
execute if score @s statPlayerLevel matches 4 run attribute @e[tag=new_minion,limit=1] minecraft:generic.movement_speed base set 0.33
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
execute as @s[team=red_v1] run team join red_v1 @e[tag=new_minion]
execute as @s[team=blue_v1] run team join blue_v1 @e[tag=new_minion]
execute as @e[tag=new_minion] at @s run function class:modules/inventory/color
execute as @e[tag=new_minion] at @s run function modules:anti_stuck/sub/player

# 清理
tag @e remove new_minion

# 减少存储
scoreboard players remove @s 10_zombie_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory