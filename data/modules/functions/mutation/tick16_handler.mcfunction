execute if score $mutation mem matches 1.. if score $mutation_anim mem matches 0 run function modules:mutation/tick16_real
execute if score $mutation mem matches 3 run function modules:mutation/special/3_tick16
execute if score $mutation mem matches 6 run function modules:mutation/special/6_tick16
execute if score $mutation mem matches 11 run function modules:mutation/special/10_tick16
# 心跳特效
scoreboard players add @a heartbeat 1
scoreboard players set @a[scores={heartbeat=3}] heartbeat 0
scoreboard players set @a[scores={hp=5..}] heartbeat 0
execute as @a[scores={heartbeat=2,state=2,team=1..4,hp=1..4}] run playsound minecraft:block.conduit.ambient player @s 0 1000000 0 1000000 1.67

# 换位仇恨倒计时
scoreboard players remove @a[scores={mino_time_00080=1..}] mino_time_00080 1