execute as @s[tag=particle_water] run particle falling_water ~ ~ ~ 0 0 0 0.001 3
execute as @s[tag=particle_flame] run particle small_flame ~ ~ ~ 0 0 0 0.001 2
execute as @s[tag=particle_rainbow] run particle dust 10 10 10 1.5 ~ ~ ~ 0 0 0 0.001 2
execute as @s[tag=particle_heart] run particle heart ~ ~ ~ 0 0 0 0.001 1
execute as @s[tag=particle_music] run particle note ~ ~ ~ 0 0 0 0.8 1
execute as @s[tag=particle_cherry] run particle cherry_leaves ~ ~ ~ 0 0 0 1 1
execute as @s[tag=particle_gold] run function debug:jkuse/particle/gold