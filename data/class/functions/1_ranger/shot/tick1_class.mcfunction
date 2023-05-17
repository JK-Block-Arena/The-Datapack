# 检查选择的格子改变
execute store result score @s temp run data get entity @s SelectedItemSlot
execute unless score @s temp = @s 1_slot run tag @s add refresh_inventory
execute unless score @s temp = @s 1_slot store result score @s 1_slot run data get entity @s SelectedItemSlot
# 检查射箭
execute as @s[scores={1_shot=1..}] run function class:1_ranger/shot/on_shot
