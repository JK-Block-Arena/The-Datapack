# 记录分数
execute store result score @e[tag=match_vote_mutation1] mem if entity @a[scores={state=0,vote_match=1},gamemode=adventure]
execute store result score @e[tag=match_vote_mutation2] mem if entity @a[scores={state=0,vote_match=2},gamemode=adventure]
execute store result score @e[tag=match_vote_mutation3] mem if entity @a[scores={state=0,vote_match=3},gamemode=adventure]
execute store result score @e[tag=match_vote_mutation4] mem if entity @a[scores={state=0,vote_match=4},gamemode=adventure]
# 排序
scoreboard players set #match_vote_max mem 0
scoreboard players operation #match_vote_max mem > @e[tag=match_avail_mutation] mem
execute as @e[tag=match_avail_mutation] if score @s mem = #match_vote_max mem run tag @s add match_vote_max_mutation
# 如果最多投票选项多于2个
execute store result score #match_vote_max mem if entity @e[tag=match_vote_max_mutation]
execute if score #match_vote_max mem matches 2 run tag @e[limit=1,sort=random,tag=match_vote_max_mutation] remove match_vote_max_mutation
execute if score #match_vote_max mem matches 3 run tag @e[limit=2,sort=random,tag=match_vote_max_mutation] remove match_vote_max_mutation
execute if score #match_vote_max mem matches 4 run tag @e[limit=3,sort=random,tag=match_vote_max_mutation] remove match_vote_max_mutation
# 最终结果
tellraw @a ["\n⭐  投票结果：\n",{"selector":"@e[tag=match_vote_mutation1]"},{"score":{"name": "@e[limit=1,tag=match_vote_mutation1]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=match_vote_mutation2]"},{"score":{"name": "@e[limit=1,tag=match_vote_mutation2]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=match_vote_mutation3]"},{"score":{"name": "@e[limit=1,tag=match_vote_mutation3]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=match_vote_mutation4]"},{"score":{"name": "@e[limit=1,tag=match_vote_mutation4]","objective": "mem"},"color": "yellow"}]
tellraw @a ["\n⭐  最多投票的突变为：",{"selector":"@e[tag=match_vote_max_mutation]"}]
scoreboard players reset @a vote_match