advancement revoke @s only modules:mino1/10_3_creeper

scoreboard players set @s mino_type_now 10030
execute if entity @e[type=creeper,nbt={powered:true}] run scoreboard players set @s mino_type_now 10031
# 指定攻击者
tag @s add mino_victim
execute as @s[team=red] as @e[type=creeper,team=!red,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue] as @e[type=creeper,team=!blue,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=green] as @e[type=creeper,team=!green,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=yellow] as @e[type=creeper,team=!yellow,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=red_v1] as @e[type=creeper,team=!red_v1,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue_v1] as @e[type=creeper,team=!blue_v1,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder