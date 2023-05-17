execute as @e[tag=xmas_presents] at @s run particle happy_villager ~ ~2.2 ~ 0.1 0 0.1 0.5 1 normal @a
execute as @a[scores={xmas_presents=1..}] at @s run function debug:jkuse/xmas/get_presents
scoreboard players reset @a xmas_presents