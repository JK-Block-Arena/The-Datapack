advancement revoke @s only modules:mino1/3_2_ravager

scoreboard players set @s mino_type_now 03020

# 指定攻击者
tag @s add mino_victim
execute as @s[team=red] as @e[type=ravager,team=!red,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue] as @e[type=ravager,team=!blue,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=green] as @e[type=ravager,team=!green,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=yellow] as @e[type=ravager,team=!yellow,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder