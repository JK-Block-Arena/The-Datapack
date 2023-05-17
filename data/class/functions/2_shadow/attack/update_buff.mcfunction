execute store result score @s temp run data get entity @s SelectedItemSlot
attribute @s[scores={temp=..0}] minecraft:generic.attack_damage base set 1
attribute @s[scores={temp=1}] minecraft:generic.attack_damage base set 6
attribute @s[scores={temp=2..}] minecraft:generic.attack_damage base set 1

function class:2_shadow/attack/update_xp