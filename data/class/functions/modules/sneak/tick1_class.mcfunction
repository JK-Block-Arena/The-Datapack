# 检测潜行结束
execute if score @s[scores={sneak_time=1..}] sneak_time = @s sneak_last run function class:modules/sneak/sneak_done
scoreboard players operation @s sneak_last = @s sneak_time