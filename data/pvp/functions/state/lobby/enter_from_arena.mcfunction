effect give @s blindness 30 0 true
effect give @s jump_boost 30 200 true
effect give @s slowness 30 200 true
effect give @s levitation 30 200 true
tellraw @s {"text": "\n ❇  检测到你从战场就退出服务器，惩罚你 30 秒禁赛。\n","color": "yellow"}
tellraw @a ["<",{"selector": "@s"},"> 我是大坏蛋~"]
tp @s 13 235 8 90 0