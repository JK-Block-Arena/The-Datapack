summon marker ~ ~2 ~ {Tags:["8_fangs_center"]}
effect give @s slow_falling 1 0

# 特效
playsound minecraft:entity.evoker.prepare_summon player @a[distance=..8] ~ ~ ~ 0.5 1 0.8
particle witch ~ ~1 ~ 0.1 0.3 0.1 0.01 10 normal @a[distance=.1..]

# 计时
scoreboard players set @s[scores={8_fangs_last=..60}] 8_fangs_last 60

tag @s add brRegenBreak
tag @s add refresh_inventory

# 移除储存
scoreboard players remove @s 8_wave_st 1
