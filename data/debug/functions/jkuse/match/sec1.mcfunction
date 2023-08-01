# 每 20 Tick / 1 s 执行一次
# 对所有玩家
scoreboard players set @a[scores={tip_0_tutorial=..8}] tip_0_tutorial 9
# 参赛玩家
execute as @a[tag=m] run function debug:jkuse/match/player
# 倒计时
execute if score #match_type mem matches 1 run function debug:jkuse/match/v1/sec1
execute if score #match_type mem matches 1 if score #match_time mem matches 1.. if score #match_time_can mem matches 1 run scoreboard players remove #match_time mem 1

execute if score #match_type mem matches 2..3 run function debug:jkuse/match/team/sec1
execute if score #match_type mem matches 2..3 if score #match_time mem matches 1.. run scoreboard players remove #match_time mem 1

execute if score #match_time mem matches 2.. run title @a times 0s 1.1s 0s
execute if score #match_time mem matches 2.. unless score #match_type mem matches 1 run playsound block.note_block.hat block @a 8 235 8 100000