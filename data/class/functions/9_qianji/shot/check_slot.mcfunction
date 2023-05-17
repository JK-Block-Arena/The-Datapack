execute store result score @s 9_temp run data get entity @s SelectedItemSlot
execute unless score @s 9_temp = @s 9_slot run tag @s add refresh_inventory
execute unless score @s 9_temp = @s 9_slot store result score @s 9_slot run data get entity @s SelectedItemSlot