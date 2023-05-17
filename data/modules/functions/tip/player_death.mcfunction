# 在玩家死亡时提前触发提示
execute if score $info_tip_hide debug matches 0 as @s[tag=pass] unless score @s afkTime matches 40.. run tag @s add tip_ok
execute as @s[tag=tip_ok,scores={tip_cd=20..}] unless entity @s[tag=!tip_2_killregen,tag=!tip_2_reset,tag=!tip_2_run] run scoreboard players set @s tip_cd 58
execute as @s[tag=tip_ok,scores={tip_cd=100..,tip_cycle_times=0}] run scoreboard players set @s tip_cd 148
execute as @s[tag=tip_ok,scores={tip_cd=150..,tip_cycle_times=1}] run scoreboard players set @s tip_cd 248
execute as @s[tag=tip_ok,scores={tip_cd=200..,tip_cycle_times=2}] run scoreboard players set @s tip_cd 348
execute as @s[tag=tip_ok,scores={tip_cd=300..}] run scoreboard players set @s tip_cd 448
tag @s remove tip_ok

# 触发在复活时切换职业提示
tag @s[scores={tip_1_respawn_class=0}] add tip_1_respawn_class