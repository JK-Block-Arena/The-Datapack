# 静息治疗
tellraw @s ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 静息治疗","color":"light_purple"},"\n     长按 [",{"keybind":"key.sneak"},"] 不放，不要移动、攻击、释放技能，即可缓慢恢复生命值。\n     静息治疗开始时也会清除所有负面效果。\n"]
scoreboard players set @s tip_cd 0
# 由其他系统添加次数
tag @s remove tip_1_regen