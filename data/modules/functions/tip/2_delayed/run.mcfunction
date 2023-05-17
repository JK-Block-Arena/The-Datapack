# 疾跑
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 疾跑！","color":"light_purple"},"\n     双击 [",{"keybind":"key.forward"},"] 或在行走时按 [",{"keybind":"key.sprint"},"] 以开始疾跑。\n     疾跑的移动速度是行走的 1.5 倍，并且没有任何副作用！\n"]
scoreboard players set @s tip_cd 0
# 由其他系统添加次数
tag @s remove tip_2_run
