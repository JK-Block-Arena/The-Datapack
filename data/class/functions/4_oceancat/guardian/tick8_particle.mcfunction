# 粒子
execute store result score #random mem run random value 1..20
execute as @a[scores={statPlayerLevel=1}] if score #random mem <= #7 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s
execute as @a[scores={statPlayerLevel=2}] if score #random mem <= #5 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s
execute as @a[scores={statPlayerLevel=3}] if score #random mem <= #4 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s
execute as @a[scores={statPlayerLevel=4}] if score #random mem <= #3 mem at @e[type=guardian] run particle electric_spark ~ ~0.4 ~ 0.2 0.2 0.2 0 1 force @s