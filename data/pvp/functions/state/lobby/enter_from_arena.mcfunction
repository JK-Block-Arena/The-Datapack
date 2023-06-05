effect give @s slow_falling 10 0 true
effect give @s jump_boost 10 200 true
effect give @s slowness 10 200 true
tellraw @s {"text": "\n ❇  检测到你从战场就退出服务器，惩罚你 10 秒禁赛。\n","color": "yellow"}
tellraw @a ["<",{"selector": "@s"},"> 我是大坏蛋~"]
tp @s 8 290 8 -90 0
tag @s add bad_guy