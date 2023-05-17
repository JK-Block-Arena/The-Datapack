effect give @s instant_damage 1 0 true
effect give @s[type=#modules:undead] instant_health 1 1 true
scoreboard players set @s mino_type_effect_instant 10000
scoreboard players operation @s mino_source_effect_instant = @e[tag=10_flag,limit=1,sort=nearest] player_id