scoreboard players set @s tip_cd 0

# 随机选取种类
scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 7
function modules:random
execute if score @s state matches 0 run scoreboard players set #random mem 2

execute if score #random mem matches 1 run function modules:tip/3_cycle/real
execute if score #random mem matches 2..3 run function modules:tip/4_minor/real
execute if score #random mem matches 4..7 run function class:modules/tip/trigger