effect clear @s unluck
effect give @s[type=#modules:undead] instant_health 1 1 true
effect give @s instant_damage 1 0 true
scoreboard players set @s mino_type_effect_instant 00050
scoreboard players set @s mino_source_effect_instant 0

playsound block.fire.extinguish player @a ~ ~ ~ 0.3
particle cloud ~ ~0.6 ~ 0.4 0.3 0.4 0 10
tag @s[scores={tip_1_waterkill=..1,hp=..6}] add tip_1_waterkill