scoreboard players set @s tip_cd 0

# 随机选取种类
execute store result score #random mem run random value 1..2
execute if score @s state matches 0 run scoreboard players set #random mem 1

execute if score #random mem matches 1 run function modules:tip/3_cycle/real
execute if score #random mem matches 2 run function class:modules/tip/trigger