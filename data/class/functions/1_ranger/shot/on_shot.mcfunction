scoreboard players reset @s 1_shot

# 减少仓储
function class:1_ranger/shot/get_arrow_type
scoreboard players remove @s[scores={temp=1}] 1_st11 1
scoreboard players remove @s[scores={temp=2}] 1_st21 1
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={1_st21=1}] 1_cd31 15000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={1_st21=1}] 1_cd31 25000
scoreboard players remove @s[scores={temp=3}] 1_st31 1
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={1_st31=1}] 1_cd31 25000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={1_st31=1}] 1_cd31 15000
execute at @s[scores={temp=3}] run playsound minecraft:entity.zombie_villager.cure player @a[distance=..10] ~ ~ ~ 0.5 2
scoreboard players remove @s[scores={temp=4}] 1_st41 1
tag @s add refresh_inventory

# 打断静息治疗
tag @s add brRegenBreak
