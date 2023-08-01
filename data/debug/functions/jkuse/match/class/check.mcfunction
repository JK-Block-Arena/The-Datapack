# 记录分数
tag @e[tag=enable_class] remove match_vote_max_class
execute store result score @e[limit=1,tag=class1] mem if entity @a[scores={state=0,vote_match=1},gamemode=adventure]
execute store result score @e[limit=1,tag=class2] mem if entity @a[scores={state=0,vote_match=2},gamemode=adventure]
execute store result score @e[limit=1,tag=class3] mem if entity @a[scores={state=0,vote_match=3},gamemode=adventure]
execute store result score @e[limit=1,tag=class4] mem if entity @a[scores={state=0,vote_match=4},gamemode=adventure]
execute store result score @e[limit=1,tag=class5] mem if entity @a[scores={state=0,vote_match=5},gamemode=adventure]
execute store result score @e[limit=1,tag=class6] mem if entity @a[scores={state=0,vote_match=6},gamemode=adventure]
execute store result score @e[limit=1,tag=class7] mem if entity @a[scores={state=0,vote_match=7},gamemode=adventure]
execute store result score @e[limit=1,tag=class8] mem if entity @a[scores={state=0,vote_match=8},gamemode=adventure]
execute store result score @e[limit=1,tag=class9] mem if entity @a[scores={state=0,vote_match=9},gamemode=adventure]
execute store result score @e[limit=1,tag=class10] mem if entity @a[scores={state=0,vote_match=10},gamemode=adventure]
# 最大值
scoreboard players set #match_vote_max mem 0
scoreboard players operation #match_vote_max mem > @e[tag=enable_class] mem
execute as @e[tag=enable_class] if score @s mem = #match_vote_max mem run tag @s add match_vote_max_class
# 最终结果
tag @e[limit=1,sort=random,tag=match_vote_max_class] add banned_class
function pvp:class/update
tellraw @a ["\n💎  投票结果：\n",{"selector":"@e[tag=class1]"},{"score":{"name": "@e[limit=1,tag=class1]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class2]"},{"score":{"name": "@e[limit=1,tag=class2]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class3]"},{"score":{"name": "@e[limit=1,tag=class3]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class4]"},{"score":{"name": "@e[limit=1,tag=class4]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class5]"},{"score":{"name": "@e[limit=1,tag=class5]","objective": "mem"},"color": "yellow"},"\n",{"selector":"@e[tag=class6]"},{"score":{"name": "@e[limit=1,tag=class6]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class7]"},{"score":{"name": "@e[limit=1,tag=class7]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class8]"},{"score":{"name": "@e[limit=1,tag=class8]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class9]"},{"score":{"name": "@e[limit=1,tag=class9]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=class10]"},{"score":{"name": "@e[limit=1,tag=class10]","objective": "mem"},"color": "yellow"},"\n\n💎  ",{"selector": "@e[tag=banned_class]"}," 已被禁用！\n"]
scoreboard players reset @a[gamemode=adventure] vote_match