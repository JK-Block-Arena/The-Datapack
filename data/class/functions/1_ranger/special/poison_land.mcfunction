# 召唤效果云
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=1}] run summon area_effect_cloud ~ ~0.3 ~ {Tags:["owner_marked","new_aec","level1"],Duration:81,DurationOnUse:0,RadiusOnUse:0f,Radius:4.6f,RadiusPerTick:0.0f,WaitTime:1,ReapplicationDelay:5,Color:5739047}
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=2}] run summon area_effect_cloud ~ ~0.3 ~ {Tags:["owner_marked","new_aec","level2"],Duration:73,DurationOnUse:0,RadiusOnUse:0f,Radius:4.3f,RadiusPerTick:0.0f,WaitTime:1,ReapplicationDelay:5,Color:5739047}
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=3}] run summon area_effect_cloud ~ ~0.3 ~ {Tags:["owner_marked","new_aec","level3"],Duration:67,DurationOnUse:0,RadiusOnUse:0f,Radius:4.0f,RadiusPerTick:0.0f,WaitTime:1,ReapplicationDelay:5,Color:5739047}
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=4}] run summon area_effect_cloud ~ ~0.3 ~ {Tags:["owner_marked","new_aec","level4"],Duration:59,DurationOnUse:0,RadiusOnUse:0f,Radius:3.6f,RadiusPerTick:0.0f,WaitTime:1,ReapplicationDelay:5,Color:5739047}
playsound minecraft:entity.zombie_villager.cure player @a[distance=..10] ~ ~0.2 ~ 0.15 0.6
playsound minecraft:block.lava.ambient player @a ~ ~0.2 ~ 1.5 1.7 0.001
# 标记玩家数据
execute as @e[tag=new_aec] store result score @s aecUUID run data get entity @s UUID[0]
scoreboard players operation @e[tag=new_aec] player_id = @p[tag=projectile_owner] player_id
scoreboard players operation @e[tag=new_aec] team = @p[tag=projectile_owner] team
# 清理tag
tag @e[tag=new_aec] remove new_aec