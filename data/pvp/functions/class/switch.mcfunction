execute if entity @e[limit=1,tag=class1,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:1b}]}] class 1
execute if entity @e[limit=1,tag=class2,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:2b}]}] class 2
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:3b}]}] class 3
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:3b}]}] class 3
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:3b}]}] class_type 0
execute if entity @e[limit=1,tag=class4,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:4b}]}] class 4
execute if entity @e[limit=1,tag=class5,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:5b}]}] class 5
execute if entity @e[limit=1,tag=class6,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:28b}]}] class 6
execute if entity @e[limit=1,tag=class7,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:29b}]}] class 7
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:30b}]}] class 8
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:30b}]}] class 3
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:30b}]}] class_type 1
execute if entity @e[limit=1,tag=class9,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:31b}]}] class 9
execute if entity @e[limit=1,tag=class10,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:32b}]}] class 10
execute if entity @e[limit=1,tag=class11,tag=!banned_class] run scoreboard players set @s[nbt=!{Inventory:[{Slot:19b}]}] class 11
execute unless score #match_type mem matches 1 run scoreboard players set @s[nbt=!{Inventory:[{Slot:8b}]}] class 10000
title @s[nbt={Inventory:[{Slot:-106b,tag:{banned_class:1}}]}] actionbar {"text":"有笨蛋想选择被禁用的职业","color":"red","bold":true}

execute if score #match_mode mem matches 1 if score #match_type mem matches 1 run function debug:jkuse/match/v1/class_ban_self

# 播放音效
playsound block.stone_button.click_on player @s 0 1000000 0 1000000
# 刷新物品
execute as @s[scores={state=0}] run function pvp:state/lobby/refresh_inventory
execute as @s[scores={state=1}] run function pvp:state/respawn/refresh_inventory
# 消除死亡选择职业提示
scoreboard players add @s[scores={state=1}] tip_1_respawn_class 1