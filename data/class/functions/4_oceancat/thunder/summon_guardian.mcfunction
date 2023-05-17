summon marker ~ ~ ~ {Tags:["lightning_marker","mino_guardian"]}
summon lightning_bolt ~ ~ ~

# 设置玩家信息
scoreboard players operation @e[tag=lightning_marker] player_id = @s player_id
scoreboard players operation @e[tag=lightning_marker] team = @s team
scoreboard players operation @e[tag=lightning_marker] player_id_sub = @s player_id_sub

# 设置生存时间
execute if score @s statPlayerLevel matches 1 run scoreboard players set @e[tag=lightning_marker] 4_thunder_life 9
execute if score @s statPlayerLevel matches 2 run scoreboard players set @e[tag=lightning_marker] 4_thunder_life 8
execute if score @s statPlayerLevel matches 3 run scoreboard players set @e[tag=lightning_marker] 4_thunder_life 7
execute if score @s statPlayerLevel matches 4 run scoreboard players set @e[tag=lightning_marker] 4_thunder_life 6

# 音效
playsound entity.lightning_bolt.thunder ambient @a[distance=..100] ~ ~ ~ 1.4 1.1 0.15
playsound entity.lightning_bolt.impact ambient @a ~ ~ ~ 0.8