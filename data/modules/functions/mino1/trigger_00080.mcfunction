# 缓存实际的伤害信息
scoreboard players operation #mino_type_now mem = @s mino_type_now
scoreboard players operation #mino_source_now mem = @s mino_source_now

# 触发换位伤害
scoreboard players set @s mino_type_now 00080
scoreboard players operation @s mino_source_now = @s mino_source_00080
function modules:mino1/record

# 还原实际的伤害信息
scoreboard players operation @s mino_type_now = #mino_type_now mem
scoreboard players operation @s mino_source_now = #mino_source_now mem