fill 9 236 21 7 238 21 black_wool
fill 7 236 -5 9 238 -5 black_wool
fill -2 235 9 -2 237 7 black_wool
fill 15 235 1 17 236 -1 white_stained_glass replace air
function debug:trigger/mutation_s {num: 2}
execute as @a run function pvp:state/lobby/enter
tp @a 3 235 8 -90 2
tellraw @a ["",{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ❇  突变是排除干扰用的...","color": "gold"},"\n接下来，各位将在JK服里遇到共 30 道题。\n以下是注意事项：\n1.每题限时 15 秒，中途加入/退出不负责。\n2.题目全为选择题，点击",{"text": "黄色下划线","color": "yellow","underlined": true},"就行。\n3.禁止将答案打在公屏或刷屏，违者ban 1d。\n4.答对 28 题及以上的可私聊JK领取小红包。\n5.推荐屏蔽小知识（详见trigger!）。\n6.未声明版本时，默认为Java版1.20.4（服务器当前版本）。\n"]
scoreboard objectives add answer_right dummy "玩家答对次数"
scoreboard players set #answer mem 40
scoreboard players reset #question mem
#scoreboard players reset * answer
#scoreboard players reset * answer_right
gamerule sendCommandFeedback false