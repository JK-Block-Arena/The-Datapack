# 效果
effect give @s levitation 1 30 true
scoreboard players set @s 3_jump_last 8
# 重置向下的速度，避免跳不起来
function modules:anti_stuck/sub/reset_fall

# 特效
playsound entity.ender_dragon.shoot player @a ~ ~ ~ 2 1
playsound entity.ender_dragon.flap player @a ~ ~ ~ 2 0.7
particle large_smoke ~ ~0.2 ~ 0.2 0 0.2 0.05 30 normal @a

# 减少次数
scoreboard players remove @s 3_jump_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
