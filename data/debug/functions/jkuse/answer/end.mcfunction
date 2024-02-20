fill 9 236 21 7 238 21 air
fill 7 236 -5 9 238 -5 air
fill -2 235 9 -2 237 7 air
fill 15 235 1 17 236 -1 air replace white_stained_glass
function debug:trigger/mutation_0
execute as @a run tellraw @s [{"text": " ❇  答题结束力，看看成果吧！\n","color": "aqua"},{"text": "你的答对数： ","color": "green"},{"score":{"name": "@s","objective": "answer_right"},"color": "gold"}]
gamerule sendCommandFeedback true
scoreboard players reset #answer mem