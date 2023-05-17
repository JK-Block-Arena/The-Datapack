# 触发疾跑提示
tag @a[scores={state=2..4,tip_run=..3000,tip_walk=10000..}] add tip_2_run

# 计算总延迟与间歇延迟
scoreboard players remove @a[scores={tip_battle_delay=1..}] tip_battle_delay 1
execute if score $info_tip_hide debug matches 0 as @a[tag=pass,scores={tip_battle_delay=0}] unless score @s afkTime matches 40.. run scoreboard players add @s tip_cd 1

# 尽快显示的提示
execute as @a[scores={tip_cd=14..}] unless entity @s[tag=!tip_1_respawn_class,tag=!tip_1_train,tag=!tip_1_afk,tag=!tip_1_regen,tag=!tip_1_waterkill,tag=!tip_1_regen_effect] run function modules:tip/1_instant
# 新手引导
execute as @a[scores={tip_0_tutorial=..8,tip_cd=11..}] as @s[tag=!tip_1_respawn_class,tag=!tip_1_train,tag=!tip_1_afk,tag=!tip_1_regen,tag=!tip_1_waterkill,tag=!tip_1_regen_effect] run function modules:tip/0_tutorial
# 延迟显示的提示
execute as @a[scores={tip_cd=60..}] unless entity @s[tag=!tip_2_killregen,tag=!tip_2_reset,tag=!tip_2_run,tag=!tip_2_mutation] run function modules:tip/2_delayed
# 循环显示的提示
execute as @a[scores={tip_cd=150..,tip_cycle_times=0}] run function modules:tip/3_cycle/trigger
execute as @a[scores={tip_cd=250..,tip_cycle_times=1}] run function modules:tip/3_cycle/trigger
# 次要提示
execute as @a[scores={tip_cd=350..,tip_cycle_times=2}] run function modules:tip/4_minor/trigger
execute as @a[scores={tip_cd=450..}] run function modules:tip/4_minor/trigger
