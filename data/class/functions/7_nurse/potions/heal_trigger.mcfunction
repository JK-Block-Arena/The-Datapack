execute as @s[team=blue] run effect give @a[tag=!7_healer,distance=..8,team=blue] regeneration 3 2
execute as @s[team=blue] run effect give @a[tag=!7_healer,distance=..8,team=blue] absorption 5 0 
execute as @s[team=red] run effect give @a[tag=!7_healer,distance=..8,team=red] regeneration 3 2
execute as @s[team=red] run effect give @a[tag=!7_healer,distance=..8,team=red] absorption 5 0 
execute as @s[team=yellow] run effect give @a[tag=!7_healer,distance=..8,team=yellow] regeneration 3 2
execute as @s[team=yellow] run effect give @a[tag=!7_healer,distance=..8,team=yellow] absorption 5 0 
execute as @s[team=green] run effect give @a[tag=!7_healer,distance=..8,team=green] regeneration 3 2
execute as @s[team=green] run effect give @a[tag=!7_healer,distance=..8,team=green] absorption 5 0 
execute as @s[team=lobby] run effect give @a[tag=!7_healer,distance=..8,team=lobby] regeneration 3 2
execute as @s[team=lobby] run effect give @a[tag=!7_healer,distance=..8,team=lobby] absorption 5 0 
effect give @s regeneration 3 2
effect clear @s[scores={hp=..24}] absorption
effect give @s[scores={hp=..24}] absorption 5 0
# 特效
playsound entity.splash_potion.break player @a ~ ~ ~ 1 0.6

# 减少存储
scoreboard players remove @s 7_heal_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory