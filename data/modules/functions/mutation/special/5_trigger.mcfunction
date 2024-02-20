scoreboard players add @s dive_5 1
execute if score @s dive_5 matches 6 run scoreboard players set @s hidden_diver 1
# 起点特效
particle bubble_pop ~5 ~0.8 ~ 0.2 0.6 0.2 0.1 50 normal @a
playsound entity.player.splash.high_speed player @a[distance=0.01..]

# 传送
effect clear @s[scores={hp=..28}] absorption
effect give @s absorption infinite 1 true
effect give @s blindness 1 0 true
function modules:map/sub/enter_near_enemy
function modules:anti_stuck/sub/reset_fall

# 终点特效
execute at @s run playsound block.conduit.activate player @a
execute at @s run playsound block.conduit.activate player @s 0 1000000 0 1000000
execute at @s run particle dolphin ~ ~0.8 ~ 0.2 0.6 0.2 0 500 normal @a