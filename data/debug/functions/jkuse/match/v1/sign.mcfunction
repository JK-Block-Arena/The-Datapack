setblock 0 12 -23 birch_wall_sign[facing=south]{front_text:{messages:['{"text":""}','{"text":"我准备好了","color":"aqua","bold":true,"clickEvent": {"action":"run_command","value": "/function debug:jkuse/match/v1/ready"}}','{"text":""}','{"text":""}']}} destroy
setblock 4 12 -23 birch_wall_sign[facing=south]{front_text:{messages:['{"text":""}','{"text":"我准备好了","color":"aqua","bold":true,"clickEvent": {"action":"run_command","value": "/function debug:jkuse/match/v1/ready"}}','{"text":""}','{"text":""}']}} destroy
tellraw @a {"text": "\n※  选好职业后右键告示牌准备新一轮！\n","color": "aqua","bold": true}
scoreboard players reset #match_time_can mem
# 时间确认
execute store result score #match_day1 mem if entity @a[gamemode=spectator,scores={vote_match=1}]
execute store result score #match_day2 mem if entity @a[gamemode=spectator,scores={vote_match=2}]
execute store result score #match_day3 mem if entity @a[gamemode=spectator,scores={vote_match=3}]
execute store result score #match_day4 mem if entity @a[gamemode=spectator,scores={vote_match=4}]
scoreboard players reset @a[gamemode=spectator] vote_match
tellraw @a ["",{"text":"\n☀  时间投票结果：","color": "aqua"},"\n[",{"text":"早晨","color": "green"},{"score":{"name": "#match_day1","objective": "mem"},"color": "yellow"},"]  [",{"text":"中午","color": "green"},{"score":{"name": "#match_day2","objective": "mem"},"color": "yellow"},"]  [",{"text":"傍晚","color": "green"},{"score":{"name": "#match_day3","objective": "mem"},"color": "yellow"},"]  [",{"text":"半夜","color": "green"},{"score":{"name": "#match_day4","objective": "mem"},"color": "yellow"},"]"]

scoreboard players set #match_day mem -1
execute if score #match_day mem < #match_day1 mem run scoreboard players operation #match_day mem = #match_day1 mem
execute if score #match_day mem < #match_day2 mem run scoreboard players operation #match_day mem = #match_day2 mem
execute if score #match_day mem < #match_day3 mem run scoreboard players operation #match_day mem = #match_day3 mem
execute if score #match_day mem < #match_day4 mem run scoreboard players operation #match_day mem = #match_day4 mem

execute if score #match_day mem = #match_day4 mem run time set midnight
execute if score #match_day mem = #match_day3 mem run time set night
execute if score #match_day mem = #match_day2 mem run time set noon
execute if score #match_day mem = #match_day1 mem run time set day