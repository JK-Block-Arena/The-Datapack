advancement revoke @s only modules:mino1/9_4_rocket

scoreboard players set @s mino_type_now 09040
execute if score $mutation mem matches 11 run scoreboard players set @s mino_type_now 99010
# 要求寻找攻击者
tag @s add mino_victim