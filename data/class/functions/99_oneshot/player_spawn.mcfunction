scoreboard players set @s 99_arrow 0
scoreboard players reset @s 99_shot

scoreboard players set @s 99_trident_st 1
scoreboard players reset @s 99_trident_use

effect give @s jump_boost infinite 5
effect give @s speed infinite 4

attribute @s generic.max_health modifier add 123-0-0-99-1 "" -19 add
effect give @s instant_health