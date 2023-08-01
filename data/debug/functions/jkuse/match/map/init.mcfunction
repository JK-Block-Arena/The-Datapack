# 随机三款地图  除玄素，矿洞外
kill @e[tag=match_selector_map]
summon marker 8 8 8 {Tags:["match_selector_map","match_map1"],CustomName:'{"text": "村庄","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_map","match_map2"],CustomName:'{"text": "冰树","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_map","match_map3"],CustomName:'{"text": "沙滩","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_map","match_map4"],CustomName:'{"text": "瀑布","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_map","match_map5"],CustomName:'{"text": "丛林","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_map","match_map6"],CustomName:'{"text": "古堡","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_map","match_map7"],CustomName:'{"text": "商店","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_map","match_map8"],CustomName:'{"text": "舞台","color": "green"}'}
tag @e[tag=match_selector_map,limit=3,sort=random] add match_avail_map
# 确认是哪些地图
tag @e[tag=match_avail_map,tag=match_map1] add match_vote_map1
execute unless entity @e[tag=match_vote_map1] run tag @e[tag=match_avail_map,tag=match_map2] add match_vote_map1
execute unless entity @e[tag=match_vote_map1] run tag @e[tag=match_avail_map,tag=match_map3] add match_vote_map1
execute unless entity @e[tag=match_vote_map1] run tag @e[tag=match_avail_map,tag=match_map4] add match_vote_map1
execute unless entity @e[tag=match_vote_map1] run tag @e[tag=match_avail_map,tag=match_map5] add match_vote_map1
execute unless entity @e[tag=match_vote_map1] run tag @e[tag=match_avail_map,tag=match_map6] add match_vote_map1
tag @e[tag=match_avail_map,tag=match_map2,tag=!match_vote_map1] add match_vote_map2
execute unless entity @e[tag=match_vote_map2] run tag @e[tag=match_avail_map,tag=match_map3,tag=!match_vote_map1] add match_vote_map2
execute unless entity @e[tag=match_vote_map2] run tag @e[tag=match_avail_map,tag=match_map4,tag=!match_vote_map1] add match_vote_map2
execute unless entity @e[tag=match_vote_map2] run tag @e[tag=match_avail_map,tag=match_map5,tag=!match_vote_map1] add match_vote_map2
execute unless entity @e[tag=match_vote_map2] run tag @e[tag=match_avail_map,tag=match_map6,tag=!match_vote_map1] add match_vote_map2
execute unless entity @e[tag=match_vote_map2] run tag @e[tag=match_avail_map,tag=match_map7,tag=!match_vote_map1] add match_vote_map2
tag @e[tag=match_avail_map,tag=match_map3,tag=!match_vote_map1,tag=!match_vote_map2] add match_vote_map3
execute unless entity @e[tag=match_vote_map3] run tag @e[tag=match_avail_map,tag=match_map4,tag=!match_vote_map1,tag=!match_vote_map2] add match_vote_map3
execute unless entity @e[tag=match_vote_map3] run tag @e[tag=match_avail_map,tag=match_map5,tag=!match_vote_map1,tag=!match_vote_map2] add match_vote_map3
execute unless entity @e[tag=match_vote_map3] run tag @e[tag=match_avail_map,tag=match_map6,tag=!match_vote_map1,tag=!match_vote_map2] add match_vote_map3
execute unless entity @e[tag=match_vote_map3] run tag @e[tag=match_avail_map,tag=match_map7,tag=!match_vote_map1,tag=!match_vote_map2] add match_vote_map3
execute unless entity @e[tag=match_vote_map3] run tag @e[tag=match_avail_map,tag=match_map8,tag=!match_vote_map1,tag=!match_vote_map2] add match_vote_map3
#
tellraw @a[gamemode=adventure] ["🌏  ",{"text": "可选择地图：\n","color": "aqua"},"[",{"selector":"@e[tag=match_vote_map1]","clickEvent": {"action":"run_command","value": "/trigger vote_match set 1"}},"]  [",{"selector":"@e[tag=match_vote_map2]","clickEvent": {"action":"run_command","value": "/trigger vote_match set 2"}},"]  [",{"selector":"@e[tag=match_vote_map3]","clickEvent": {"action":"run_command","value": "/trigger vote_match set 3"}},"]"]
tellraw @a ["\n🌏  请",{"text":"当前参赛玩家","color": "red"},"在",{"text": " 15 秒","color": "gold"},"内进行",{"text":"地图","color": "aqua","bold": true},"投票！\n"]
scoreboard players enable @a[scores={state=0},gamemode=adventure] vote_match