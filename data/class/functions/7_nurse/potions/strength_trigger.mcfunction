execute as @s[team=blue] run effect give @a[tag=!7_healer,distance=..8,team=blue] strength 6 0
execute as @s[team=blue] run effect give @a[tag=!7_healer,distance=..8,team=blue] speed 6 1
execute as @s[team=red] run effect give @a[tag=!7_healer,distance=..8,team=red] strength 6 0
execute as @s[team=red] run effect give @a[tag=!7_healer,distance=..8,team=red] speed 6 1
execute as @s[team=yellow] run effect give @a[tag=!7_healer,distance=..8,team=yellow] strength 6 0
execute as @s[team=yellow] run effect give @a[tag=!7_healer,distance=..8,team=yellow] speed 6 1
execute as @s[team=green] run effect give @a[tag=!7_healer,distance=..8,team=green] strength 6 0
execute as @s[team=green] run effect give @a[tag=!7_healer,distance=..8,team=green] speed 6 1
execute as @s[team=lobby] run effect give @a[tag=!7_healer,distance=..8,team=lobby] strength 6 0
execute as @s[team=lobby] run effect give @a[tag=!7_healer,distance=..8,team=lobby] speed 6 1
effect give @s strength 6 0
effect give @s speed 6 1
# 特效
playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 0.6

# 减少存储
scoreboard players remove @s 7_strength_storage 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory