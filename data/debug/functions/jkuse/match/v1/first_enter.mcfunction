scoreboard players set #match_time_can mem 1
setblock 0 12 -23 air
setblock 4 12 -23 air
execute as @a[gamemode=spectator] run tp @s @r[gamemode=adventure]
# 时间选择
scoreboard players enable @a[gamemode=spectator] vote_match
tellraw @a[gamemode=spectator] ["",{"text":"\n☀  旁观者选择一个时间：","color": "aqua"},"\n[",{"text":"早晨","color": "green","clickEvent": {"action": "run_command","value": "/trigger vote_match set 1"}},"]  [",{"text":"中午","color": "green","clickEvent": {"action": "run_command","value": "/trigger vote_match set 2"}},"]  [",{"text":"傍晚","color": "green","clickEvent": {"action": "run_command","value": "/trigger vote_match set 3"}},"]  [",{"text":"半夜","color": "green","clickEvent": {"action": "run_command","value": "/trigger vote_match set 4"}},"]"]
# 随机地图
tag @r[gamemode=adventure] add match_v1_map
execute if entity @p[team=red_v1,tag=match_v1_map] run function debug:jkuse/match/v1/map
tag @a remove match_v1_map