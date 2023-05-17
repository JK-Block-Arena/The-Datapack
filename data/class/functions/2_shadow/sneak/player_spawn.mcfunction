# 自动进入暗影形态
scoreboard players set @s 2_sneak_cd 0
scoreboard players set @s 2_sneak_storage 0
scoreboard players set @s[scores={tip_0_tutorial=..6}] 2_sneak_state 0
scoreboard players set @s[scores={tip_0_tutorial=7..}] 2_sneak_state 1
execute as @s[scores={tip_0_tutorial=7..}] run function class:2_shadow/sneak/buff_give