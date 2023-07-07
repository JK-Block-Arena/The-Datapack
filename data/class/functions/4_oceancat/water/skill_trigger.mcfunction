# 效果
scoreboard players set @s 4_water_last 3000
function class:4_oceancat/water/update_xpbar
playsound minecraft:entity.player.swim player @s 0 1000000 0 100000 0.5
playsound minecraft:block.brewing_stand.brew player @s 0 1000000 0 150000 0.5
particle minecraft:dolphin ~ ~0.8 ~ 0.3 0.7 0.3 0 200 normal @a

# 减少次数
scoreboard players remove @s 4_water_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
