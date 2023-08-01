scoreboard players remove #1v1_red mem 1
scoreboard players remove #1v1_blue mem 1
tellraw @a [{"text": "\n※  ","color": "gold"},{"selector":"@p[team=red_v1]"}," 和 ",{"selector":"@p[team=blue_v1]"}," 怎么平局了，加赛！\n"]
function debug:jkuse/match/v1/back