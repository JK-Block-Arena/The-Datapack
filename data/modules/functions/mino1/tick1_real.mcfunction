# 判断是否触发换位优先判定
execute unless score @s mino_type_now matches 00000 unless score @s mino_type_now matches 00010 unless score @s mino_type_now matches 00030 unless score @s mino_type_now matches 00050 unless score @s mino_type_now matches 00060 unless score @s mino_type_now matches 04060 run tag @s add mino_not_00080
execute if score @s[tag=!mino_not_00080] mino_time_00080 matches 1.. run function modules:mino1/trigger_00080
tag @s remove mino_not_00080

# 记录伤害
function modules:mino1/record