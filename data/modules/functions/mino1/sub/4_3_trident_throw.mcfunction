advancement revoke @s only modules:mino1/4_3_trident_throw

scoreboard players set @s mino_type_now 04030
execute if score $mutation mem matches 11 run scoreboard players set @s mino_type_now 99020
# 要求寻找攻击者
tag @s add mino_victim