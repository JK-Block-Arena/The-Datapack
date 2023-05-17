# 停止追踪
execute if score $track_damage debug matches 1 if score @s mino_source_real matches 1.. run tellraw @a ["<伤害来源> ",{"selector":"@s"}," 仇恨已消除"]
scoreboard players set @s mino_type_real 0
scoreboard players set @s mino_source_real 0
scoreboard players set @s mino_type_last 0
scoreboard players set @s mino_source_last 0

scoreboard players set @s mino_time_00080 0

scoreboard players set @s mino_forgive_timer 0