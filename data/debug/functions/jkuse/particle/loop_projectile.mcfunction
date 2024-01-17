execute as @s[scores={particle=-1}] run particle heart ~ ~ ~ 0 0 0 0.001 1
execute as @s[scores={particle=1}] run particle falling_water ~ ~ ~ 0 0 0 0.001 3
execute as @s[scores={particle=2}] run particle small_flame ~ ~ ~ 0 0 0 0.001 2
execute as @s[scores={particle=3}] run particle dust 10 10 10 1.5 ~ ~ ~ 0 0 0 0.001 2
execute as @s[scores={particle=4}] run particle note ~ ~ ~ 0 0 0 0.8 1
execute as @s[scores={particle=5}] run particle cherry_leaves ~ ~ ~ 0 0 0 1 1
execute as @s[scores={particle=6}] run function debug:jkuse/particle/gold