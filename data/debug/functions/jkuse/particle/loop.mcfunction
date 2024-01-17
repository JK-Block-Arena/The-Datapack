execute as @s[scores={particle=-1}] run particle heart ~ ~2.15 ~ 0.1 0 0.1 0.001 1
execute as @s[scores={particle=1}] run particle falling_water ~ ~0.1 ~ 0.15 0 0.15 0.001 3
execute as @s[scores={particle=2}] run particle small_flame ~ ~0.1 ~ 0.15 0 0.15 0.001 2
execute as @s[scores={particle=3}] run particle dust 10 10 10 1 ~ ~0.1 ~ 0.15 0 0.15 0.001 2
execute as @s[scores={particle=4}] run particle note ~ ~2.1 ~ 0.15 0 0.15 0.8 1
execute as @s[scores={particle=5}] run particle cherry_leaves ^ ^2.1 ^-1.6 0.2 0.15 0.2 1 1
execute as @s[scores={particle=6}] run function debug:jkuse/particle/gold