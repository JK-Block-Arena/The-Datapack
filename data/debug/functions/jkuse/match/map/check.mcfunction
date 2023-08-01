# 记录分数
execute store result score @e[tag=match_vote_map1] mem if entity @a[scores={state=0,vote_match=1},gamemode=adventure]
execute store result score @e[tag=match_vote_map2] mem if entity @a[scores={state=0,vote_match=2},gamemode=adventure]
execute store result score @e[tag=match_vote_map3] mem if entity @a[scores={state=0,vote_match=3},gamemode=adventure]
# 排序
scoreboard players set #match_vote_max mem 0
scoreboard players operation #match_vote_max mem > @e[tag=match_avail_map] mem
execute as @e[tag=match_avail_map] if score @s mem = #match_vote_max mem run tag @s add match_vote_max_map
# 如果最多投票选项多于2个
execute store result score #match_vote_max mem if entity @e[tag=match_vote_max_map]
execute if score #match_vote_max mem matches 2 run tag @e[limit=1,sort=random,tag=match_vote_max_map] remove match_vote_max_map 
execute if score #match_vote_max mem matches 3 run tag @e[limit=2,sort=random,tag=match_vote_max_map] remove match_vote_max_map
# 最终结果
tellraw @a ["\n🌏  投票结果：\n",{"selector":"@e[tag=match_vote_map1]"},{"score":{"name": "@e[limit=1,tag=match_vote_map1]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=match_vote_map2]"},{"score":{"name": "@e[limit=1,tag=match_vote_map2]","objective": "mem"},"color": "yellow"}," ",{"selector":"@e[tag=match_vote_map3]"},{"score":{"name": "@e[limit=1,tag=match_vote_map3]","objective": "mem"},"color": "yellow"}]
tellraw @a ["\n🌏  最多投票的地图为：",{"selector":"@e[tag=match_vote_max_map]"}]
scoreboard players reset @a vote_match
# 应用地图
execute as @e[tag=match_vote_max_map,tag=match_map1] run function debug:trigger/map_change_1
execute as @e[tag=match_vote_max_map,tag=match_map2] run function debug:trigger/map_change_2
execute as @e[tag=match_vote_max_map,tag=match_map3] run function debug:trigger/map_change_3
execute as @e[tag=match_vote_max_map,tag=match_map4] run function debug:trigger/map_change_4
execute as @e[tag=match_vote_max_map,tag=match_map5] run function debug:trigger/map_change_5
execute as @e[tag=match_vote_max_map,tag=match_map6] run function debug:trigger/map_change_6
execute as @e[tag=match_vote_max_map,tag=match_map7] run function debug:trigger/map_change_7
execute as @e[tag=match_vote_max_map,tag=match_map8] run function debug:trigger/map_change_8