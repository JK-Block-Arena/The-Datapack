effect give @s blindness 20 0 true
effect give @s jump_boost 20 200 true
effect give @s slowness 20 200 true
tellraw @s {"text": "\n ❇  检测到你从战场就退出服务器，惩罚你 20 秒禁赛。\n","color": "yellow"}
tellraw @a ["<",{"selector": "@s"},"> 我是大坏蛋~"]
tp @s 13 230 8 90 0
tag @s add bad_guy