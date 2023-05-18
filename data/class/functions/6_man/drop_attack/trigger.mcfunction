# 剑气触发
scoreboard players add @s 6_drop_attack 1
scoreboard players set @s[scores={6_drop_attack=8..}] 6_drop_attack 0
execute as @s[scores={6_drop_attack=0}] anchored eyes positioned ^ ^ ^1 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_attack=1}] anchored eyes positioned ^ ^ ^2 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_attack=2}] anchored eyes positioned ^ ^ ^3 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_attack=3}] anchored eyes positioned ^ ^ ^4 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_attack=4}] anchored eyes positioned ^ ^ ^5 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_attack=5}] anchored eyes positioned ^ ^ ^4 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_attack=6}] anchored eyes positioned ^ ^ ^3 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_attack=7}] anchored eyes positioned ^ ^ ^2 run function class:6_man/drop_attack/pos
item replace entity @s weapon.offhand with air