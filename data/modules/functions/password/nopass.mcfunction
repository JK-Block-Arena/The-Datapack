tellraw @s ["\n\n\n\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 需要测试密码","color":"light_purple"},"\n     服务器正在测试中，尚未对所有玩家开放。\n     请输入测试密码以进入游戏。如果不知道密码，请退出本服务器……\n\n\n\n"]
clear @s
effect give @s blindness 2 5 true
effect give @s weakness 1 5 true
effect give @s resistance 1 5 true
effect give @s instant_health 1 5 true
effect give @s jump_boost 1 240 true
effect give @s slowness 1 200 true
execute as @s[scores={state=1..2}] at @s run function pvp:state/lobby/enter