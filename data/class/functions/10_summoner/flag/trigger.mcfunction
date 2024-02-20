execute as @s[team=lobby] run summon item ~ ~2 ~ {id:"item",Item:{id:"white_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_0"]}
execute as @s[team=red] run summon item ~ ~2 ~ {id:"item",Item:{id:"red_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_1"]}
execute as @s[team=blue] run summon item ~ ~2 ~ {id:"item",Item:{id:"blue_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_2"]}
execute as @s[team=green] run summon item ~ ~2 ~ {id:"item",Item:{id:"green_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_3"]}
execute as @s[team=yellow] run summon item ~ ~2 ~ {id:"item",Item:{id:"yellow_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_4"]}
execute as @s[team=red_v1] run summon item ~ ~2 ~ {id:"item",Item:{id:"red_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_5"]}
execute as @s[team=blue_v1] run summon item ~ ~2 ~ {id:"item",Item:{id:"blue_banner",Count:1,tag:{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]}}},Age:-32768,PickupDelay:32767,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["new_minion","10_flag","10_flag_6"]}
playsound entity.elder_guardian.hurt player @a ~ ~ ~ 1.5 1.2
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
scoreboard players set @e[tag=new_minion] mem 10
# 清理
tag @e remove new_minion
# 减少存储
scoreboard players remove @s 10_flag_st 1
# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory