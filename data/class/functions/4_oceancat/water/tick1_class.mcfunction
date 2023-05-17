# 检查入水
tag @s[tag=4_in_water] remove 4_in_water
execute if block ~ ~.13 ~ #modules:harmful run tag @s add 4_in_water

# 技能触发
execute as @s[tag=4_in_water,scores={4_water_last=..0,4_water_storage=1..}] at @s run function class:4_oceancat/water/skill_trigger
# 技能持续
execute as @s[scores={4_water_last=1..}] at @s run function class:4_oceancat/water/skill_continue

# 三叉戟刷新
tag @s[tag=4_in_water,tag=!4_in_water_last] add refresh_inventory
tag @s[tag=4_in_water,tag=!4_in_water_last] add 4_in_water_last
tag @s[tag=!4_in_water,tag=4_in_water_last] add refresh_inventory
tag @s[tag=!4_in_water,tag=4_in_water_last] remove 4_in_water_last