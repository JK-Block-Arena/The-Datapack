
# 粒子
scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 20
function modules:random
execute as @a[scores={statPlayerLevel=1}] if score #random mem <= #7 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s
execute as @a[scores={statPlayerLevel=2}] if score #random mem <= #5 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s
execute as @a[scores={statPlayerLevel=3}] if score #random mem <= #4 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s
execute as @a[scores={statPlayerLevel=4}] if score #random mem <= #3 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s
