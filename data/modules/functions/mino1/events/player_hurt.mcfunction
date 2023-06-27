# 当玩家受伤时触发
# 执行者为受伤的玩家，攻击者有标签 mino_murder，通过 mino_type_now 获取伤害种类

execute if score @s mino_type_now matches 01010 run function class:1_ranger/hurt/basic_arrow_hurt
execute if score @s mino_type_now matches 01020 run function class:1_ranger/hurt/wither_arrow_hurt
execute if score @s mino_type_now matches 02011 run function class:2_shadow/attack/victim
execute if score @s mino_type_now matches 05020 run function class:5_knight/star/victim_hurt

function modules:mutation/player_hurt