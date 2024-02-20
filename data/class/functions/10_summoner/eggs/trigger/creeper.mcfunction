# 召唤
summon creeper ~ ~1 ~ {PersistenceRequired:true,CustomName:'"卡哇伊苦力怕"',Health:20f,CustomNameVisible:true,Tags:["new_minion"],ExplosionRadius:3,Fuse:20,ignited:1b}
playsound entity.firework_rocket.launch player @a ~ ~ ~ 1.5 1.8

# 记录角度
data modify entity @e[tag=new_minion,limit=1] Rotation set from entity @s Rotation

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
execute as @e[tag=new_minion] at @s run function modules:anti_stuck/sub/ravager

# 投掷
execute at @e[tag=new_minion,limit=1] run summon marker ^ ^ ^1 {Tags:["mark"]}
execute store result score #x1 mem run data get entity @e[tag=new_minion,limit=1] Pos[0] 100
execute store result score #y1 mem run data get entity @e[tag=new_minion,limit=1] Pos[1] 100
execute store result score #z1 mem run data get entity @e[tag=new_minion,limit=1] Pos[2] 100
execute store result score #x2 mem run data get entity @e[tag=mark,limit=1] Pos[0] 100
execute store result score #y2 mem run data get entity @e[tag=mark,limit=1] Pos[1] 100
execute store result score #z2 mem run data get entity @e[tag=mark,limit=1] Pos[2] 100
execute store result entity @e[tag=new_minion,limit=1] Motion[0] double 0.025 run scoreboard players operation #x2 mem -= #x1 mem
execute store result entity @e[tag=new_minion,limit=1] Motion[1] double 0.025 run scoreboard players operation #y2 mem -= #y1 mem
execute store result entity @e[tag=new_minion,limit=1] Motion[2] double 0.025 run scoreboard players operation #z2 mem -= #z1 mem

# 清理
tag @e remove new_minion
kill @e[tag=new_minion_pos]
kill @e[tag=mark]

# 减少存储
scoreboard players remove @s 10_creeper_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory