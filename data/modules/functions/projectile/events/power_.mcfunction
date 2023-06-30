execute store result score @s mem run data get entity @s damage 10
scoreboard players remove @s mem 5
execute store result entity @s damage double 0.1 run scoreboard players get @s mem