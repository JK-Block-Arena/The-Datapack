# 随机四种突变  除一击必杀、黑暗森林外
kill @e[tag=match_selector_mutation]
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation1"],CustomName:'{"text": "瞬息万变","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation2"],CustomName:'{"text": "混沌灵魂++","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation3"],CustomName:'{"text": "引力失衡","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation4"],CustomName:'{"text": "厄难之血","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation5"],CustomName:'{"text": "折跃灵泉","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation6"],CustomName:'{"text": "杀戮光环","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation7"],CustomName:'{"text": "连锁换位","color": "green"}'}
summon marker 8 8 8 {Tags:["match_selector_mutation","match_mutation9"],CustomName:'{"text": "你说我做","color": "green"}'}
tag @e[tag=match_selector_mutation,limit=4,sort=random] add match_avail_mutation
# 确认是哪些突变
tag @e[tag=match_avail_mutation,tag=match_mutation1] add match_vote_mutation1
execute unless entity @e[tag=match_vote_mutation1] run tag @e[tag=match_avail_mutation,tag=match_mutation2] add match_vote_mutation1
execute unless entity @e[tag=match_vote_mutation1] run tag @e[tag=match_avail_mutation,tag=match_mutation3] add match_vote_mutation1
execute unless entity @e[tag=match_vote_mutation1] run tag @e[tag=match_avail_mutation,tag=match_mutation4] add match_vote_mutation1
execute unless entity @e[tag=match_vote_mutation1] run tag @e[tag=match_avail_mutation,tag=match_mutation5] add match_vote_mutation1
tag @e[tag=match_avail_mutation,tag=match_mutation2,tag=!match_vote_mutation1] add match_vote_mutation2
execute unless entity @e[tag=match_vote_mutation2] run tag @e[tag=match_avail_mutation,tag=match_mutation3,tag=!match_vote_mutation1] add match_vote_mutation2
execute unless entity @e[tag=match_vote_mutation2] run tag @e[tag=match_avail_mutation,tag=match_mutation4,tag=!match_vote_mutation1] add match_vote_mutation2
execute unless entity @e[tag=match_vote_mutation2] run tag @e[tag=match_avail_mutation,tag=match_mutation5,tag=!match_vote_mutation1] add match_vote_mutation2
execute unless entity @e[tag=match_vote_mutation2] run tag @e[tag=match_avail_mutation,tag=match_mutation6,tag=!match_vote_mutation1] add match_vote_mutation2
tag @e[tag=match_avail_mutation,tag=match_mutation3,tag=!match_vote_mutation1,tag=!match_vote_mutation2] add match_vote_mutation3
execute unless entity @e[tag=match_vote_mutation3] run tag @e[tag=match_avail_mutation,tag=match_mutation4,tag=!match_vote_mutation1,tag=!match_vote_mutation2] add match_vote_mutation3
execute unless entity @e[tag=match_vote_mutation3] run tag @e[tag=match_avail_mutation,tag=match_mutation5,tag=!match_vote_mutation1,tag=!match_vote_mutation2] add match_vote_mutation3
execute unless entity @e[tag=match_vote_mutation3] run tag @e[tag=match_avail_mutation,tag=match_mutation6,tag=!match_vote_mutation1,tag=!match_vote_mutation2] add match_vote_mutation3
execute unless entity @e[tag=match_vote_mutation3] run tag @e[tag=match_avail_mutation,tag=match_mutation7,tag=!match_vote_mutation1,tag=!match_vote_mutation2] add match_vote_mutation3
tag @e[tag=match_avail_mutation,tag=match_mutation4,tag=!match_vote_mutation1,tag=!match_vote_mutation2,tag=!match_vote_mutation3] add match_vote_mutation4
execute unless entity @e[tag=match_vote_mutation4] run tag @e[tag=match_avail_mutation,tag=match_mutation5,tag=!match_vote_mutation1,tag=!match_vote_mutation2,tag=!match_vote_mutation3] add match_vote_mutation4
execute unless entity @e[tag=match_vote_mutation4] run tag @e[tag=match_avail_mutation,tag=match_mutation6,tag=!match_vote_mutation1,tag=!match_vote_mutation2,tag=!match_vote_mutation3] add match_vote_mutation4
execute unless entity @e[tag=match_vote_mutation4] run tag @e[tag=match_avail_mutation,tag=match_mutation7,tag=!match_vote_mutation1,tag=!match_vote_mutation2,tag=!match_vote_mutation3] add match_vote_mutation4
execute unless entity @e[tag=match_vote_mutation4] run tag @e[tag=match_avail_mutation,tag=match_mutation9,tag=!match_vote_mutation1,tag=!match_vote_mutation2,tag=!match_vote_mutation3] add match_vote_mutation4
#
tellraw @a[gamemode=adventure] ["\n⭐  ",{"text": "可选择突变：\n","color": "aqua"},"[",{"selector":"@e[tag=match_vote_mutation1]","clickEvent": {"action":"run_command","value": "/trigger vote_match set 1"}},"]  [",{"selector":"@e[tag=match_vote_mutation2]","clickEvent": {"action":"run_command","value": "/trigger vote_match set 2"}},"]  [",{"selector":"@e[tag=match_vote_mutation3]","clickEvent": {"action":"run_command","value": "/trigger vote_match set 3"}},"]  [",{"selector":"@e[tag=match_vote_mutation4]","clickEvent": {"action":"run_command","value": "/trigger vote_match set 4"}},"]"]
tellraw @a ["\n⭐  请",{"text":"当前参赛玩家","color": "red"},"在",{"text": " 15 秒","color": "gold"},"内进行",{"text":"突变","color": "aqua","bold": true},"投票！\n"]
scoreboard players enable @a[scores={state=0},gamemode=adventure] vote_match