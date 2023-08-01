gamemode adventure @s
tp @s 8 248 8
tag @s remove m
execute if score #match_type mem matches 2..3 run tellraw @s {"text": "\n♦  你是本轮比赛的玩家之一，与你的队友组队吧，别走错了。\n","color": "light_purple","bold": true}