effect give @s resistance 2 1
effect give @a[tag=!7_healer,distance=.1..10] resistance 7 1
effect give @a[tag=!7_healer,distance=.1..10] slowness 7 2

# 特效
playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 0.6

# 减少存储
scoreboard players remove @s 7_turtle_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory