# 特效
playsound minecraft:entity.firework_rocket.launch player @a
particle firework ~ ~1.2 ~ 0.1 0 0.1 0.03 8 normal @a
title @s actionbar [{"color":"aqua","text":"成功起飞，请注意展开翅膀！","bold":true}]

# 效果
effect give @s levitation 1 30
scoreboard players set @s 9_elytra_last 160

# 减少存储
scoreboard players remove @s 9_elytra_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory