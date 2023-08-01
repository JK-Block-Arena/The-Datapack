tellraw @a [{"text": "※  本轮1v1结束，比分为\n  ","color": "gold"},{"selector":"@p[team=red_v1]"}," ",{"score":{"name": "#1v1_red","objective": "mem"},"color": "red"}," : ",{"score":{"name": "#1v1_blue","objective": "mem"},"color": "blue"}," ",{"selector":"@p[team=blue_v1]"}]
execute if score #1v1_red mem > #1v1_blue mem run tellraw @a [{"text": "※  恭喜 ","color": "gold"},{"selector":"@p[team=red_v1]"}," 获胜！\n"]
execute if score #1v1_red mem < #1v1_blue mem run tellraw @a [{"text": "※  恭喜 ","color": "gold"},{"selector":"@p[team=blue_v1]"}," 获胜！\n"]
scoreboard players reset #match_time mem
scoreboard players reset #match_type mem
execute as @a run function debug:jkuse/1_back_spawn