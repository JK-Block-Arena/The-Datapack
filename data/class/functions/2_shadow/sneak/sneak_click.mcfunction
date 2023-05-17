# 切换状态
scoreboard players add @s 2_sneak_state 1
scoreboard players set @s[scores={2_sneak_state=2..4}] 2_sneak_state 0

# 触发开关
execute if score @s 2_sneak_state matches 0 run function class:2_shadow/sneak/off
execute if score @s 2_sneak_state matches 1 run function class:2_shadow/sneak/on