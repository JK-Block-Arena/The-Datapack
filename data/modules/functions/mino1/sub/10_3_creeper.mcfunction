advancement revoke @s only modules:mino1/10_3_creeper

scoreboard players set @s mino_type_now 10030
execute if entity @e[type=creeper,nbt={powered:true}] run scoreboard players set @s mino_type_now 10031
# 指定攻击者
tag @s add mino_victim
execute as @e[type=creeper,limit=1] at @s run function modules:mino1/sub/murder