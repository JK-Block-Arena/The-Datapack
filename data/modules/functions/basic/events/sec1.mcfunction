# 每 20 Tick / 1 s 执行一次
schedule function modules:basic/events/sec1 1s replace

execute as @a run function modules:basic/events/play_time
scoreboard players enable @a[scores={state=0}] play_time_show
scoreboard players reset @a[scores={state=1..}] play_time_show
scoreboard players reset @a[scores={state=1..}] rick_tp
execute if score #match_mode mem matches 1 run function debug:jkuse/match/sec1
execute if score #answer mem matches 1.. run function debug:jkuse/answer/sec1