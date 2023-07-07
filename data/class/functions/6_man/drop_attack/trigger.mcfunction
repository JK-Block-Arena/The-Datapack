# 剑气触发
scoreboard players add @s 6_drop_pos 1
scoreboard players set @s[scores={6_drop_pos=8..}] 6_drop_pos 0
execute as @s[scores={6_drop_pos=0}] anchored eyes positioned ^ ^ ^1 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_pos=1}] anchored eyes positioned ^ ^ ^2 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_pos=2}] anchored eyes positioned ^ ^ ^3 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_pos=3}] anchored eyes positioned ^ ^ ^4 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_pos=4}] anchored eyes positioned ^ ^ ^5 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_pos=5}] anchored eyes positioned ^ ^ ^4 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_pos=6}] anchored eyes positioned ^ ^ ^3 run function class:6_man/drop_attack/pos
execute as @s[scores={6_drop_pos=7}] anchored eyes positioned ^ ^ ^2 run function class:6_man/drop_attack/pos
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute if score $mutation mem matches 8 run effect give @s[scores={state=2,team=1..4}] glowing 3
# 夜晚冷却
execute if score $is_day mem matches 0 run scoreboard players set @s 6_drop_cd 500