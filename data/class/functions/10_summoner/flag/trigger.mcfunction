execute as @s[team=lobby] run summon item ~ ~2 ~ {id:"item",Item:{id:"white_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_lobby"]}
execute as @s[team=red] run summon item ~ ~2 ~ {id:"item",Item:{id:"red_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_red"]}
execute as @s[team=blue] run summon item ~ ~2 ~ {id:"item",Item:{id:"blue_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_blue"]}
execute as @s[team=green] run summon item ~ ~2 ~ {id:"item",Item:{id:"green_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_green"]}
execute as @s[team=yellow] run summon item ~ ~2 ~ {id:"item",Item:{id:"yellow_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_yellow"]}
playsound minecraft:entity.elder_guardian.hurt player @a ~ ~ ~ 1.5 1.2
# 设置玩家信息
scoreboard players operation @e[tag=new_minion] player_id = @s player_id
scoreboard players operation @e[tag=new_minion] team = @s team
scoreboard players operation @e[tag=new_minion] statPlayerLevel = @s statPlayerLevel
execute as @s[team=lobby] run team join lobby @e[tag=new_minion]
execute as @s[team=red] run team join red @e[tag=new_minion]
execute as @s[team=blue] run team join blue @e[tag=new_minion]
execute as @s[team=green] run team join green @e[tag=new_minion]
execute as @s[team=yellow] run team join yellow @e[tag=new_minion]
scoreboard players set @e[tag=new_minion] mem 10
# 清理
tag @e remove new_minion
# 减少存储
scoreboard players remove @s 10_flag_st 1
# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory